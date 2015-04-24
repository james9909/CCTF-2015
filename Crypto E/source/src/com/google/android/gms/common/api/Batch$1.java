// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;


// Referenced classes of package com.google.android.gms.common.api:
//            Batch, Status, BatchResult

class Ra
    implements esult.a
{

    final Batch Ra;

    public void w(Status status)
    {
label0:
        {
            synchronized (Batch.a(Ra))
            {
                if (!Ra.isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!status.isCanceled()) goto _L2; else goto _L1
_L1:
        Batch.a(Ra, true);
_L8:
        Batch.b(Ra);
        if (Batch.c(Ra) != 0) goto _L4; else goto _L3
_L3:
        if (!Batch.d(Ra)) goto _L6; else goto _L5
_L5:
        Batch.e(Ra);
_L4:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (status.isSuccess()) goto _L8; else goto _L7
_L7:
        Batch.b(Ra, true);
          goto _L8
_L6:
        Status status1;
        if (!Batch.f(Ra))
        {
            break MISSING_BLOCK_LABEL_148;
        }
        status1 = new Status(13);
_L9:
        Ra.b(new BatchResult(status1, Batch.g(Ra)));
          goto _L4
        status1 = Status.RQ;
          goto _L9
    }

    ult(Batch batch)
    {
        Ra = batch;
        super();
    }
}
