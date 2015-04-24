// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationServices;

public class FusedLocationApiWrapper
{

    public FusedLocationApiWrapper()
    {
    }

    public Location a(GoogleApiClient googleapiclient)
    {
        return LocationServices.FusedLocationApi.getLastLocation(googleapiclient);
    }
}
