// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.api:
//            PendingResult, BatchResult, Status, Result, 
//            GoogleApiClient, BatchResultToken

public final class Batch extends BaseImplementation.AbstractPendingResult
{
    public static final class Builder
    {

        private List EL;
        private Looper Hy;

        public BatchResultToken add(PendingResult pendingresult)
        {
            BatchResultToken batchresulttoken = new BatchResultToken(EL.size());
            EL.add(pendingresult);
            return batchresulttoken;
        }

        public Batch build()
        {
            return new Batch(EL, Hy);
        }

        public Builder(GoogleApiClient googleapiclient)
        {
            EL = new ArrayList();
            Hy = googleapiclient.getLooper();
        }
    }


    private int QW;
    private boolean QX;
    private boolean QY;
    private final PendingResult QZ[];
    private final Object mL;

    private Batch(List list, Looper looper)
    {
        super(new BaseImplementation.CallbackHandler(looper));
        mL = new Object();
        QW = list.size();
        QZ = new PendingResult[QW];
        for (int i = 0; i < list.size(); i++)
        {
            PendingResult pendingresult = (PendingResult)list.get(i);
            QZ[i] = pendingresult;
            pendingresult.a(new PendingResult.a() {

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

            
            {
                Ra = Batch.this;
                super();
            }
            });
        }

    }


    static Object a(Batch batch)
    {
        return batch.mL;
    }

    static boolean a(Batch batch, boolean flag)
    {
        batch.QY = flag;
        return flag;
    }

    static int b(Batch batch)
    {
        int i = batch.QW;
        batch.QW = i - 1;
        return i;
    }

    static boolean b(Batch batch, boolean flag)
    {
        batch.QX = flag;
        return flag;
    }

    static int c(Batch batch)
    {
        return batch.QW;
    }

    static boolean d(Batch batch)
    {
        return batch.QY;
    }

    static void e(Batch batch)
    {
        batch.BaseImplementation.AbstractPendingResult.cancel();
    }

    static boolean f(Batch batch)
    {
        return batch.QX;
    }

    static PendingResult[] g(Batch batch)
    {
        return batch.QZ;
    }

    public Result b(Status status)
    {
        return createFailedResult(status);
    }

    public void cancel()
    {
        super.cancel();
        PendingResult apendingresult[] = QZ;
        int i = apendingresult.length;
        for (int j = 0; j < i; j++)
        {
            apendingresult[j].cancel();
        }

    }

    public BatchResult createFailedResult(Status status)
    {
        return new BatchResult(status, QZ);
    }
}
