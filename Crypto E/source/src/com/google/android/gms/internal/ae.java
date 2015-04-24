// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.WeakHashMap;

// Referenced classes of package com.google.android.gms.internal:
//            ag, gn, hk, af, 
//            cr, hg, ay

public final class ae
    implements ag
{

    private final Object mL = new Object();
    private final WeakHashMap mM = new WeakHashMap();
    private final ArrayList mN = new ArrayList();
    private final Context mO;
    private final hg mP;
    private final cr mQ;

    public ae(Context context, hg hg, cr cr1)
    {
        mO = context.getApplicationContext();
        mP = hg;
        mQ = cr1;
    }

    public af a(ay ay, gn gn1)
    {
        return a(ay, gn1, ((View) (gn1.sR.getWebView())));
    }

    public af a(ay ay, gn gn1, View view)
    {
label0:
        {
            af af2;
            synchronized (mL)
            {
                if (!c(gn1))
                {
                    break label0;
                }
                af2 = (af)mM.get(gn1);
            }
            return af2;
        }
        af af1;
        af1 = new af(ay, gn1, mP, view, mQ.bS());
        af1.a(this);
        mM.put(gn1, af1);
        mN.add(af1);
        obj;
        JVM INSTR monitorexit ;
        return af1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(af af1)
    {
        synchronized (mL)
        {
            if (!af1.aU())
            {
                mN.remove(af1);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean c(gn gn1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        af af1 = (af)mM.get(gn1);
        if (af1 == null) goto _L2; else goto _L1
_L1:
        if (!af1.aU()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void d(gn gn1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        af af1 = (af)mM.get(gn1);
        if (af1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        af1.aS();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void e(gn gn1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        af af1 = (af)mM.get(gn1);
        if (af1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        af1.stop();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void f(gn gn1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        af af1 = (af)mM.get(gn1);
        if (af1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        af1.pause();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void g(gn gn1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        af af1 = (af)mM.get(gn1);
        if (af1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        af1.resume();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
