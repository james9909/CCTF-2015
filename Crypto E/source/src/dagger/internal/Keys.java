// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import dagger.Lazy;
import dagger.MembersInjector;
import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Set;
import javax.inject.Provider;
import javax.inject.Qualifier;

// Referenced classes of package dagger.internal:
//            Memoizer

public final class Keys
{

    private static final String a = (new StringBuilder()).append(javax/inject/Provider.getCanonicalName()).append("<").toString();
    private static final String b = (new StringBuilder()).append(dagger/MembersInjector.getCanonicalName()).append("<").toString();
    private static final String c = (new StringBuilder()).append(dagger/Lazy.getCanonicalName()).append("<").toString();
    private static final String d = (new StringBuilder()).append(java/util/Set.getCanonicalName()).append("<").toString();
    private static final Memoizer e = new Memoizer() {

        protected Boolean a(Class class1)
        {
            return Boolean.valueOf(class1.isAnnotationPresent(javax/inject/Qualifier));
        }

        protected volatile Object a(Object obj)
        {
            return a((Class)obj);
        }

    };

    Keys()
    {
    }

    public static String a(Class class1)
    {
        return "members/".concat(class1.getName());
    }

    static String a(String s)
    {
        int i = f(s);
        if (a(s, i, a))
        {
            return a(s, i, s.substring(0, i), a);
        }
        if (a(s, i, b))
        {
            return a(s, i, "members/", b);
        } else
        {
            return null;
        }
    }

    private static String a(String s, int i, String s1, String s2)
    {
        return (new StringBuilder()).append(s1).append(s.substring(i + s2.length(), -1 + s.length())).toString();
    }

    public static String a(Type type)
    {
        return a(type, ((Annotation) (null)));
    }

    private static String a(Type type, Annotation annotation)
    {
        Type type1 = b(type);
        if (annotation == null && (type1 instanceof Class) && !((Class)type1).isArray())
        {
            return ((Class)type1).getName();
        }
        StringBuilder stringbuilder = new StringBuilder();
        if (annotation != null)
        {
            stringbuilder.append(annotation).append("/");
        }
        a(type1, stringbuilder, true);
        return stringbuilder.toString();
    }

    public static String a(Type type, Annotation aannotation[], Object obj)
    {
        return a(type, a(aannotation, obj));
    }

    private static Annotation a(Annotation aannotation[], Object obj)
    {
        Annotation annotation = null;
        int i = aannotation.length;
        int j = 0;
        while (j < i) 
        {
            Annotation annotation1 = aannotation[j];
            Annotation annotation2;
            if (!((Boolean)e.b(annotation1.annotationType())).booleanValue())
            {
                annotation2 = annotation;
            } else
            {
                if (annotation != null)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Too many qualifier annotations on ").append(obj).toString());
                }
                annotation2 = annotation1;
            }
            j++;
            annotation = annotation2;
        }
        return annotation;
    }

    private static void a(Type type, StringBuilder stringbuilder, boolean flag)
    {
        int i = 0;
        if (type instanceof Class)
        {
            Class class1 = (Class)type;
            if (class1.isArray())
            {
                a(((Type) (class1.getComponentType())), stringbuilder, false);
                stringbuilder.append("[]");
                return;
            }
            if (class1.isPrimitive())
            {
                if (flag)
                {
                    throw new UnsupportedOperationException((new StringBuilder()).append("Uninjectable type ").append(class1.getName()).toString());
                } else
                {
                    stringbuilder.append(class1.getName());
                    return;
                }
            } else
            {
                stringbuilder.append(class1.getName());
                return;
            }
        }
        if (type instanceof ParameterizedType)
        {
            ParameterizedType parameterizedtype = (ParameterizedType)type;
            a(parameterizedtype.getRawType(), stringbuilder, true);
            Type atype[] = parameterizedtype.getActualTypeArguments();
            stringbuilder.append("<");
            for (; i < atype.length; i++)
            {
                if (i != 0)
                {
                    stringbuilder.append(", ");
                }
                a(atype[i], stringbuilder, true);
            }

            stringbuilder.append(">");
            return;
        }
        if (type instanceof GenericArrayType)
        {
            a(((GenericArrayType)type).getGenericComponentType(), stringbuilder, false);
            stringbuilder.append("[]");
            return;
        } else
        {
            throw new UnsupportedOperationException((new StringBuilder()).append("Uninjectable type ").append(type).toString());
        }
    }

    private static boolean a(String s, int i, String s1)
    {
        return s.regionMatches(i, s1, 0, s1.length());
    }

    static String b(String s)
    {
        int i = f(s);
        if (a(s, i, c))
        {
            return a(s, i, s.substring(0, i), c);
        } else
        {
            return null;
        }
    }

    private static Type b(Type type)
    {
        if (type == Byte.TYPE)
        {
            type = java/lang/Byte;
        } else
        {
            if (type == Short.TYPE)
            {
                return java/lang/Short;
            }
            if (type == Integer.TYPE)
            {
                return java/lang/Integer;
            }
            if (type == Long.TYPE)
            {
                return java/lang/Long;
            }
            if (type == Character.TYPE)
            {
                return java/lang/Character;
            }
            if (type == Boolean.TYPE)
            {
                return java/lang/Boolean;
            }
            if (type == Float.TYPE)
            {
                return java/lang/Float;
            }
            if (type == Double.TYPE)
            {
                return java/lang/Double;
            }
            if (type == Void.TYPE)
            {
                return java/lang/Void;
            }
        }
        return type;
    }

    public static boolean c(String s)
    {
        return s.startsWith("@");
    }

    public static String d(String s)
    {
        int i;
label0:
        {
            if (!s.startsWith("@"))
            {
                boolean flag = s.startsWith("members/");
                i = 0;
                if (!flag)
                {
                    break label0;
                }
            }
            i = 1 + s.lastIndexOf('/');
        }
        if (s.indexOf('<', i) == -1 && s.indexOf('[', i) == -1)
        {
            return s.substring(i);
        } else
        {
            return null;
        }
    }

    public static boolean e(String s)
    {
        return s.startsWith("java.") || s.startsWith("javax.") || s.startsWith("android.");
    }

    private static int f(String s)
    {
        if (s.startsWith("@"))
        {
            return 1 + s.lastIndexOf('/');
        } else
        {
            return 0;
        }
    }

}
