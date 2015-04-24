// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.Fitness;
import com.google.android.gms.fitness.SensorsApi;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.OnDataPointListener;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.fitness.request.q;
import com.google.android.gms.fitness.result.DataSourcesResult;

// Referenced classes of package com.google.android.gms.internal:
//            mx, mn, ms

public class nf
    implements SensorsApi
{
    static abstract class a extends com.google.android.gms.common.api.BaseImplementation.a
    {

        public a(GoogleApiClient googleapiclient)
        {
            super(Fitness.Fd, googleapiclient);
        }
    }

    static interface b
    {

        public abstract void lX();
    }

    static class c extends mq.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(DataSourcesResult datasourcesresult)
        {
            Fn.e(datasourcesresult);
        }

        private c(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = b1;
        }

    }

    static class d extends mw.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;
        private final b acJ;

        public void l(Status status)
        {
            if (acJ != null && status.isSuccess())
            {
                acJ.lX();
            }
            Fn.e(status);
        }

        private d(com.google.android.gms.common.api.BaseImplementation.b b1, b b2)
        {
            Fn = b1;
            acJ = b2;
        }

    }


    public nf()
    {
    }

    private PendingResult a(GoogleApiClient googleapiclient, o o1)
    {
        return googleapiclient.a(new a(googleapiclient, o1) {

            final nf acE;
            final o acF;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acF, b1, s);
            }

            protected Result b(Status status)
            {
                return e(status);
            }

            protected Status e(Status status)
            {
                return status;
            }

            
            {
                acE = nf.this;
                acF = o1;
                super(googleapiclient);
            }
        });
    }

    private PendingResult a(GoogleApiClient googleapiclient, q q1, b b1)
    {
        return googleapiclient.b(new a(googleapiclient, b1, q1) {

            final nf acE;
            final b acH;
            final q acI;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                d d1 = new d(this, acH);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acI, d1, s);
            }

            protected Result b(Status status)
            {
                return e(status);
            }

            protected Status e(Status status)
            {
                return status;
            }

            
            {
                acE = nf.this;
                acH = b1;
                acI = q1;
                super(googleapiclient);
            }
        });
    }

    public PendingResult add(GoogleApiClient googleapiclient, SensorRequest sensorrequest, PendingIntent pendingintent)
    {
        return a(googleapiclient, new o(sensorrequest, null, pendingintent));
    }

    public PendingResult add(GoogleApiClient googleapiclient, SensorRequest sensorrequest, OnDataPointListener ondatapointlistener)
    {
        return a(googleapiclient, new o(sensorrequest, com.google.android.gms.fitness.data.l.a.lP().a(ondatapointlistener), null));
    }

    public PendingResult findDataSources(GoogleApiClient googleapiclient, DataSourcesRequest datasourcesrequest)
    {
        return googleapiclient.a(new a(googleapiclient, datasourcesrequest) {

            final DataSourcesRequest acD;
            final nf acE;

            protected DataSourcesResult J(Status status)
            {
                return DataSourcesResult.N(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                c c1 = new c(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acD, c1, s);
            }

            protected Result b(Status status)
            {
                return J(status);
            }

            
            {
                acE = nf.this;
                acD = datasourcesrequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult remove(GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        return a(googleapiclient, new q(null, pendingintent), null);
    }

    public PendingResult remove(GoogleApiClient googleapiclient, OnDataPointListener ondatapointlistener)
    {
        com.google.android.gms.fitness.data.l l = com.google.android.gms.fitness.data.l.a.lP().b(ondatapointlistener);
        if (l == null)
        {
            return new mx(Status.RQ);
        } else
        {
            return a(googleapiclient, new q(l, null), new b(ondatapointlistener) {

                final nf acE;
                final OnDataPointListener acG;

                public void lX()
                {
                    com.google.android.gms.fitness.data.l.a.lP().c(acG);
                }

            
            {
                acE = nf.this;
                acG = ondatapointlistener;
                super();
            }
            });
        }
    }
}
