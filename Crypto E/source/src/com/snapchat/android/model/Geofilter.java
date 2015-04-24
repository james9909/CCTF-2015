// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.graphics.Bitmap;
import android.location.Location;
import android.text.TextUtils;
import com.snapchat.android.model.server.GeofilterResponse;
import com.snapchat.android.util.Geofence;

public class Geofilter
{

    private Bitmap mBitmap;
    private final long mExpirationTime;
    private final String mFilterId;
    private final Geofence mGeofence;
    private final String mImageUrl;
    private final int mLayoutGravity;
    private final android.widget.ImageView.ScaleType mLayoutScaleType;

    public Geofilter(GeofilterResponse geofilterresponse)
    {
        mFilterId = geofilterresponse.getFilterId();
        mImageUrl = geofilterresponse.getImageUrl();
        mExpirationTime = geofilterresponse.getExpirationTime();
        com.snapchat.android.model.server.ServerGeofence servergeofence = geofilterresponse.getGeofence();
        if (servergeofence == null)
        {
            mGeofence = null;
        } else
        {
            mGeofence = new Geofence(servergeofence);
        }
        mLayoutScaleType = geofilterresponse.getLayoutScaleType();
        mLayoutGravity = geofilterresponse.getLayoutGravity();
    }

    public String a()
    {
        return mFilterId;
    }

    public void a(Bitmap bitmap)
    {
        mBitmap = bitmap;
    }

    public boolean a(Location location)
    {
        if (mGeofence == null)
        {
            return false;
        } else
        {
            return mGeofence.a(location);
        }
    }

    public String b()
    {
        return mImageUrl;
    }

    public boolean b(Location location)
    {
        if (location == null)
        {
            throw new NullPointerException();
        }
        while (System.currentTimeMillis() > mExpirationTime || !a(location)) 
        {
            return true;
        }
        return false;
    }

    public Bitmap c()
    {
        return mBitmap;
    }

    public android.widget.ImageView.ScaleType d()
    {
        return mLayoutScaleType;
    }

    public int e()
    {
        return mLayoutGravity;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Geofilter))
        {
            return false;
        } else
        {
            Geofilter geofilter = (Geofilter)obj;
            return TextUtils.equals(a(), geofilter.a());
        }
    }

    public int hashCode()
    {
        return a().hashCode();
    }
}
