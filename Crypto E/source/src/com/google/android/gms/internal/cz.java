// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            cw, hg, ay, cv, 
//            de, hf, dd, cy, 
//            he, da, av

public final class cz
    implements da.a
{

    private final dd lt;
    private final Context mContext;
    private final Object mL = new Object();
    private final hg mP;
    private final av mq;
    private final String rg;
    private final long rh;
    private final cv ri;
    private final ay rj;
    private de rk;
    private int rl;

    public cz(Context context, String s, dd dd1, cw cw1, cv cv1, av av, ay ay1, 
            hg hg1)
    {
        rl = -2;
        mContext = context;
        lt = dd1;
        ri = cv1;
        long l;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(s))
        {
            rg = bT();
        } else
        {
            rg = s;
        }
        if (cw1.qW != -1L)
        {
            l = cw1.qW;
        } else
        {
            l = 10000L;
        }
        rh = l;
        mq = av;
        rj = ay1;
        mP = hg1;
    }

    static de a(cz cz1, de de1)
    {
        cz1.rk = de1;
        return de1;
    }

    static Object a(cz cz1)
    {
        return cz1.mL;
    }

    private void a(long l, long l1, long l2, long l3)
    {
        do
        {
            if (rl != -2)
            {
                return;
            }
            b(l, l1, l2, l3);
        } while (true);
    }

    private void a(cy cy1)
    {
        if (mP.xR >= 0x3e8fa0)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (rj.oA)
        {
            rk.a(e.n(mContext), mq, ri.qU, cy1);
            return;
        }
        try
        {
            rk.a(e.n(mContext), rj, mq, ri.qU, cy1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not request ad from mediation adapter.", remoteexception);
        }
        k(5);
        return;
        if (rj.oA)
        {
            rk.a(e.n(mContext), mq, ri.qU, ri.qO, cy1);
            return;
        }
        rk.a(e.n(mContext), rj, mq, ri.qU, ri.qO, cy1);
        return;
    }

    static void a(cz cz1, cy cy1)
    {
        cz1.a(cy1);
    }

    static int b(cz cz1)
    {
        return cz1.rl;
    }

    private void b(long l, long l1, long l2, long l3)
    {
        long l4 = SystemClock.elapsedRealtime();
        long l5 = l1 - (l4 - l);
        long l6 = l3 - (l4 - l2);
        if (l5 <= 0L || l6 <= 0L)
        {
            hf.V("Timed out waiting for adapter.");
            rl = 3;
            return;
        }
        try
        {
            mL.wait(Math.min(l5, l6));
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            rl = -1;
        }
    }

    private String bT()
    {
        if (!TextUtils.isEmpty(ri.qS))
        {
            if (lt.A(ri.qS))
            {
                return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
            } else
            {
                return "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        }
        break MISSING_BLOCK_LABEL_44;
        RemoteException remoteexception;
        remoteexception;
        hf.X("Fail to determine the custom event's version, assuming the old one.");
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private de bU()
    {
        hf.V((new StringBuilder()).append("Instantiating mediation adapter: ").append(rg).toString());
        de de1;
        try
        {
            de1 = lt.z(rg);
        }
        catch (RemoteException remoteexception)
        {
            hf.a((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(rg).toString(), remoteexception);
            return null;
        }
        return de1;
    }

    static de c(cz cz1)
    {
        return cz1.bU();
    }

    static de d(cz cz1)
    {
        return cz1.rk;
    }

    public da b(long l, long l1)
    {
        da da1;
        synchronized (mL)
        {
            long l2 = SystemClock.elapsedRealtime();
            cy cy1 = new cy();
            he.xO.post(new Runnable(cy1) {

                final cy rm;
                final cz rn;

                public void run()
                {
label0:
                    {
                        synchronized (cz.a(rn))
                        {
                            if (cz.b(rn) == -2)
                            {
                                break label0;
                            }
                        }
                        return;
                    }
                    cz.a(rn, cz.c(rn));
                    if (cz.d(rn) != null)
                    {
                        break MISSING_BLOCK_LABEL_66;
                    }
                    rn.k(4);
                    obj1;
                    JVM INSTR monitorexit ;
                    return;
                    exception1;
                    obj1;
                    JVM INSTR monitorexit ;
                    throw exception1;
                    rm.a(rn);
                    cz.a(rn, rm);
                    obj1;
                    JVM INSTR monitorexit ;
                }

            
            {
                rn = cz.this;
                rm = cy1;
                super();
            }
            });
            a(l2, rh, l, l1);
            da1 = new da(ri, rk, rg, cy1, rl);
        }
        return da1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void cancel()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (rk != null)
        {
            rk.destroy();
        }
_L1:
        rl = -1;
        mL.notify();
        return;
        RemoteException remoteexception;
        remoteexception;
        hf.d("Could not destroy mediation adapter.", remoteexception);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void k(int i)
    {
        synchronized (mL)
        {
            rl = i;
            mL.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
