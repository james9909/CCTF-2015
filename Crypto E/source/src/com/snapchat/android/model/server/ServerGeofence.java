// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class ServerGeofence
{
    public static class Coordinate
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

        public Coordinate()
        {
        }

        public Coordinate(double d, double d1)
        {
            mLatitude = d;
            mLongitude = d1;
        }
    }


    private Coordinate mCoordinates[];
    private String mId;

    public ServerGeofence()
    {
    }

    public ServerGeofence(String s, Coordinate acoordinate[])
    {
        mId = s;
        mCoordinates = acoordinate;
    }

    public Coordinate[] getCoordinates()
    {
        return mCoordinates;
    }

    public String getId()
    {
        return mId;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[");
        Coordinate acoordinate[] = mCoordinates;
        int i = acoordinate.length;
        for (int j = 0; j < i; j++)
        {
            Coordinate coordinate = acoordinate[j];
            stringbuilder.append((new StringBuilder()).append(coordinate).append(", ").toString());
        }

        stringbuilder.delete(-2 + stringbuilder.length(), stringbuilder.length());
        stringbuilder.append("]");
        return (new StringBuilder()).append("Geofence [id=").append(mId).append(", coordinates=").append(stringbuilder).append("]").toString();
    }
}
