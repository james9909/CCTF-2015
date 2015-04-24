// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import org.apache.commons.lang3.BooleanUtils;

public class InheritanceUtils
{

    public InheritanceUtils()
    {
    }

    public static int distance(Class class1, Class class2)
    {
        if (class1 != null && class2 != null)
        {
            if (class1.equals(class2))
            {
                return 0;
            }
            Class class3 = class1.getSuperclass();
            int i = BooleanUtils.toInteger(class2.equals(class3));
            if (i == 1)
            {
                return i;
            }
            int j = i + distance(class3, class2);
            if (j > 0)
            {
                return j + 1;
            }
        }
        return -1;
    }
}
