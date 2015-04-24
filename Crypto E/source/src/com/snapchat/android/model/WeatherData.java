// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.location.Location;
import com.snapchat.android.model.server.WeatherResponse;

public class WeatherData
{

    public static final int LOCATION_CACHE_DISTANCE_MILES = 5;
    public static final int LOCATION_CACHE_LIFETIME_MILLIS = 0x124f80;
    public static final float METERS_PER_MILE = 1609.34F;
    private final Location mLastLocation = new Location("");
    private final String mTempC;
    private final String mTempF;
    private final long mTimeLastRequested;

    public WeatherData(WeatherResponse weatherresponse)
    {
        mTimeLastRequested = weatherresponse.getTimestamp();
        mTempF = Integer.toString((int)weatherresponse.getFahrenheit());
        mTempC = Integer.toString((int)weatherresponse.getCelsius());
        mLastLocation.setLatitude(weatherresponse.getLatitude());
        mLastLocation.setLongitude(weatherresponse.getLongitude());
    }

    public String a()
    {
        return mTempC;
    }

    public boolean a(Location location)
    {
        if (location == null)
        {
            throw new NullPointerException();
        }
        if (System.currentTimeMillis() - mTimeLastRequested >= 0x124f80L)
        {
            return true;
        }
        float af[] = new float[1];
        Location.distanceBetween(location.getLatitude(), location.getLongitude(), mLastLocation.getLatitude(), mLastLocation.getLongitude(), af);
        return Math.abs(af[0]) >= 8046.7F;
    }

    public String b()
    {
        return mTempF;
    }
}
