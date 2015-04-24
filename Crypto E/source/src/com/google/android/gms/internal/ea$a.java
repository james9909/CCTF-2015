// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            he, ea

static final class cA
{

    private final Runnable mp;
    private volatile boolean tg;

    static boolean a(cA ca)
    {
        return ca.tg;
    }

    public void cA()
    {
        he.xO.postDelayed(mp, 250L);
    }

    public void cancel()
    {
        tg = true;
        he.xO.removeCallbacks(mp);
    }

    public _cls1.ti(ea ea1)
    {
        tg = false;
        mp = new Runnable(ea1) {

            private final WeakReference th;
            final ea ti;
            final ea.a tj;

            public void run()
            {
                ea ea2 = (ea)th.get();
                if (!ea.a.a(tj) && ea2 != null)
                {
                    ea2.cz();
                    tj.cA();
                }
            }

            
            {
                tj = ea.a.this;
                ti = ea1;
                super();
                th = new WeakReference(ti);
            }
        };
    }
}
