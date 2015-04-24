// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.s;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.internal:
//            pn, pl, pj, rq, 
//            po, pk

public class pq extends h
{

    private final String DV;
    private final pl auA = new pl();
    private boolean auB;
    private final pn auz;
    private final Object mL = new Object();

    public pq(Context context, pn pn1)
    {
        super(context, pn1, pn1, new String[0]);
        DV = context.getPackageName();
        auz = (pn)s.l(pn1);
        auz.a(this);
        auB = true;
    }

    private void c(po po1, pk pk)
    {
        auA.a(po1, pk);
    }

    private void d(po po1, pk pk)
    {
        try
        {
            qz();
            ((pj)jG()).a(DV, po1, pk);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
            c(po1, pk);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
        }
        c(po1, pk);
    }

    private void qz()
    {
        po po1;
        ArrayList arraylist;
        pl.a a1;
        boolean flag;
        RemoteException remoteexception;
        Iterator iterator;
        if (!auB)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.google.android.gms.common.internal.b.N(flag);
        if (auA.isEmpty()) goto _L2; else goto _L1
_L1:
        po1 = null;
        arraylist = new ArrayList();
        iterator = auA.qx().iterator();
_L7:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        a1 = (pl.a)iterator.next();
        if (a1.auq == null) goto _L6; else goto _L5
_L5:
        ((pj)jG()).a(DV, a1.auo, rq.f(a1.auq));
          goto _L7
_L2:
        return;
_L6:
        if (!a1.auo.equals(po1))
        {
            break MISSING_BLOCK_LABEL_151;
        }
        arraylist.add(a1.aup);
        po po3;
        po3 = po1;
        break; /* Loop/switch isn't completed */
        po po2;
        if (!arraylist.isEmpty())
        {
            ((pj)jG()).a(DV, po1, arraylist);
            arraylist.clear();
        }
        po2 = a1.auo;
        arraylist.add(a1.aup);
        po3 = po2;
        break; /* Loop/switch isn't completed */
_L4:
        try
        {
            if (!arraylist.isEmpty())
            {
                ((pj)jG()).a(DV, po1, arraylist);
            }
            auA.clear();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (RemoteException remoteexception)
        {
            Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
        }
        if (true) goto _L2; else goto _L8
_L8:
        po1 = po3;
          goto _L7
    }

    void W(boolean flag)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        boolean flag1;
        flag1 = auB;
        auB = flag;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        if (!auB)
        {
            qz();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        Bundle bundle = new Bundle();
        p1.f(e, 0x640578, getContext().getPackageName(), bundle);
    }

    public void b(po po1, pk pk)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (!auB)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        c(po1, pk);
_L2:
        return;
        d(po1, pk);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected pj cr(IBinder ibinder)
    {
        return pj.a.cq(ibinder);
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.playlog.internal.IPlayLogService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.playlog.service.START";
    }

    protected IInterface l(IBinder ibinder)
    {
        return cr(ibinder);
    }

    public void start()
    {
label0:
        {
            synchronized (mL)
            {
                if (!isConnecting() && !isConnected())
                {
                    break label0;
                }
            }
            return;
        }
        auz.V(true);
        connect();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void stop()
    {
        synchronized (mL)
        {
            auz.V(false);
            disconnect();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
