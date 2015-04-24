// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.util.system.Clock;

public class SnapSkipController
{

    private final Clock a;
    private final SharedPreferences b;
    private long c;
    private int d;
    private boolean e;

    public SnapSkipController(Context context)
    {
        this(new Clock(), PreferenceManager.getDefaultSharedPreferences(context));
    }

    SnapSkipController(Clock clock, SharedPreferences sharedpreferences)
    {
        c = -1L;
        d = 0;
        e = false;
        a = clock;
        b = sharedpreferences;
    }

    public void a(boolean flag)
    {
        c = a.b();
        e = flag;
        d = 1 + d;
    }

    public boolean a()
    {
        while (d > 1 || e || a.b() >= 200L + c) 
        {
            return true;
        }
        return false;
    }

    public void b()
    {
    }

    public void c()
    {
        d = 0;
        c = -1L;
    }
}
