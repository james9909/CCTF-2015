// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Looper;
import android.text.TextUtils;

public final class s
{

    public static void N(boolean flag)
    {
        if (!flag)
        {
            throw new IllegalStateException();
        } else
        {
            return;
        }
    }

    public static void O(boolean flag)
    {
        if (!flag)
        {
            throw new IllegalArgumentException();
        } else
        {
            return;
        }
    }

    public static void a(boolean flag, Object obj)
    {
        if (!flag)
        {
            throw new IllegalStateException(String.valueOf(obj));
        } else
        {
            return;
        }
    }

    public static transient void a(boolean flag, String s1, Object aobj[])
    {
        if (!flag)
        {
            throw new IllegalStateException(String.format(s1, aobj));
        } else
        {
            return;
        }
    }

    public static Object b(Object obj, Object obj1)
    {
        if (obj == null)
        {
            throw new NullPointerException(String.valueOf(obj1));
        } else
        {
            return obj;
        }
    }

    public static String b(String s1, Object obj)
    {
        if (TextUtils.isEmpty(s1))
        {
            throw new IllegalArgumentException(String.valueOf(obj));
        } else
        {
            return s1;
        }
    }

    public static void b(boolean flag, Object obj)
    {
        if (!flag)
        {
            throw new IllegalArgumentException(String.valueOf(obj));
        } else
        {
            return;
        }
    }

    public static transient void b(boolean flag, String s1, Object aobj[])
    {
        if (!flag)
        {
            throw new IllegalArgumentException(String.format(s1, aobj));
        } else
        {
            return;
        }
    }

    public static void bb(String s1)
    {
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            throw new IllegalStateException(s1);
        } else
        {
            return;
        }
    }

    public static void bc(String s1)
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new IllegalStateException(s1);
        } else
        {
            return;
        }
    }

    public static String bi(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            throw new IllegalArgumentException("Given String is empty or null");
        } else
        {
            return s1;
        }
    }

    public static Object l(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("null reference");
        } else
        {
            return obj;
        }
    }
}
