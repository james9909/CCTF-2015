// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            gz, co

public class bq
    implements co.b
{

    private final Object mL = new Object();
    private final gz pt = new gz();
    private final List pu = new ArrayList();
    private boolean pv;
    private boolean pw;

    public bq()
    {
        pv = false;
        pw = false;
    }

    public void a(Runnable runnable)
    {
label0:
        {
            synchronized (mL)
            {
                if (pv)
                {
                    break label0;
                }
                pu.add(runnable);
            }
            return;
        }
        obj;
        JVM INSTR monitorexit ;
        runnable.run();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Future bG()
    {
        return pt;
    }

    public void e(Bundle bundle)
    {
label0:
        {
            synchronized (mL)
            {
                if (!pv)
                {
                    break label0;
                }
            }
            return;
        }
        pv = true;
        pt.b(bundle);
        obj;
        JVM INSTR monitorexit ;
        for (Iterator iterator = pu.iterator(); iterator.hasNext(); ((Runnable)iterator.next()).run()) { }
        break MISSING_BLOCK_LABEL_76;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        pu.clear();
        return;
    }

    public void j(Context context)
    {
label0:
        {
            synchronized (mL)
            {
                if (!pw)
                {
                    break label0;
                }
            }
            return;
        }
        co.a(context, this);
        pw = true;
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
