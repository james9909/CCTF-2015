// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.RecordingApi;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.request.af;
import com.google.android.gms.fitness.request.aj;
import com.google.android.gms.fitness.request.m;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;

// Referenced classes of package com.google.android.gms.internal:
//            mn, ms

public class ne
    implements RecordingApi
{
    static class a extends mt.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(ListSubscriptionsResult listsubscriptionsresult)
        {
            Fn.e(listsubscriptionsresult);
        }

        private a(com.google.android.gms.common.api.BaseImplementation.b b)
        {
            Fn = b;
        }

    }


    public ne()
    {
    }

    private PendingResult a(GoogleApiClient googleapiclient, m m)
    {
        return googleapiclient.a(new mn.a(googleapiclient, m) {

            final ne acA;
            final m acz;

            protected ListSubscriptionsResult I(Status status)
            {
                return ListSubscriptionsResult.P(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                a a1 = new a(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acz, a1, s);
            }

            protected Result b(Status status)
            {
                return I(status);
            }

            
            {
                acA = ne.this;
                acz = m;
                super(googleapiclient);
            }
        });
    }

    public PendingResult a(GoogleApiClient googleapiclient, af af)
    {
        return googleapiclient.a(new mn.c(googleapiclient, af) {

            final ne acA;
            final af acB;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acB, b, s);
            }

            
            {
                acA = ne.this;
                acB = af;
                super(googleapiclient);
            }
        });
    }

    public PendingResult a(GoogleApiClient googleapiclient, aj aj)
    {
        return googleapiclient.b(new mn.c(googleapiclient, aj) {

            final ne acA;
            final aj acC;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acC, b, s);
            }

            
            {
                acA = ne.this;
                acC = aj;
                super(googleapiclient);
            }
        });
    }

    public PendingResult listSubscriptions(GoogleApiClient googleapiclient)
    {
        return a(googleapiclient, (new com.google.android.gms.fitness.request.m.a()).mj());
    }

    public PendingResult listSubscriptions(GoogleApiClient googleapiclient, DataType datatype)
    {
        return a(googleapiclient, (new com.google.android.gms.fitness.request.m.a()).c(datatype).mj());
    }

    public PendingResult subscribe(GoogleApiClient googleapiclient, DataSource datasource)
    {
        return a(googleapiclient, (new com.google.android.gms.fitness.request.af.a()).b((new com.google.android.gms.fitness.data.Subscription.a()).b(datasource).lT()).my());
    }

    public PendingResult subscribe(GoogleApiClient googleapiclient, DataType datatype)
    {
        return a(googleapiclient, (new com.google.android.gms.fitness.request.af.a()).b((new com.google.android.gms.fitness.data.Subscription.a()).b(datatype).lT()).my());
    }

    public PendingResult unsubscribe(GoogleApiClient googleapiclient, DataSource datasource)
    {
        return a(googleapiclient, (new com.google.android.gms.fitness.request.aj.a()).d(datasource).mz());
    }

    public PendingResult unsubscribe(GoogleApiClient googleapiclient, DataType datatype)
    {
        return a(googleapiclient, (new com.google.android.gms.fitness.request.aj.a()).d(datatype).mz());
    }

    public PendingResult unsubscribe(GoogleApiClient googleapiclient, Subscription subscription)
    {
        if (subscription.getDataType() == null)
        {
            return unsubscribe(googleapiclient, subscription.getDataSource());
        } else
        {
            return unsubscribe(googleapiclient, subscription.getDataType());
        }
    }
}
