// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ClassUtils;

abstract class MemberUtils
{

    private static final int ACCESS_TEST = 7;
    private static final Class ORDERED_PRIMITIVE_TYPES[];

    MemberUtils()
    {
    }

    static int compareParameterTypes(Class aclass[], Class aclass1[], Class aclass2[])
    {
        float f = getTotalTransformationCost(aclass2, aclass);
        float f1 = getTotalTransformationCost(aclass2, aclass1);
        if (f < f1)
        {
            return -1;
        }
        return f1 >= f ? 0 : 1;
    }

    private static float getObjectTransformationCost(Class class1, Class class2)
    {
        if (!class2.isPrimitive()) goto _L2; else goto _L1
_L1:
        float f = getPrimitivePromotionCost(class1, class2);
_L4:
        return f;
_L2:
        f = 0.0F;
_L5:
        if (class1 == null || class2.equals(class1))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!class2.isInterface() || !ClassUtils.isAssignable(class1, class2))
        {
            break MISSING_BLOCK_LABEL_58;
        }
        f += 0.25F;
        if (class1 != null) goto _L4; else goto _L3
_L3:
        return f + 1.5F;
        f++;
        class1 = class1.getSuperclass();
          goto _L5
    }

    private static float getPrimitivePromotionCost(Class class1, Class class2)
    {
        boolean flag = class1.isPrimitive();
        float f = 0.0F;
        if (!flag)
        {
            f = 0.0F + 0.1F;
            class1 = ClassUtils.wrapperToPrimitive(class1);
        }
        int i = 0;
        float f1 = f;
        for (Class class3 = class1; class3 != class2 && i < ORDERED_PRIMITIVE_TYPES.length; i++)
        {
            if (class3 != ORDERED_PRIMITIVE_TYPES[i])
            {
                continue;
            }
            f1 += 0.1F;
            if (i < -1 + ORDERED_PRIMITIVE_TYPES.length)
            {
                class3 = ORDERED_PRIMITIVE_TYPES[i + 1];
            }
        }

        return f1;
    }

    private static float getTotalTransformationCost(Class aclass[], Class aclass1[])
    {
        float f = 0.0F;
        for (int i = 0; i < aclass.length; i++)
        {
            f += getObjectTransformationCost(aclass[i], aclass1[i]);
        }

        return f;
    }

    static boolean isAccessible(Member member)
    {
        return member != null && Modifier.isPublic(member.getModifiers()) && !member.isSynthetic();
    }

    static boolean isPackageAccess(int i)
    {
        return (i & 7) == 0;
    }

    static boolean setAccessibleWorkaround(AccessibleObject accessibleobject)
    {
        if (accessibleobject == null || accessibleobject.isAccessible())
        {
            return false;
        }
        Member member = (Member)accessibleobject;
        if (accessibleobject.isAccessible() || !Modifier.isPublic(member.getModifiers()) || !isPackageAccess(member.getDeclaringClass().getModifiers()))
        {
            break MISSING_BLOCK_LABEL_60;
        }
        accessibleobject.setAccessible(true);
        return true;
        SecurityException securityexception;
        securityexception;
        return false;
    }

    static 
    {
        Class aclass[] = new Class[7];
        aclass[0] = Byte.TYPE;
        aclass[1] = Short.TYPE;
        aclass[2] = Character.TYPE;
        aclass[3] = Integer.TYPE;
        aclass[4] = Long.TYPE;
        aclass[5] = Float.TYPE;
        aclass[6] = Double.TYPE;
        ORDERED_PRIMITIVE_TYPES = aclass;
    }
}
