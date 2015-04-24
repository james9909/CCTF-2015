// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import android.os.Handler;

// Referenced classes of package com.facebook.rebound:
//            SpringLooper, AndroidSpringLooperFactory, BaseSpringSystem

static class b extends SpringLooper
{

    private final Handler b;
    private final Runnable c = new Runnable() {

        final AndroidSpringLooperFactory.LegacyAndroidSpringLooper a;

        public void run()
        {
            if (!AndroidSpringLooperFactory.LegacyAndroidSpringLooper.a(a) || a.a == null)
            {
                return;
            } else
            {
                a.a.c();
                AndroidSpringLooperFactory.LegacyAndroidSpringLooper.c(a).post(AndroidSpringLooperFactory.LegacyAndroidSpringLooper.b(a));
                return;
            }
        }

            
            {
                a = AndroidSpringLooperFactory.LegacyAndroidSpringLooper.this;
                super();
            }
    };
    private boolean d;

    public static SpringLooper a()
    {
        return new <init>(new Handler());
    }

    static boolean a(<init> <init>1)
    {
        return <init>1.d;
    }

    static Runnable b(d d1)
    {
        return d1.c;
    }

    static Handler c(c c1)
    {
        return c1.b;
    }

    public void b()
    {
        d = true;
        b.removeCallbacks(c);
        b.post(c);
    }

    public void c()
    {
        d = false;
        b.removeCallbacks(c);
    }

    public _cls1.a(Handler handler)
    {
        b = handler;
    }
}
