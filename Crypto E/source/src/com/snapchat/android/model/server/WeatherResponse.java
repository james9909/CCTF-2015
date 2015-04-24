// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class WeatherResponse
{

    private float mCelsius;
    private float mFahrenheit;
    private double mLatitude;
    private double mLongitude;
    private long mTimestamp;

    public WeatherResponse()
    {
    }

    public float getCelsius()
    {
        return mCelsius;
    }

    public float getFahrenheit()
    {
        return mFahrenheit;
    }

    public double getLatitude()
    {
        return mLatitude;
    }

    public double getLongitude()
    {
        return mLongitude;
    }

    public long getTimestamp()
    {
        return mTimestamp;
    }

    public String toString()
    {
        return (new StringBuilder()).append("WeatherResponse [latitude=").append(mLatitude).append(", longitude=").append(mLongitude).append(", timestamp=").append(mTimestamp).append(", fahrenheit=").append(mFahrenheit).append(", celsius=").append(mCelsius).append("]").toString();
    }
}
