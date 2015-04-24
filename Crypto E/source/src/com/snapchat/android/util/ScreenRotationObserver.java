// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.view.OrientationEventListener;

public class ScreenRotationObserver
{
    public static class ScreenRotation
    {

        public ScreenRotation()
        {
        }
    }

    public static interface ScreenRotationListener
    {

        public abstract void a(int i);
    }


    private ScreenRotationListener a;
    private final OrientationEventListener b;
    private final int c;
    private int d;

    public ScreenRotationObserver(Context context, int i)
    {
        a = null;
        b = new OrientationEventListener(context, 3) {

            final ScreenRotationObserver a;

            public void onOrientationChanged(int j)
            {
                a.a(j);
            }

            
            {
                a = ScreenRotationObserver.this;
                super(context, i);
            }
        };
        c = i;
        d = 0;
    }

    public void a()
    {
        d = 0;
        if (b.canDetectOrientation())
        {
            b.enable();
        }
    }

    protected void a(int i)
    {
        int j = b(i);
        if (j != d && (j & c) != 0)
        {
            d = j;
            if (a != null)
            {
                a.a(j);
            }
        }
    }

    public void a(ScreenRotationListener screenrotationlistener)
    {
        a = screenrotationlistener;
    }

    protected boolean a(int i, int j, int k)
    {
        return j <= i && i <= k;
    }

    protected int b(int i)
    {
        int j;
        if (a(i, 338, 360) || a(i, 0, 22))
        {
            j = 1;
        } else
        {
            if (a(i, 248, 292))
            {
                return 16;
            }
            if (a(i, 158, 202))
            {
                return 256;
            }
            boolean flag = a(i, 68, 112);
            j = 0;
            if (flag)
            {
                return 4096;
            }
        }
        return j;
    }

    public void b()
    {
        b.disable();
    }
}
