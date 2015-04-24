// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;

public final class pr
    implements Account
{
    static abstract class a extends com.google.android.gms.plus.Plus.a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        private a(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public pr()
    {
    }

    private static e a(GoogleApiClient googleapiclient, com.google.android.gms.common.api.Api.c c)
    {
        boolean flag = true;
        boolean flag1;
        e e1;
        if (googleapiclient != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.b(flag1, "GoogleApiClient parameter is required.");
        s.a(googleapiclient.isConnected(), "GoogleApiClient must be connected.");
        e1 = (e)googleapiclient.a(c);
        if (e1 == null)
        {
            flag = false;
        }
        s.a(flag, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        return e1;
    }

    public void clearDefaultAccount(GoogleApiClient googleapiclient)
    {
        a(googleapiclient, Plus.Fd).clearDefaultAccount();
    }

    public String getAccountName(GoogleApiClient googleapiclient)
    {
        return a(googleapiclient, Plus.Fd).getAccountName();
    }

    public PendingResult revokeAccessAndDisconnect(GoogleApiClient googleapiclient)
    {
        return googleapiclient.b(new a(googleapiclient) {

            final pr avk;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.m(this);
            }

            
            {
                avk = pr.this;
                super(googleapiclient);
            }
        });
    }
}
