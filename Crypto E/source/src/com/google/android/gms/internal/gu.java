// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            gw

public abstract class gu
{

    private final Runnable mp = new Runnable() {

        final gu xs;

        public final void run()
        {
            gu.a(xs, Thread.currentThread());
            xs.cG();
        }

            
            {
                xs = gu.this;
                super();
            }
    };
    private volatile Thread xr;

    public gu()
    {
    }

    static Thread a(gu gu1, Thread thread)
    {
        gu1.xr = thread;
        return thread;
    }

    public abstract void cG();

    public final void cancel()
    {
        onStop();
        if (xr != null)
        {
            xr.interrupt();
        }
    }

    public abstract void onStop();

    public final void start()
    {
        gw.b(mp);
    }
}
