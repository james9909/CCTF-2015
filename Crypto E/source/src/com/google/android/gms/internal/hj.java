// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package com.google.android.gms.internal:
//            hi

public class hj
    implements hi
{
    class a
    {

        public final hi.b xV;
        public final hi.a xW;
        final hj xX;

        public a(hi.b b, hi.a a1)
        {
            xX = hj.this;
            super();
            xV = b;
            xW = a1;
        }
    }


    private final Object mL = new Object();
    protected int qC;
    protected final BlockingQueue xT = new LinkedBlockingQueue();
    protected Object xU;

    public hj()
    {
        qC = 0;
    }

    public void a(hi.b b, hi.a a1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (qC != 1) goto _L2; else goto _L1
_L1:
        b.a(xU);
_L5:
        return;
_L2:
        if (qC != -1) goto _L4; else goto _L3
_L3:
        a1.run();
          goto _L5
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        if (qC != 0) goto _L5; else goto _L6
_L6:
        xT.add(new a(b, a1));
          goto _L5
    }

    public void c(Object obj)
    {
        Object obj1 = mL;
        obj1;
        JVM INSTR monitorenter ;
        if (qC != 0)
        {
            throw new UnsupportedOperationException();
        }
        break MISSING_BLOCK_LABEL_27;
        Exception exception;
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
        xU = obj;
        qC = 1;
        for (Iterator iterator = xT.iterator(); iterator.hasNext(); ((a)iterator.next()).xV.a(obj)) { }
        obj1;
        JVM INSTR monitorexit ;
    }

    public int getStatus()
    {
        return qC;
    }

    public void reject()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (qC != 0)
        {
            throw new UnsupportedOperationException();
        }
        break MISSING_BLOCK_LABEL_27;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        qC = -1;
        for (Iterator iterator = xT.iterator(); iterator.hasNext(); ((a)iterator.next()).xW.run()) { }
        obj;
        JVM INSTR monitorexit ;
    }
}
