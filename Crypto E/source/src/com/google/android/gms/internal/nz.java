// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            od

public class nz
    implements GeofencingApi
{
    static abstract class a extends com.google.android.gms.location.LocationServices.a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        public a(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public nz()
    {
    }

    public PendingResult addGeofences(GoogleApiClient googleapiclient, GeofencingRequest geofencingrequest, PendingIntent pendingintent)
    {
        return googleapiclient.b(new a(googleapiclient, geofencingrequest, pendingintent) {

            final GeofencingRequest aoa;
            final PendingIntent aob;
            final nz aoc;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                com.google.android.gms.location.b.a a1 = new com.google.android.gms.location.b.a(this) {

                    final _cls1 aod;

                    public void a(int i, String as[])
                    {
                        aod.b(LocationStatusCodes.fJ(i));
                    }

            
            {
                aod = _pcls1;
                super();
            }
                };
                od1.a(aoa, aob, a1);
            }

            
            {
                aoc = nz.this;
                aoa = geofencingrequest;
                aob = pendingintent;
                super(googleapiclient);
            }
        });
    }

    public PendingResult addGeofences(GoogleApiClient googleapiclient, List list, PendingIntent pendingintent)
    {
        com.google.android.gms.location.GeofencingRequest.Builder builder = new com.google.android.gms.location.GeofencingRequest.Builder();
        builder.addGeofences(list);
        builder.setInitialTrigger(5);
        return addGeofences(googleapiclient, builder.build(), pendingintent);
    }

    public PendingResult removeGeofences(GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        return googleapiclient.b(new a(googleapiclient, pendingintent) {

            final PendingIntent aob;
            final nz aoc;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                com.google.android.gms.location.b.b b = new com.google.android.gms.location.b.b(this) {

                    final _cls2 aoe;

                    public void a(int i, PendingIntent pendingintent)
                    {
                        aoe.b(LocationStatusCodes.fJ(i));
                    }

                    public void b(int i, String as[])
                    {
                        Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
                    }

            
            {
                aoe = _pcls2;
                super();
            }
                };
                od1.a(aob, b);
            }

            
            {
                aoc = nz.this;
                aob = pendingintent;
                super(googleapiclient);
            }
        });
    }

    public PendingResult removeGeofences(GoogleApiClient googleapiclient, List list)
    {
        return googleapiclient.b(new a(googleapiclient, list) {

            final nz aoc;
            final List aof;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                com.google.android.gms.location.b.b b = new com.google.android.gms.location.b.b(this) {

                    final _cls3 aog;

                    public void a(int i, PendingIntent pendingintent)
                    {
                        Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
                    }

                    public void b(int i, String as[])
                    {
                        aog.b(LocationStatusCodes.fJ(i));
                    }

            
            {
                aog = _pcls3;
                super();
            }
                };
                od1.a(aof, b);
            }

            
            {
                aoc = nz.this;
                aof = list;
                super(googleapiclient);
            }
        });
    }
}
