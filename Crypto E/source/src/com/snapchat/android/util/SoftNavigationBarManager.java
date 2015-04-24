// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.view.View;
import com.snapchat.android.Timber;

public class SoftNavigationBarManager
{

    private static final SoftNavigationBarManager a = new SoftNavigationBarManager();
    private final boolean b;
    private View c;
    private int d;

    private SoftNavigationBarManager()
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this(flag);
    }

    SoftNavigationBarManager(boolean flag)
    {
        b = flag;
    }

    public static SoftNavigationBarManager a()
    {
        return a;
    }

    public void a(View view)
    {
        if (!b)
        {
            return;
        } else
        {
            c = view;
            d = c.getSystemUiVisibility();
            return;
        }
    }

    public void b()
    {
        if (!b || c == null)
        {
            return;
        } else
        {
            Timber.a("SoftNavigationBarManager", "Turning immersive mode ON", new Object[0]);
            c.setSystemUiVisibility(5890);
            return;
        }
    }

    public void c()
    {
        if (!b || c == null)
        {
            return;
        } else
        {
            Timber.a("SoftNavigationBarManager", "Turning immersive mode OFF", new Object[0]);
            c.setSystemUiVisibility(d);
            return;
        }
    }

}
