// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

public final class pv
    implements People
{
    static abstract class a extends com.google.android.gms.plus.Plus.a
    {

        public com.google.android.gms.plus.People.LoadPeopleResult aM(Status status)
        {
            return new com.google.android.gms.plus.People.LoadPeopleResult(this, status) {

                final Status Ff;
                final a avx;

                public String getNextPageToken()
                {
                    return null;
                }

                public PersonBuffer getPersonBuffer()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return Ff;
                }

                public void release()
                {
                }

            
            {
                avx = a1;
                Ff = status;
                super();
            }
            };
        }

        public Result b(Status status)
        {
            return aM(status);
        }

        private a(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public pv()
    {
    }

    public Person getCurrentPerson(GoogleApiClient googleapiclient)
    {
        return Plus.a(googleapiclient, Plus.Fd).getCurrentPerson();
    }

    public PendingResult load(GoogleApiClient googleapiclient, Collection collection)
    {
        return googleapiclient.a(new a(googleapiclient, collection) {

            final pv avu;
            final Collection avv;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.d(this, avv);
            }

            
            {
                avu = pv.this;
                avv = collection;
                super(googleapiclient);
            }
        });
    }

    public transient PendingResult load(GoogleApiClient googleapiclient, String as[])
    {
        return googleapiclient.a(new a(googleapiclient, as) {

            final pv avu;
            final String avw[];

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.d(this, avw);
            }

            
            {
                avu = pv.this;
                avw = as;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadConnected(GoogleApiClient googleapiclient)
    {
        return googleapiclient.a(new a(googleapiclient) {

            final pv avu;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                e1.l(this);
            }

            
            {
                avu = pv.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadVisible(GoogleApiClient googleapiclient, int i, String s)
    {
        return googleapiclient.a(new a(googleapiclient, i, s) {

            final String avm;
            final int avt;
            final pv avu;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                a(e1.a(this, avt, avm));
            }

            
            {
                avu = pv.this;
                avt = i;
                avm = s;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadVisible(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.a(new a(googleapiclient, s) {

            final String avm;
            final pv avu;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((e)a1);
            }

            protected void a(e e1)
            {
                a(e1.q(this, avm));
            }

            
            {
                avu = pv.this;
                avm = s;
                super(googleapiclient);
            }
        });
    }
}
