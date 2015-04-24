// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;

public class ji
{

    private static boolean NF = false;
    private boolean NG;
    private boolean NH;
    private String NI;
    protected final String mTag;

    public ji(String s)
    {
        this(s, hX());
    }

    public ji(String s, boolean flag)
    {
        mTag = s;
        NG = flag;
        NH = false;
    }

    public static boolean hX()
    {
        return NF;
    }

    public transient void a(String s, Object aobj[])
    {
        if (hW())
        {
            Log.v(mTag, e(s, aobj));
        }
    }

    public transient void a(Throwable throwable, String s, Object aobj[])
    {
        if (hV() || NF)
        {
            Log.d(mTag, e(s, aobj), throwable);
        }
    }

    public void aR(String s)
    {
        String s1;
        if (TextUtils.isEmpty(s))
        {
            s1 = null;
        } else
        {
            s1 = String.format("[%s] ", new Object[] {
                s
            });
        }
        NI = s1;
    }

    public transient void b(String s, Object aobj[])
    {
        if (hV() || NF)
        {
            Log.d(mTag, e(s, aobj));
        }
    }

    public transient void c(String s, Object aobj[])
    {
        Log.i(mTag, e(s, aobj));
    }

    public transient void d(String s, Object aobj[])
    {
        Log.w(mTag, e(s, aobj));
    }

    protected transient String e(String s, Object aobj[])
    {
        if (aobj.length != 0)
        {
            s = String.format(s, aobj);
        }
        if (!TextUtils.isEmpty(NI))
        {
            s = (new StringBuilder()).append(NI).append(s).toString();
        }
        return s;
    }

    public boolean hV()
    {
        return NG;
    }

    public boolean hW()
    {
        return NH;
    }

}
