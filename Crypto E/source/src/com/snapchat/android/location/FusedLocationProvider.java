// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.Context;
import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;

// Referenced classes of package com.snapchat.android.location:
//            FusedLocationApiWrapper

public class FusedLocationProvider
{

    private final GoogleApiClient a;
    private final FusedLocationApiWrapper b;

    public FusedLocationProvider(Context context)
    {
        this((new com.google.android.gms.common.api.GoogleApiClient.Builder(context)).addApi(LocationServices.API).build(), new FusedLocationApiWrapper());
    }

    protected FusedLocationProvider(GoogleApiClient googleapiclient, FusedLocationApiWrapper fusedlocationapiwrapper)
    {
        a = googleapiclient;
        a.connect();
        b = fusedlocationapiwrapper;
    }

    public Location a()
    {
        Location location;
        if (a.isConnected())
        {
            if ((location = b.a(a)) != null)
            {
                if (System.currentTimeMillis() - location.getTime() >= 60000L)
                {
                    location = null;
                }
                return location;
            }
        }
        return null;
    }
}
