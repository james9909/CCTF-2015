// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.HistoryApi;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.result.DataReadResult;

// Referenced classes of package com.google.android.gms.internal:
//            mn, ms

public class nc
    implements HistoryApi
{
    static class a extends mp.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;
        private int acx;
        private DataReadResult acy;

        public void a(DataReadResult datareadresult)
        {
            this;
            JVM INSTR monitorenter ;
            Log.v("Fitness", "Received batch result");
            if (acy != null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            acy = datareadresult;
_L2:
            acx = 1 + acx;
            if (acx == acy.mA())
            {
                Fn.e(acy);
            }
            this;
            JVM INSTR monitorexit ;
            return;
            acy.b(datareadresult);
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private a(com.google.android.gms.common.api.BaseImplementation.b b)
        {
            acx = 0;
            acy = null;
            Fn = b;
        }

    }


    public nc()
    {
    }

    public PendingResult deleteData(GoogleApiClient googleapiclient, DataDeleteRequest datadeleterequest)
    {
        return googleapiclient.a(new mn.c(googleapiclient, datadeleterequest) {

            final nc acu;
            final DataDeleteRequest acv;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acv, b, s);
            }

            
            {
                acu = nc.this;
                acv = datadeleterequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult insertData(GoogleApiClient googleapiclient, DataSet dataset)
    {
        return googleapiclient.a(new mn.c(googleapiclient, dataset) {

            final DataSet act;
            final nc acu;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a((new com.google.android.gms.fitness.request.e.a()).b(act).md(), b, s);
            }

            
            {
                acu = nc.this;
                act = dataset;
                super(googleapiclient);
            }
        });
    }

    public PendingResult readData(GoogleApiClient googleapiclient, DataReadRequest datareadrequest)
    {
        return googleapiclient.a(new mn.a(googleapiclient, datareadrequest) {

            final nc acu;
            final DataReadRequest acw;

            protected DataReadResult H(Status status)
            {
                return DataReadResult.a(status, acw);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                a a1 = new a(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acw, a1, s);
            }

            protected Result b(Status status)
            {
                return H(status);
            }

            
            {
                acu = nc.this;
                acw = datareadrequest;
                super(googleapiclient);
            }
        });
    }
}
