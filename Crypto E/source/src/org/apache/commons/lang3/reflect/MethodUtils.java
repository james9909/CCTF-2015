// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.Validate;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            MemberUtils, TypeUtils

public class MethodUtils
{

    public MethodUtils()
    {
    }

    public static transient Method getAccessibleMethod(Class class1, String s, Class aclass[])
    {
        Method method;
        try
        {
            method = getAccessibleMethod(class1.getMethod(s, aclass));
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return method;
    }

    public static Method getAccessibleMethod(Method method)
    {
        if (!MemberUtils.isAccessible(method))
        {
            method = null;
        } else
        {
            Class class1 = method.getDeclaringClass();
            if (!Modifier.isPublic(class1.getModifiers()))
            {
                String s = method.getName();
                Class aclass[] = method.getParameterTypes();
                Method method1 = getAccessibleMethodFromInterfaceNest(class1, s, aclass);
                if (method1 == null)
                {
                    method1 = getAccessibleMethodFromSuperclass(class1, s, aclass);
                }
                return method1;
            }
        }
        return method;
    }

    private static transient Method getAccessibleMethodFromInterfaceNest(Class class1, String s, Class aclass[])
    {
_L6:
        Class aclass1[];
        int i;
        if (class1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        aclass1 = class1.getInterfaces();
        i = 0;
_L2:
        if (i >= aclass1.length)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        if (Modifier.isPublic(aclass1[i].getModifiers()))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Method method1 = aclass1[i].getDeclaredMethod(s, aclass);
        return method1;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        Method method = getAccessibleMethodFromInterfaceNest(aclass1[i], s, aclass);
        if (method == null) goto _L4; else goto _L3
_L3:
        return method;
        class1 = class1.getSuperclass();
        if (true) goto _L6; else goto _L5
_L5:
        return null;
    }

    private static transient Method getAccessibleMethodFromSuperclass(Class class1, String s, Class aclass[])
    {
        Class class2 = class1.getSuperclass();
        do
        {
label0:
            {
                Method method = null;
                if (class2 != null)
                {
                    if (!Modifier.isPublic(class2.getModifiers()))
                    {
                        break label0;
                    }
                    Method method1;
                    try
                    {
                        method1 = class2.getMethod(s, aclass);
                    }
                    catch (NoSuchMethodException nosuchmethodexception)
                    {
                        return null;
                    }
                    method = method1;
                }
                return method;
            }
            class2 = class2.getSuperclass();
        } while (true);
    }

    public static transient Method getMatchingAccessibleMethod(Class class1, String s, Class aclass[])
    {
        Method method;
        try
        {
            method = class1.getMethod(s, aclass);
            MemberUtils.setAccessibleWorkaround(method);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Method amethod[] = class1.getMethods();
            int i = amethod.length;
            int j = 0;
            method = null;
            for (; j < i; j++)
            {
                Method method1 = amethod[j];
                if (!method1.getName().equals(s) || !ClassUtils.isAssignable(aclass, method1.getParameterTypes(), true))
                {
                    continue;
                }
                Method method2 = getAccessibleMethod(method1);
                if (method2 != null && (method == null || MemberUtils.compareParameterTypes(method2.getParameterTypes(), method.getParameterTypes(), aclass) < 0))
                {
                    method = method2;
                }
            }

            if (method != null)
            {
                MemberUtils.setAccessibleWorkaround(method);
                return method;
            }
        }
        return method;
    }

    public static Set getOverrideHierarchy(Method method, org.apache.commons.lang3.ClassUtils.Interfaces interfaces)
    {
        Validate.notNull(method);
        LinkedHashSet linkedhashset = new LinkedHashSet();
        linkedhashset.add(method);
        Class aclass[] = method.getParameterTypes();
        Class class1 = method.getDeclaringClass();
        Iterator iterator = ClassUtils.hierarchy(class1, interfaces).iterator();
        iterator.next();
label0:
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Method method1 = getMatchingAccessibleMethod((Class)iterator.next(), method.getName(), aclass);
            if (method1 == null)
            {
                continue;
            }
            if (Arrays.equals(method1.getParameterTypes(), aclass))
            {
                linkedhashset.add(method1);
                continue;
            }
            java.util.Map map = TypeUtils.getTypeArguments(class1, method1.getDeclaringClass());
            for (int i = 0; i < aclass.length; i++)
            {
                if (!TypeUtils.equals(TypeUtils.unrollVariables(map, method.getGenericParameterTypes()[i]), TypeUtils.unrollVariables(map, method1.getGenericParameterTypes()[i])))
                {
                    continue label0;
                }
            }

            linkedhashset.add(method1);
        } while (true);
        return linkedhashset;
    }

    public static transient Object invokeExactMethod(Object obj, String s, Object aobj[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        return invokeExactMethod(obj, s, aobj1, ClassUtils.toClass(aobj1));
    }

    public static Object invokeExactMethod(Object obj, String s, Object aobj[], Class aclass[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        Class aclass1[] = ArrayUtils.nullToEmpty(aclass);
        Method method = getAccessibleMethod(obj.getClass(), s, aclass1);
        if (method == null)
        {
            throw new NoSuchMethodException((new StringBuilder()).append("No such accessible method: ").append(s).append("() on object: ").append(obj.getClass().getName()).toString());
        } else
        {
            return method.invoke(obj, aobj1);
        }
    }

    public static transient Object invokeExactStaticMethod(Class class1, String s, Object aobj[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        return invokeExactStaticMethod(class1, s, aobj1, ClassUtils.toClass(aobj1));
    }

    public static Object invokeExactStaticMethod(Class class1, String s, Object aobj[], Class aclass[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        Method method = getAccessibleMethod(class1, s, ArrayUtils.nullToEmpty(aclass));
        if (method == null)
        {
            throw new NoSuchMethodException((new StringBuilder()).append("No such accessible method: ").append(s).append("() on class: ").append(class1.getName()).toString());
        } else
        {
            return method.invoke(null, aobj1);
        }
    }

    public static transient Object invokeMethod(Object obj, String s, Object aobj[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        return invokeMethod(obj, s, aobj1, ClassUtils.toClass(aobj1));
    }

    public static Object invokeMethod(Object obj, String s, Object aobj[], Class aclass[])
    {
        Class aclass1[] = ArrayUtils.nullToEmpty(aclass);
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        Method method = getMatchingAccessibleMethod(obj.getClass(), s, aclass1);
        if (method == null)
        {
            throw new NoSuchMethodException((new StringBuilder()).append("No such accessible method: ").append(s).append("() on object: ").append(obj.getClass().getName()).toString());
        } else
        {
            return method.invoke(obj, aobj1);
        }
    }

    public static transient Object invokeStaticMethod(Class class1, String s, Object aobj[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        return invokeStaticMethod(class1, s, aobj1, ClassUtils.toClass(aobj1));
    }

    public static Object invokeStaticMethod(Class class1, String s, Object aobj[], Class aclass[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        Method method = getMatchingAccessibleMethod(class1, s, ArrayUtils.nullToEmpty(aclass));
        if (method == null)
        {
            throw new NoSuchMethodException((new StringBuilder()).append("No such accessible method: ").append(s).append("() on class: ").append(class1.getName()).toString());
        } else
        {
            return method.invoke(null, aobj1);
        }
    }
}
