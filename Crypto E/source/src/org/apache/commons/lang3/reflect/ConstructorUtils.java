// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.Validate;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            MemberUtils

public class ConstructorUtils
{

    public ConstructorUtils()
    {
    }

    public static transient Constructor getAccessibleConstructor(Class class1, Class aclass[])
    {
        Validate.notNull(class1, "class cannot be null", new Object[0]);
        Constructor constructor;
        try
        {
            constructor = getAccessibleConstructor(class1.getConstructor(aclass));
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return constructor;
    }

    public static Constructor getAccessibleConstructor(Constructor constructor)
    {
        Validate.notNull(constructor, "constructor cannot be null", new Object[0]);
        if (MemberUtils.isAccessible(constructor) && isAccessible(constructor.getDeclaringClass()))
        {
            return constructor;
        } else
        {
            return null;
        }
    }

    public static transient Constructor getMatchingAccessibleConstructor(Class class1, Class aclass[])
    {
        Validate.notNull(class1, "class cannot be null", new Object[0]);
        Constructor constructor;
        try
        {
            constructor = class1.getConstructor(aclass);
            MemberUtils.setAccessibleWorkaround(constructor);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            constructor = null;
            Constructor aconstructor[] = class1.getConstructors();
            int i = aconstructor.length;
            int j = 0;
            while (j < i) 
            {
                Constructor constructor1 = aconstructor[j];
                if (ClassUtils.isAssignable(aclass, constructor1.getParameterTypes(), true))
                {
                    Constructor constructor2 = getAccessibleConstructor(constructor1);
                    if (constructor2 != null)
                    {
                        MemberUtils.setAccessibleWorkaround(constructor2);
                        if (constructor == null || MemberUtils.compareParameterTypes(constructor2.getParameterTypes(), constructor.getParameterTypes(), aclass) < 0)
                        {
                            constructor = constructor2;
                        }
                    }
                }
                j++;
            }
        }
        return constructor;
    }

    public static transient Object invokeConstructor(Class class1, Object aobj[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        return invokeConstructor(class1, aobj1, ClassUtils.toClass(aobj1));
    }

    public static Object invokeConstructor(Class class1, Object aobj[], Class aclass[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        Constructor constructor = getMatchingAccessibleConstructor(class1, ArrayUtils.nullToEmpty(aclass));
        if (constructor == null)
        {
            throw new NoSuchMethodException((new StringBuilder()).append("No such accessible constructor on object: ").append(class1.getName()).toString());
        } else
        {
            return constructor.newInstance(aobj1);
        }
    }

    public static transient Object invokeExactConstructor(Class class1, Object aobj[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        return invokeExactConstructor(class1, aobj1, ClassUtils.toClass(aobj1));
    }

    public static Object invokeExactConstructor(Class class1, Object aobj[], Class aclass[])
    {
        Object aobj1[] = ArrayUtils.nullToEmpty(aobj);
        Constructor constructor = getAccessibleConstructor(class1, ArrayUtils.nullToEmpty(aclass));
        if (constructor == null)
        {
            throw new NoSuchMethodException((new StringBuilder()).append("No such accessible constructor on object: ").append(class1.getName()).toString());
        } else
        {
            return constructor.newInstance(aobj1);
        }
    }

    private static boolean isAccessible(Class class1)
    {
        for (; class1 != null; class1 = class1.getEnclosingClass())
        {
            if (!Modifier.isPublic(class1.getModifiers()))
            {
                return false;
            }
        }

        return true;
    }
}
