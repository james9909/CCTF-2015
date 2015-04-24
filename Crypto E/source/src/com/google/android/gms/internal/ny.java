// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

// Referenced classes of package com.google.android.gms.internal:
//            od

public class ny
    implements FusedLocationProviderApi
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


    public ny()
    {
    }

    public Location getLastLocation(GoogleApiClient googleapiclient)
    {
        od od1 = LocationServices.j(googleapiclient);
        Location location;
        try
        {
            location = od1.pu();
        }
        catch (Exception exception)
        {
            return null;
        }
        return location;
    }

    public PendingResult removeLocationUpdates(GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        return googleapiclient.b(new a(googleapiclient, pendingintent) {

            final PendingIntent anQ;
            final ny anW;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.c(anQ);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anQ = pendingintent;
                super(googleapiclient);
            }
        });
    }

    public PendingResult removeLocationUpdates(GoogleApiClient googleapiclient, LocationListener locationlistener)
    {
        return googleapiclient.b(new a(googleapiclient, locationlistener) {

            final LocationListener anV;
            final ny anW;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.a(anV);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anV = locationlistener;
                super(googleapiclient);
            }
        });
    }

    public PendingResult requestLocationUpdates(GoogleApiClient googleapiclient, LocationRequest locationrequest, PendingIntent pendingintent)
    {
        return googleapiclient.b(new a(googleapiclient, locationrequest, pendingintent) {

            final PendingIntent anQ;
            final LocationRequest anU;
            final ny anW;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.b(anU, anQ);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anU = locationrequest;
                anQ = pendingintent;
                super(googleapiclient);
            }
        });
    }

    public PendingResult requestLocationUpdates(GoogleApiClient googleapiclient, LocationRequest locationrequest, LocationListener locationlistener)
    {
        return googleapiclient.b(new a(googleapiclient, locationrequest, locationlistener) {

            final LocationRequest anU;
            final LocationListener anV;
            final ny anW;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.a(anU, anV, null);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anU = locationrequest;
                anV = locationlistener;
                super(googleapiclient);
            }
        });
    }

    public PendingResult requestLocationUpdates(GoogleApiClient googleapiclient, LocationRequest locationrequest, LocationListener locationlistener, Looper looper)
    {
        return googleapiclient.b(new a(googleapiclient, locationrequest, locationlistener, looper) {

            final LocationRequest anU;
            final LocationListener anV;
            final ny anW;
            final Looper anY;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.a(anU, anV, anY);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anU = locationrequest;
                anV = locationlistener;
                anY = looper;
                super(googleapiclient);
            }
        });
    }

    public PendingResult setMockLocation(GoogleApiClient googleapiclient, Location location)
    {
        return googleapiclient.b(new a(googleapiclient, location) {

            final ny anW;
            final Location anX;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.b(anX);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anX = location;
                super(googleapiclient);
            }
        });
    }

    public PendingResult setMockMode(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.b(new a(googleapiclient, flag) {

            final ny anW;
            final boolean anZ;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.U(anZ);
                b(Status.RQ);
            }

            
            {
                anW = ny.this;
                anZ = flag;
                super(googleapiclient);
            }
        });
    }
}
