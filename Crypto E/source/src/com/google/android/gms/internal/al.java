// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ak, hf

public class al
{

    private final Object mL = new Object();
    private int nJ;
    private List nK;

    public al()
    {
        nK = new LinkedList();
    }

    public boolean a(ak ak1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (nK.contains(ak1))
        {
            return true;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean b(ak ak1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = nK.iterator();
_L2:
        ak ak2;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_76;
            }
            ak2 = (ak)iterator.next();
        } while (ak1 == ak2);
        if (!ak2.bb().equals(ak1.bb())) goto _L2; else goto _L1
_L1:
        nK.remove(ak1);
        obj;
        JVM INSTR monitorexit ;
        return true;
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ak bh()
    {
        ak ak1;
label0:
        {
            ak1 = null;
            synchronized (mL)
            {
                if (nK.size() != 0)
                {
                    break label0;
                }
                hf.T("Queue empty");
            }
            return null;
        }
        if (nK.size() < 2) goto _L2; else goto _L1
_L1:
        int i = 0x80000000;
        Iterator iterator = nK.iterator();
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        ak ak2;
        int j;
        ak2 = (ak)iterator.next();
        j = ak2.getScore();
        int k;
        ak ak3;
        ak ak4;
        if (j > i)
        {
            ak3 = ak2;
            k = j;
        } else
        {
            k = i;
            ak3 = ak1;
        }
        break MISSING_BLOCK_LABEL_160;
_L4:
        nK.remove(ak1);
        obj;
        JVM INSTR monitorexit ;
        return ak1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        ak4 = (ak)nK.get(0);
        ak4.bc();
        obj;
        JVM INSTR monitorexit ;
        return ak4;
        i = k;
        ak1 = ak3;
          goto _L5
    }

    public void c(ak ak1)
    {
        synchronized (mL)
        {
            if (nK.size() >= 10)
            {
                hf.T((new StringBuilder()).append("Queue is full, current size = ").append(nK.size()).toString());
                nK.remove(0);
            }
            int i = nJ;
            nJ = i + 1;
            ak1.c(i);
            nK.add(ak1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
