// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.mutable.MutableObject;

// Referenced classes of package org.apache.commons.lang3:
//            StringUtils, ArrayUtils, JavaVersion, SystemUtils

public class ClassUtils
{
    public static final class Interfaces extends Enum
    {

        private static final Interfaces $VALUES[];
        public static final Interfaces EXCLUDE;
        public static final Interfaces INCLUDE;

        public static Interfaces valueOf(String s)
        {
            return (Interfaces)Enum.valueOf(org/apache/commons/lang3/ClassUtils$Interfaces, s);
        }

        public static Interfaces[] values()
        {
            return (Interfaces[])$VALUES.clone();
        }

        static 
        {
            INCLUDE = new Interfaces("INCLUDE", 0);
            EXCLUDE = new Interfaces("EXCLUDE", 1);
            Interfaces ainterfaces[] = new Interfaces[2];
            ainterfaces[0] = INCLUDE;
            ainterfaces[1] = EXCLUDE;
            $VALUES = ainterfaces;
        }

        private Interfaces(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String INNER_CLASS_SEPARATOR = String.valueOf('$');
    public static final char INNER_CLASS_SEPARATOR_CHAR = 36;
    public static final String PACKAGE_SEPARATOR = String.valueOf('.');
    public static final char PACKAGE_SEPARATOR_CHAR = 46;
    private static final Map abbreviationMap;
    private static final Map primitiveWrapperMap;
    private static final Map reverseAbbreviationMap;
    private static final Map wrapperPrimitiveMap;

    public ClassUtils()
    {
    }

    public static List convertClassNamesToClasses(List list)
    {
        if (list == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList(list.size());
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            try
            {
                arraylist.add(Class.forName(s));
            }
            catch (Exception exception)
            {
                arraylist.add(null);
            }
        }

        return arraylist;
    }

    public static List convertClassesToClassNames(List list)
    {
        if (list == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList(list.size());
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Class class1 = (Class)iterator.next();
            if (class1 == null)
            {
                arraylist.add(null);
            } else
            {
                arraylist.add(class1.getName());
            }
        }

        return arraylist;
    }

    public static List getAllInterfaces(Class class1)
    {
        if (class1 == null)
        {
            return null;
        } else
        {
            LinkedHashSet linkedhashset = new LinkedHashSet();
            getAllInterfaces(class1, ((HashSet) (linkedhashset)));
            return new ArrayList(linkedhashset);
        }
    }

    private static void getAllInterfaces(Class class1, HashSet hashset)
    {
        for (; class1 != null; class1 = class1.getSuperclass())
        {
            Class aclass[] = class1.getInterfaces();
            int i = aclass.length;
            for (int j = 0; j < i; j++)
            {
                Class class2 = aclass[j];
                if (hashset.add(class2))
                {
                    getAllInterfaces(class2, hashset);
                }
            }

        }

    }

    public static List getAllSuperclasses(Class class1)
    {
        Object obj;
        if (class1 == null)
        {
            obj = null;
        } else
        {
            obj = new ArrayList();
            Class class2 = class1.getSuperclass();
            while (class2 != null) 
            {
                ((List) (obj)).add(class2);
                class2 = class2.getSuperclass();
            }
        }
        return ((List) (obj));
    }

    private static String getCanonicalName(String s)
    {
        int i = 0;
        String s1 = StringUtils.deleteWhitespace(s);
        String s2;
        if (s1 == null)
        {
            s2 = null;
        } else
        {
            int j = 0;
            for (s2 = s1; s2.startsWith("[");)
            {
                int l = j + 1;
                s2 = s2.substring(1);
                j = l;
            }

            if (j >= 1)
            {
                String s3;
                StringBuilder stringbuilder;
                if (s2.startsWith("L"))
                {
                    int k;
                    if (s2.endsWith(";"))
                    {
                        k = -1 + s2.length();
                    } else
                    {
                        k = s2.length();
                    }
                    s3 = s2.substring(1, k);
                } else
                if (s2.length() > 0)
                {
                    s3 = (String)reverseAbbreviationMap.get(s2.substring(0, 1));
                } else
                {
                    s3 = s2;
                }
                stringbuilder = new StringBuilder(s3);
                for (; i < j; i++)
                {
                    stringbuilder.append("[]");
                }

                return stringbuilder.toString();
            }
        }
        return s2;
    }

    public static Class getClass(ClassLoader classloader, String s)
    {
        return getClass(classloader, s, true);
    }

    public static Class getClass(ClassLoader classloader, String s, boolean flag)
    {
        Class class2;
        if (abbreviationMap.containsKey(s))
        {
            return Class.forName((new StringBuilder()).append("[").append((String)abbreviationMap.get(s)).toString(), flag, classloader).getComponentType();
        }
        class2 = Class.forName(toCanonicalName(s), flag, classloader);
        return class2;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        int i;
        i = s.lastIndexOf('.');
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        Class class1 = getClass(classloader, (new StringBuilder()).append(s.substring(0, i)).append('$').append(s.substring(i + 1)).toString(), flag);
        return class1;
        ClassNotFoundException classnotfoundexception1;
        classnotfoundexception1;
        throw classnotfoundexception;
    }

    public static Class getClass(String s)
    {
        return getClass(s, true);
    }

    public static Class getClass(String s, boolean flag)
    {
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        if (classloader == null)
        {
            classloader = org/apache/commons/lang3/ClassUtils.getClassLoader();
        }
        return getClass(classloader, s, flag);
    }

    public static String getPackageCanonicalName(Class class1)
    {
        if (class1 == null)
        {
            return "";
        } else
        {
            return getPackageCanonicalName(class1.getName());
        }
    }

    public static String getPackageCanonicalName(Object obj, String s)
    {
        if (obj == null)
        {
            return s;
        } else
        {
            return getPackageCanonicalName(obj.getClass().getName());
        }
    }

    public static String getPackageCanonicalName(String s)
    {
        return getPackageName(getCanonicalName(s));
    }

    public static String getPackageName(Class class1)
    {
        if (class1 == null)
        {
            return "";
        } else
        {
            return getPackageName(class1.getName());
        }
    }

    public static String getPackageName(Object obj, String s)
    {
        if (obj == null)
        {
            return s;
        } else
        {
            return getPackageName(obj.getClass());
        }
    }

    public static String getPackageName(String s)
    {
        if (StringUtils.isEmpty(s))
        {
            return "";
        }
        for (; s.charAt(0) == '['; s = s.substring(1)) { }
        if (s.charAt(0) == 'L' && s.charAt(-1 + s.length()) == ';')
        {
            s = s.substring(1);
        }
        int i = s.lastIndexOf('.');
        if (i == -1)
        {
            return "";
        } else
        {
            return s.substring(0, i);
        }
    }

    public static transient Method getPublicMethod(Class class1, String s, Class aclass[])
    {
        Iterator iterator;
        Method method = class1.getMethod(s, aclass);
        if (Modifier.isPublic(method.getDeclaringClass().getModifiers()))
        {
            return method;
        }
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(getAllInterfaces(class1));
        arraylist.addAll(getAllSuperclasses(class1));
        iterator = arraylist.iterator();
_L2:
        Class class2;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_123;
        }
        class2 = (Class)iterator.next();
        if (!Modifier.isPublic(class2.getModifiers()))
        {
            continue; /* Loop/switch isn't completed */
        }
        Method method1 = class2.getMethod(s, aclass);
        if (Modifier.isPublic(method1.getDeclaringClass().getModifiers()))
        {
            return method1;
        }
        continue; /* Loop/switch isn't completed */
        throw new NoSuchMethodException((new StringBuilder()).append("Can't find a public method for ").append(s).append(" ").append(ArrayUtils.toString(aclass)).toString());
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getShortCanonicalName(Class class1)
    {
        if (class1 == null)
        {
            return "";
        } else
        {
            return getShortCanonicalName(class1.getName());
        }
    }

    public static String getShortCanonicalName(Object obj, String s)
    {
        if (obj == null)
        {
            return s;
        } else
        {
            return getShortCanonicalName(obj.getClass().getName());
        }
    }

    public static String getShortCanonicalName(String s)
    {
        return getShortClassName(getCanonicalName(s));
    }

    public static String getShortClassName(Class class1)
    {
        if (class1 == null)
        {
            return "";
        } else
        {
            return getShortClassName(class1.getName());
        }
    }

    public static String getShortClassName(Object obj, String s)
    {
        if (obj == null)
        {
            return s;
        } else
        {
            return getShortClassName(obj.getClass());
        }
    }

    public static String getShortClassName(String s)
    {
        if (StringUtils.isEmpty(s))
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        if (s.startsWith("["))
        {
            for (; s.charAt(0) == '['; stringbuilder.append("[]"))
            {
                s = s.substring(1);
            }

            if (s.charAt(0) == 'L' && s.charAt(-1 + s.length()) == ';')
            {
                s = s.substring(1, -1 + s.length());
            }
            if (reverseAbbreviationMap.containsKey(s))
            {
                s = (String)reverseAbbreviationMap.get(s);
            }
        }
        int i = s.lastIndexOf('.');
        int j;
        int k;
        String s1;
        if (i == -1)
        {
            j = 0;
        } else
        {
            j = i + 1;
        }
        k = s.indexOf('$', j);
        s1 = s.substring(i + 1);
        if (k != -1)
        {
            s1 = s1.replace('$', '.');
        }
        return (new StringBuilder()).append(s1).append(stringbuilder).toString();
    }

    public static String getSimpleName(Class class1)
    {
        if (class1 == null)
        {
            return "";
        } else
        {
            return class1.getSimpleName();
        }
    }

    public static String getSimpleName(Object obj, String s)
    {
        if (obj == null)
        {
            return s;
        } else
        {
            return getSimpleName(obj.getClass());
        }
    }

    public static Iterable hierarchy(Class class1)
    {
        return hierarchy(class1, Interfaces.EXCLUDE);
    }

    public static Iterable hierarchy(Class class1, Interfaces interfaces)
    {
        Iterable iterable = new Iterable(class1) {

            final Class val$type;

            public Iterator iterator()
            {
                return (new MutableObject(type)). new Iterator() {

                    final _cls1 this$0;
                    final MutableObject val$next;

                    public boolean hasNext()
                    {
                        return next.getValue() != null;
                    }

                    public Class next()
                    {
                        Class class1 = (Class)next.getValue();
                        next.setValue(class1.getSuperclass());
                        return class1;
                    }

                    public volatile Object next()
                    {
                        return next();
                    }

                    public void remove()
                    {
                        throw new UnsupportedOperationException();
                    }

            
            {
                this$0 = final__pcls1;
                next = MutableObject.this;
                super();
            }
                };
            }

            
            {
                type = class1;
                super();
            }
        };
        if (interfaces != Interfaces.INCLUDE)
        {
            return iterable;
        } else
        {
            return new Iterable(iterable) {

                final Iterable val$classes;

                public Iterator iterator()
                {
                    HashSet hashset = new HashSet();
                    return hashset. new Iterator() {

                        Iterator interfaces;
                        final _cls2 this$0;
                        final Set val$seenInterfaces;
                        final Iterator val$wrapped;

                        private void walkInterfaces(Set set, Class class1)
                        {
                            Class aclass[] = class1.getInterfaces();
                            int i = aclass.length;
                            for (int j = 0; j < i; j++)
                            {
                                Class class2 = aclass[j];
                                if (!seenInterfaces.contains(class2))
                                {
                                    set.add(class2);
                                }
                                walkInterfaces(set, class2);
                            }

                        }

                        public boolean hasNext()
                        {
                            return interfaces.hasNext() || wrapped.hasNext();
                        }

                        public Class next()
                        {
                            if (interfaces.hasNext())
                            {
                                Class class2 = (Class)interfaces.next();
                                seenInterfaces.add(class2);
                                return class2;
                            } else
                            {
                                Class class1 = (Class)wrapped.next();
                                LinkedHashSet linkedhashset = new LinkedHashSet();
                                walkInterfaces(linkedhashset, class1);
                                interfaces = linkedhashset.iterator();
                                return class1;
                            }
                        }

                        public volatile Object next()
                        {
                            return next();
                        }

                        public void remove()
                        {
                            throw new UnsupportedOperationException();
                        }

            
            {
                this$0 = final__pcls2;
                wrapped = iterator;
                seenInterfaces = Set.this;
                super();
                interfaces = Collections.emptySet().iterator();
            }
                    };
                }

            
            {
                classes = iterable;
                super();
            }
            };
        }
    }

    public static boolean isAssignable(Class class1, Class class2)
    {
        return isAssignable(class1, class2, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
    }

    public static boolean isAssignable(Class class1, Class class2, boolean flag)
    {
        boolean flag1 = true;
        if (class2 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (class1 == null)
        {
            if (class2.isPrimitive())
            {
                flag1 = false;
            }
            return flag1;
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!class1.isPrimitive() || class2.isPrimitive())
        {
            break; /* Loop/switch isn't completed */
        }
        class1 = primitiveToWrapper(class1);
        if (class1 == null) goto _L1; else goto _L3
_L3:
        if (!class2.isPrimitive() || class1.isPrimitive())
        {
            break; /* Loop/switch isn't completed */
        }
        class1 = wrapperToPrimitive(class1);
        if (class1 == null) goto _L1; else goto _L4
_L4:
        if (class1.equals(class2))
        {
            return flag1;
        }
        if (!class1.isPrimitive())
        {
            break MISSING_BLOCK_LABEL_378;
        }
        if (class2.isPrimitive())
        {
            if (Integer.TYPE.equals(class1))
            {
                if (Long.TYPE.equals(class2) || Float.TYPE.equals(class2) || Double.TYPE.equals(class2))
                {
                    return flag1;
                }
            } else
            {
                if (!Long.TYPE.equals(class1))
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (Float.TYPE.equals(class2) || Double.TYPE.equals(class2))
                {
                    return flag1;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
        if (Boolean.TYPE.equals(class1) || Double.TYPE.equals(class1)) goto _L1; else goto _L5
_L5:
        if (Float.TYPE.equals(class1))
        {
            return Double.TYPE.equals(class2);
        }
        if (!Character.TYPE.equals(class1))
        {
            break; /* Loop/switch isn't completed */
        }
        if (Integer.TYPE.equals(class2) || Long.TYPE.equals(class2) || Float.TYPE.equals(class2) || Double.TYPE.equals(class2))
        {
            return flag1;
        }
        if (true) goto _L1; else goto _L6
_L6:
        if (!Short.TYPE.equals(class1))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!Integer.TYPE.equals(class2) && !Long.TYPE.equals(class2) && !Float.TYPE.equals(class2) && !Double.TYPE.equals(class2)) goto _L1; else goto _L7
_L7:
        return flag1;
        if (!Byte.TYPE.equals(class1) || !Short.TYPE.equals(class2) && !Integer.TYPE.equals(class2) && !Long.TYPE.equals(class2) && !Float.TYPE.equals(class2) && !Double.TYPE.equals(class2)) goto _L1; else goto _L8
_L8:
        return flag1;
        return class2.isAssignableFrom(class1);
    }

    public static transient boolean isAssignable(Class aclass[], Class aclass1[])
    {
        return isAssignable(aclass, aclass1, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
    }

    public static boolean isAssignable(Class aclass[], Class aclass1[], boolean flag)
    {
        if (ArrayUtils.isSameLength(aclass, aclass1)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (aclass == null)
        {
            aclass = ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        if (aclass1 == null)
        {
            aclass1 = ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= aclass.length)
                {
                    break label1;
                }
                if (!isAssignable(aclass[i], aclass1[i], flag))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isInnerClass(Class class1)
    {
        return class1 != null && class1.getEnclosingClass() != null;
    }

    public static boolean isPrimitiveOrWrapper(Class class1)
    {
        while (class1 == null || !class1.isPrimitive() && !isPrimitiveWrapper(class1)) 
        {
            return false;
        }
        return true;
    }

    public static boolean isPrimitiveWrapper(Class class1)
    {
        return wrapperPrimitiveMap.containsKey(class1);
    }

    public static Class primitiveToWrapper(Class class1)
    {
        if (class1 != null && class1.isPrimitive())
        {
            class1 = (Class)primitiveWrapperMap.get(class1);
        }
        return class1;
    }

    public static transient Class[] primitivesToWrappers(Class aclass[])
    {
        if (aclass == null)
        {
            aclass = null;
        } else
        if (aclass.length != 0)
        {
            Class aclass1[] = new Class[aclass.length];
            for (int i = 0; i < aclass.length; i++)
            {
                aclass1[i] = primitiveToWrapper(aclass[i]);
            }

            return aclass1;
        }
        return aclass;
    }

    private static String toCanonicalName(String s)
    {
        String s1 = StringUtils.deleteWhitespace(s);
        if (s1 == null)
        {
            throw new NullPointerException("className must not be null.");
        }
        if (s1.endsWith("[]"))
        {
            StringBuilder stringbuilder = new StringBuilder();
            String s2;
            String s4;
            for (s2 = s1; s2.endsWith("[]"); s2 = s4)
            {
                s4 = s2.substring(0, -2 + s2.length());
                stringbuilder.append("[");
            }

            String s3 = (String)abbreviationMap.get(s2);
            if (s3 != null)
            {
                stringbuilder.append(s3);
            } else
            {
                stringbuilder.append("L").append(s2).append(";");
            }
            s1 = stringbuilder.toString();
        }
        return s1;
    }

    public static transient Class[] toClass(Object aobj[])
    {
        if (aobj == null)
        {
            return null;
        }
        if (aobj.length == 0)
        {
            return ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        Class aclass[] = new Class[aobj.length];
        int i = 0;
        while (i < aobj.length) 
        {
            Class class1;
            if (aobj[i] == null)
            {
                class1 = null;
            } else
            {
                class1 = aobj[i].getClass();
            }
            aclass[i] = class1;
            i++;
        }
        return aclass;
    }

    public static Class wrapperToPrimitive(Class class1)
    {
        return (Class)wrapperPrimitiveMap.get(class1);
    }

    public static transient Class[] wrappersToPrimitives(Class aclass[])
    {
        if (aclass == null)
        {
            aclass = null;
        } else
        if (aclass.length != 0)
        {
            Class aclass1[] = new Class[aclass.length];
            for (int i = 0; i < aclass.length; i++)
            {
                aclass1[i] = wrapperToPrimitive(aclass[i]);
            }

            return aclass1;
        }
        return aclass;
    }

    static 
    {
        primitiveWrapperMap = new HashMap();
        primitiveWrapperMap.put(Boolean.TYPE, java/lang/Boolean);
        primitiveWrapperMap.put(Byte.TYPE, java/lang/Byte);
        primitiveWrapperMap.put(Character.TYPE, java/lang/Character);
        primitiveWrapperMap.put(Short.TYPE, java/lang/Short);
        primitiveWrapperMap.put(Integer.TYPE, java/lang/Integer);
        primitiveWrapperMap.put(Long.TYPE, java/lang/Long);
        primitiveWrapperMap.put(Double.TYPE, java/lang/Double);
        primitiveWrapperMap.put(Float.TYPE, java/lang/Float);
        primitiveWrapperMap.put(Void.TYPE, Void.TYPE);
        wrapperPrimitiveMap = new HashMap();
        Iterator iterator = primitiveWrapperMap.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Class class1 = (Class)iterator.next();
            Class class2 = (Class)primitiveWrapperMap.get(class1);
            if (!class1.equals(class2))
            {
                wrapperPrimitiveMap.put(class2, class1);
            }
        } while (true);
        HashMap hashmap = new HashMap();
        hashmap.put("int", "I");
        hashmap.put("boolean", "Z");
        hashmap.put("float", "F");
        hashmap.put("long", "J");
        hashmap.put("short", "S");
        hashmap.put("byte", "B");
        hashmap.put("double", "D");
        hashmap.put("char", "C");
        hashmap.put("void", "V");
        HashMap hashmap1 = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator1 = hashmap.entrySet().iterator(); iterator1.hasNext(); hashmap1.put(entry.getValue(), entry.getKey()))
        {
            entry = (java.util.Map.Entry)iterator1.next();
        }

        abbreviationMap = Collections.unmodifiableMap(hashmap);
        reverseAbbreviationMap = Collections.unmodifiableMap(hashmap1);
    }
}
