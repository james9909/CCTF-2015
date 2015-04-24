// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.ConfigApi;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.j;
import com.google.android.gms.fitness.result.DataTypeResult;

// Referenced classes of package com.google.android.gms.internal:
//            mn, ms

public class nb
    implements ConfigApi
{
    static class a extends mr.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(DataTypeResult datatyperesult)
        {
            Fn.e(datatyperesult);
        }

        private a(com.google.android.gms.common.api.BaseImplementation.b b)
        {
            Fn = b;
        }

    }


    public nb()
    {
    }

    public PendingResult createCustomDataType(GoogleApiClient googleapiclient, DataTypeCreateRequest datatypecreaterequest)
    {
        return googleapiclient.b(new mn.a(googleapiclient, datatypecreaterequest) {

            final DataTypeCreateRequest acq;
            final nb acr;

            protected DataTypeResult G(Status status)
            {
                return DataTypeResult.O(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                a a1 = new a(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acq, a1, s);
            }

            protected Result b(Status status)
            {
                return G(status);
            }

            
            {
                acr = nb.this;
                acq = datatypecreaterequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult disableFit(GoogleApiClient googleapiclient)
    {
        return googleapiclient.b(new mn.c(googleapiclient) {

            final nb acr;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(b, s);
            }

            
            {
                acr = nb.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult readDataType(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.a(new mn.a(googleapiclient, new j(s)) {

            final nb acr;
            final j acs;

            protected DataTypeResult G(Status status)
            {
                return DataTypeResult.O(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                a a1 = new a(this);
                String s1 = mn1.getContext().getPackageName();
                mn1.lV().a(acs, a1, s1);
            }

            protected Result b(Status status)
            {
                return G(status);
            }

            
            {
                acr = nb.this;
                acs = j1;
                super(googleapiclient);
            }
        });
    }
}
