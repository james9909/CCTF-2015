// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import android.view.Choreographer;

// Referenced classes of package com.facebook.rebound:
//            SpringLooper, AndroidSpringLooperFactory, BaseSpringSystem

static class b extends SpringLooper
{

    private final Choreographer b;
    private final android.view.gLooper.c c = new android.view.Choreographer.FrameCallback() {

        final AndroidSpringLooperFactory.ChoreographerAndroidSpringLooper a;

        public void doFrame(long l)
        {
            if (!AndroidSpringLooperFactory.ChoreographerAndroidSpringLooper.a(a) || a.a == null)
            {
                return;
            } else
            {
                a.a.c();
                AndroidSpringLooperFactory.ChoreographerAndroidSpringLooper.c(a).postFrameCallback(AndroidSpringLooperFactory.ChoreographerAndroidSpringLooper.b(a));
                return;
            }
        }

            
            {
                a = AndroidSpringLooperFactory.ChoreographerAndroidSpringLooper.this;
                super();
            }
    };
    private boolean d;

    public static b a()
    {
        return new <init>(Choreographer.getInstance());
    }

    static boolean a(<init> <init>1)
    {
        return <init>1.d;
    }

    static android.view.gLooper b(d d1)
    {
        return d1.c;
    }

    static Choreographer c(c c1)
    {
        return c1.b;
    }

    public void b()
    {
        d = true;
        b.removeFrameCallback(c);
        b.postFrameCallback(c);
    }

    public void c()
    {
        d = false;
        b.removeFrameCallback(c);
    }

    public _cls1.a(Choreographer choreographer)
    {
        b = choreographer;
    }
}
