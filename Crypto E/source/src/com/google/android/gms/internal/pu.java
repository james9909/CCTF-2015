// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;

public final class pu
    implements Moments
{
    static abstract class a extends com.google.android.gms.plus.Plus.a
    {

        public com.google.android.gms.plus.Moments.LoadMomentsResult aL(Status status)
        {
            return new com.google.android.gms.plus.Moments.LoadMomentsResult(this, status) {

                final Status Ff;
                final a avs;

                public MomentBuffer getMomentBuffer()
                {
                    return null;
                }

                public String getNextPageToken()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return Ff;
                }

                public String getUpdated()
                {
                    return null;
                }

                public void release()
                {
                }

            
            {
                avs = a1;
                Ff = status;
                super();
            }
            };
        }

        public Result b(Status status)
        {
            return aL(status);
        }

        private a(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    static abstract class b extends com.google.android.gms.plus.Plus.a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        private b(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    static abstract class c extends com.google.android.gms.plus.Plus.a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        private c(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public pu()
    {
    }

    public PendingResult load(GoogleApiClient googleapiclient)
    {
        return googleapiclient.a(new a(googleapiclient) {

            final pu avl;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.k(this);
            }

            
            {
                avl = pu.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult load(GoogleApiClient googleapiclient, int i, String s, Uri uri, String s1, String s2)
    {
        return googleapiclient.a(new a(googleapiclient, i, s, uri, s1, s2) {

            final int ahV;
            final pu avl;
            final String avm;
            final Uri avn;
            final String avo;
            final String avp;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.a(this, ahV, avm, avn, avo, avp);
            }

            
            {
                avl = pu.this;
                ahV = i;
                avm = s;
                avn = uri;
                avo = s1;
                avp = s2;
                super(googleapiclient);
            }
        });
    }

    public PendingResult remove(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.b(new b(googleapiclient, s) {

            final pu avl;
            final String avr;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.removeMoment(avr);
                b(Status.RQ);
            }

            
            {
                avl = pu.this;
                avr = s;
                super(googleapiclient);
            }
        });
    }

    public PendingResult write(GoogleApiClient googleapiclient, Moment moment)
    {
        return googleapiclient.b(new c(googleapiclient, moment) {

            final pu avl;
            final Moment avq;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.a(this, avq);
            }

            
            {
                avl = pu.this;
                avq = moment;
                super(googleapiclient);
            }
        });
    }
}
