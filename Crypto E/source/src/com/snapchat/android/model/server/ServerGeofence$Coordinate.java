// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


// Referenced classes of package com.snapchat.android.model.server:
//            ServerGeofence

public static class mLongitude
{

    private double mLatitude;
    private double mLongitude;

    public double getLatitude()
    {
        return mLatitude;
    }

    public double getLongitude()
    {
        return mLongitude;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Coordinate [lat=").append(mLatitude).append(", long=").append(mLongitude).append("]").toString();
    }

    public A()
    {
    }

    public A(double d, double d1)
    {
        mLatitude = d;
        mLongitude = d1;
    }
}
