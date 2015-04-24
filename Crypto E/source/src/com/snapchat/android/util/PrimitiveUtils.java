// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class PrimitiveUtils
{

    private static final Set a;
    private static final Map b;

    public PrimitiveUtils()
    {
    }

    public static double a(Double double1)
    {
        if (double1 == null)
        {
            return 0.0D;
        } else
        {
            return double1.doubleValue();
        }
    }

    public static int a(Integer integer)
    {
        if (integer == null)
        {
            return 0;
        } else
        {
            return integer.intValue();
        }
    }

    public static long a(Long long1)
    {
        if (long1 == null)
        {
            return 0L;
        } else
        {
            return long1.longValue();
        }
    }

    public static boolean a(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public static boolean a(Class class1)
    {
        return a.contains(class1);
    }

    public static Class b(Class class1)
    {
        Class class2 = (Class)b.get(class1);
        if (class2 == null)
        {
            return class1;
        } else
        {
            return class2;
        }
    }

    static 
    {
        b = new HashMap(9);
        b.put(Integer.TYPE, java/lang/Integer);
        b.put(Long.TYPE, java/lang/Long);
        b.put(Boolean.TYPE, java/lang/Boolean);
        b.put(Byte.TYPE, java/lang/Byte);
        b.put(Character.TYPE, java/lang/Character);
        b.put(Double.TYPE, java/lang/Double);
        b.put(Float.TYPE, java/lang/Float);
        b.put(Short.TYPE, java/lang/Short);
        b.put(Void.TYPE, java/lang/Void);
        a = new HashSet(b.values());
    }
}
