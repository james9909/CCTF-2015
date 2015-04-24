// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            gu, el, er, he, 
//            hf, ep, es, eu, 
//            fb, eq

public class em extends gu
    implements ServiceConnection
{

    private Context mContext;
    private final Object mL = new Object();
    private List tA;
    private eu tB;
    private boolean tw;
    private fb tx;
    private el ty;
    private er tz;

    public em(Context context, fb fb, eu eu)
    {
        tw = false;
        tA = null;
        mContext = context;
        tx = fb;
        tB = eu;
        ty = new el(context);
        tz = er.k(mContext);
        tA = tz.d(10L);
    }

    static eu a(em em1)
    {
        return em1.tB;
    }

    private void a(ep ep1, String s, String s1)
    {
        Intent intent = new Intent();
        intent.putExtra("RESPONSE_CODE", 0);
        intent.putExtra("INAPP_PURCHASE_DATA", s);
        intent.putExtra("INAPP_DATA_SIGNATURE", s1);
        he.xO.post(new Runnable(ep1, intent) {

            final ep tC;
            final Intent tD;
            final em tE;

            public void run()
            {
                if (em.a(tE).a(tC.tN, -1, tD))
                {
                    em.c(tE).a(new eq(em.b(tE), tC.tO, true, -1, tD, tC));
                    return;
                }
                try
                {
                    em.c(tE).a(new eq(em.b(tE), tC.tO, false, -1, tD, tC));
                    return;
                }
                catch (RemoteException remoteexception)
                {
                    hf.X("Fail to verify and dispatch pending transaction");
                }
                return;
            }

            
            {
                tE = em.this;
                tC = ep1;
                tD = intent;
                super();
            }
        });
    }

    static Context b(em em1)
    {
        return em1.mContext;
    }

    private void b(long l)
    {
        do
        {
            if (!c(l))
            {
                hf.X("Timeout waiting for pending transaction to be processed.");
            }
        } while (!tw);
    }

    static fb c(em em1)
    {
        return em1.tx;
    }

    private boolean c(long l)
    {
        long l1 = 60000L - (SystemClock.elapsedRealtime() - l);
        if (l1 <= 0L)
        {
            return false;
        }
        try
        {
            mL.wait(l1);
        }
        catch (InterruptedException interruptedexception)
        {
            hf.X("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    private void cH()
    {
        if (!tA.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap;
        String s;
        hashmap = new HashMap();
        ep ep2;
        for (Iterator iterator = tA.iterator(); iterator.hasNext(); hashmap.put(ep2.tO, ep2))
        {
            ep2 = (ep)iterator.next();
        }

        s = null;
_L7:
        Bundle bundle = ty.d(mContext.getPackageName(), s);
          goto _L3
_L5:
        Iterator iterator1 = hashmap.keySet().iterator();
        while (iterator1.hasNext()) 
        {
            String s2 = (String)iterator1.next();
            tz.a((ep)hashmap.get(s2));
        }
          goto _L1
_L3:
        if (bundle == null || es.f(bundle) != 0) goto _L5; else goto _L4
_L4:
        String s1;
        ArrayList arraylist = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList arraylist1 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList arraylist2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        s1 = bundle.getString("INAPP_CONTINUATION_TOKEN");
        for (int i = 0; i < arraylist.size(); i++)
        {
            if (!hashmap.containsKey(arraylist.get(i)))
            {
                continue;
            }
            String s3 = (String)arraylist.get(i);
            String s4 = (String)arraylist1.get(i);
            String s5 = (String)arraylist2.get(i);
            ep ep1 = (ep)hashmap.get(s3);
            String s6 = es.H(s4);
            if (ep1.tN.equals(s6))
            {
                a(ep1, s4, s5);
                hashmap.remove(s3);
            }
        }

        if (s1 == null || hashmap.isEmpty()) goto _L5; else goto _L6
_L6:
        s = s1;
          goto _L7
    }

    public void cG()
    {
        synchronized (mL)
        {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            mContext.bindService(intent, this, 1);
            b(SystemClock.elapsedRealtime());
            mContext.unbindService(this);
            ty.destroy();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        synchronized (mL)
        {
            ty.t(ibinder);
            cH();
            tw = true;
            mL.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        hf.V("In-app billing service disconnected.");
        ty.destroy();
    }

    public void onStop()
    {
        synchronized (mL)
        {
            mContext.unbindService(this);
            ty.destroy();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
