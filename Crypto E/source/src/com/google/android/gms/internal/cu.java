// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            hf, cw, cv, da, 
//            cz, fx, he, dd, 
//            de

public final class cu
{

    private final dd lt;
    private final Context mContext;
    private final Object mL = new Object();
    private final fx qI;
    private final cw qJ;
    private boolean qK;
    private cz qL;

    public cu(Context context, fx fx1, dd dd, cw cw1)
    {
        qK = false;
        mContext = context;
        qI = fx1;
        lt = dd;
        qJ = cw1;
    }

    public da a(long l, long l1)
    {
        Iterator iterator;
        hf.T("Starting mediation.");
        iterator = qJ.qV.iterator();
_L4:
        cv cv1;
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_247;
        }
        cv1 = (cv)iterator.next();
        hf.V((new StringBuilder()).append("Trying mediation network: ").append(cv1.qP).toString());
        iterator1 = cv1.qQ.iterator();
_L2:
        String s;
label0:
        {
            if (!iterator1.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            s = (String)iterator1.next();
            da da1;
            synchronized (mL)
            {
                if (!qK)
                {
                    break label0;
                }
                da1 = new da(-1);
            }
            return da1;
        }
        qL = new cz(mContext, s, lt, qJ, cv1, qI.uK, qI.lL, qI.lH);
        obj;
        JVM INSTR monitorexit ;
        da da2;
        da2 = qL.b(l, l1);
        if (da2.ro == 0)
        {
            hf.T("Adapter succeeded.");
            return da2;
        }
        break MISSING_BLOCK_LABEL_219;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (da2.rq != null)
        {
            he.xO.post(new Runnable(da2) {

                final da qM;
                final cu qN;

                public void run()
                {
                    try
                    {
                        qM.rq.destroy();
                        return;
                    }
                    catch (RemoteException remoteexception)
                    {
                        hf.d("Could not destroy mediation adapter.", remoteexception);
                    }
                }

            
            {
                qN = cu.this;
                qM = da1;
                super();
            }
            });
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        return new da(1);
    }

    public void cancel()
    {
        synchronized (mL)
        {
            qK = true;
            if (qL != null)
            {
                qL.cancel();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
