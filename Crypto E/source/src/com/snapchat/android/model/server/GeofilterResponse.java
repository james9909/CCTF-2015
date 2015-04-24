// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import android.text.TextUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server:
//            ServerGeofence

public class GeofilterResponse
{

    private static final long DEFAULT_EXPIRATION = 0xa4cb800L;
    private static final long DEFAULT_EXPIRATION_FLAG;
    private long mExpiresCountdown;
    private String mFilterId;
    private ServerGeofence mGeofence;
    private String mImageUrl;
    protected List mLayoutParams;

    public GeofilterResponse()
    {
    }

    public long getExpirationTime()
    {
        if (mExpiresCountdown == 0L)
        {
            return 0xa4cb800L + System.currentTimeMillis();
        } else
        {
            return System.currentTimeMillis() + mExpiresCountdown;
        }
    }

    public String getFilterId()
    {
        return mFilterId;
    }

    public ServerGeofence getGeofence()
    {
        return mGeofence;
    }

    public String getImageUrl()
    {
        return mImageUrl;
    }

    public int getLayoutGravity()
    {
        if (mLayoutParams == null || mLayoutParams.size() < 2)
        {
            return 17;
        }
        String s = (String)mLayoutParams.get(1);
        if (TextUtils.equals(s, "top"))
        {
            return 49;
        }
        if (TextUtils.equals(s, "bottom"))
        {
            return 81;
        }
        if (TextUtils.equals(s, "left"))
        {
            return 19;
        }
        if (TextUtils.equals(s, "right"))
        {
            return 21;
        }
        if (TextUtils.equals(s, "top_left"))
        {
            return 51;
        }
        if (TextUtils.equals(s, "top_right"))
        {
            return 53;
        }
        if (TextUtils.equals(s, "bottom_left"))
        {
            return 83;
        }
        return !TextUtils.equals(s, "bottom_right") ? 17 : 85;
    }

    public android.widget.ImageView.ScaleType getLayoutScaleType()
    {
        if (mLayoutParams == null || mLayoutParams.isEmpty())
        {
            return android.widget.ImageView.ScaleType.FIT_CENTER;
        }
        String s = (String)mLayoutParams.get(0);
        if (TextUtils.equals(s, "scale_aspect_fill"))
        {
            return android.widget.ImageView.ScaleType.CENTER_CROP;
        }
        if (TextUtils.equals(s, "scale_to_fill"))
        {
            return android.widget.ImageView.ScaleType.FIT_XY;
        } else
        {
            return android.widget.ImageView.ScaleType.FIT_CENTER;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("GeofilterResponse [filter_id=").append(mFilterId).append(", expires_countdown=").append(mExpiresCountdown).append(", image=").append(mImageUrl).append(", geofence=").append(mGeofence).append(", position=").append(mLayoutParams).append("]").toString();
    }
}
