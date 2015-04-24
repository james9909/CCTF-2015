// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import android.os.Handler;
import android.view.Choreographer;

// Referenced classes of package com.facebook.rebound:
//            SpringLooper, BaseSpringSystem

public abstract class AndroidSpringLooperFactory
{
    static class ChoreographerAndroidSpringLooper extends SpringLooper
    {

        private final Choreographer b;
        private final android.view.Choreographer.FrameCallback c = new _cls1(this);
        private boolean d;

        public static ChoreographerAndroidSpringLooper a()
        {
            return new ChoreographerAndroidSpringLooper(Choreographer.getInstance());
        }

        static boolean a(ChoreographerAndroidSpringLooper choreographerandroidspringlooper)
        {
            return choreographerandroidspringlooper.d;
        }

        static android.view.Choreographer.FrameCallback b(ChoreographerAndroidSpringLooper choreographerandroidspringlooper)
        {
            return choreographerandroidspringlooper.c;
        }

        static Choreographer c(ChoreographerAndroidSpringLooper choreographerandroidspringlooper)
        {
            return choreographerandroidspringlooper.b;
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

        public ChoreographerAndroidSpringLooper(Choreographer choreographer)
        {
            b = choreographer;
        }
    }

    static class LegacyAndroidSpringLooper extends SpringLooper
    {

        private final Handler b;
        private final Runnable c = new _cls1(this);
        private boolean d;

        public static SpringLooper a()
        {
            return new LegacyAndroidSpringLooper(new Handler());
        }

        static boolean a(LegacyAndroidSpringLooper legacyandroidspringlooper)
        {
            return legacyandroidspringlooper.d;
        }

        static Runnable b(LegacyAndroidSpringLooper legacyandroidspringlooper)
        {
            return legacyandroidspringlooper.c;
        }

        static Handler c(LegacyAndroidSpringLooper legacyandroidspringlooper)
        {
            return legacyandroidspringlooper.b;
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

        public LegacyAndroidSpringLooper(Handler handler)
        {
            b = handler;
        }
    }


    public AndroidSpringLooperFactory()
    {
    }

    public static SpringLooper a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return ChoreographerAndroidSpringLooper.a();
        } else
        {
            return LegacyAndroidSpringLooper.a();
        }
    }

    // Unreferenced inner class com/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1

/* anonymous class */
    class ChoreographerAndroidSpringLooper._cls1
        implements android.view.Choreographer.FrameCallback
    {

        final ChoreographerAndroidSpringLooper a;

        public void doFrame(long l)
        {
            if (!ChoreographerAndroidSpringLooper.a(a) || a.a == null)
            {
                return;
            } else
            {
                a.a.c();
                ChoreographerAndroidSpringLooper.c(a).postFrameCallback(ChoreographerAndroidSpringLooper.b(a));
                return;
            }
        }

            
            {
                a = choreographerandroidspringlooper;
                super();
            }
    }


    // Unreferenced inner class com/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1

/* anonymous class */
    class LegacyAndroidSpringLooper._cls1
        implements Runnable
    {

        final LegacyAndroidSpringLooper a;

        public void run()
        {
            if (!LegacyAndroidSpringLooper.a(a) || a.a == null)
            {
                return;
            } else
            {
                a.a.c();
                LegacyAndroidSpringLooper.c(a).post(LegacyAndroidSpringLooper.b(a));
                return;
            }
        }

            
            {
                a = legacyandroidspringlooper;
                super();
            }
    }

}
