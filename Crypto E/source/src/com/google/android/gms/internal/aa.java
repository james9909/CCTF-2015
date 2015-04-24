// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            he, hf, av, u

public class aa
{
    public static class a
    {

        private final Handler mHandler;

        public boolean postDelayed(Runnable runnable, long l)
        {
            return mHandler.postDelayed(runnable, l);
        }

        public void removeCallbacks(Runnable runnable)
        {
            mHandler.removeCallbacks(runnable);
        }

        public a(Handler handler)
        {
            mHandler = handler;
        }
    }


    private final a mo;
    private final Runnable mp;
    private av mq;
    private boolean mr;
    private boolean ms;
    private long mt;

    public aa(u u)
    {
        this(u, new a(he.xO));
    }

    aa(u u, a a1)
    {
        mr = false;
        ms = false;
        mt = 0L;
        mo = a1;
        mp = new Runnable(u) {

            private final WeakReference mu;
            final u mv;
            final aa mw;

            public void run()
            {
                aa.a(mw, false);
                u u1 = (u)mu.get();
                if (u1 != null)
                {
                    u1.b(aa.a(mw));
                }
            }

            
            {
                mw = aa.this;
                mv = u1;
                super();
                mu = new WeakReference(mv);
            }
        };
    }

    static av a(aa aa1)
    {
        return aa1.mq;
    }

    static boolean a(aa aa1, boolean flag)
    {
        aa1.mr = flag;
        return flag;
    }

    public void a(av av, long l)
    {
        if (mr)
        {
            hf.X("An ad refresh is already scheduled.");
        } else
        {
            mq = av;
            mr = true;
            mt = l;
            if (!ms)
            {
                hf.V((new StringBuilder()).append("Scheduling ad refresh ").append(l).append(" milliseconds from now.").toString());
                mo.postDelayed(mp, l);
                return;
            }
        }
    }

    public boolean aC()
    {
        return mr;
    }

    public void c(av av)
    {
        a(av, 60000L);
    }

    public void cancel()
    {
        mr = false;
        mo.removeCallbacks(mp);
    }

    public void pause()
    {
        ms = true;
        if (mr)
        {
            mo.removeCallbacks(mp);
        }
    }

    public void resume()
    {
        ms = false;
        if (mr)
        {
            mr = false;
            a(mq, mt);
        }
    }
}
