// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.content.res.Resources;
import android.media.CamcorderProfile;
import android.util.DisplayMetrics;
import com.snapchat.android.Timber;
import com.snapchat.android.util.Resolution;

public class ScreenParameterProvider
{

    private static final ScreenParameterProvider INSTANCE = new ScreenParameterProvider();
    private static final String TAG = "ScreenParameterProvider";
    private int mMaxVideoHeight;
    private int mMaxVideoWidth;
    private Resolution mResolution;

    protected ScreenParameterProvider()
    {
        mResolution = new Resolution(0, 0);
    }

    public static ScreenParameterProvider a()
    {
        return INSTANCE;
    }

    public void a(Context context)
    {
        int i = 0x7fffffff;
        CamcorderProfile camcorderprofile = e();
        DisplayMetrics displaymetrics = b(context);
        int l;
        int i1;
        int j1;
        Object aobj[];
        if (displaymetrics.heightPixels > displaymetrics.widthPixels)
        {
            int k1 = displaymetrics.heightPixels;
            int l1 = displaymetrics.widthPixels;
            l = k1;
            i1 = l1;
        } else
        {
            int j = displaymetrics.widthPixels;
            int k = displaymetrics.heightPixels;
            l = j;
            i1 = k;
        }
        if (camcorderprofile != null)
        {
            if (camcorderprofile.videoFrameHeight > camcorderprofile.videoFrameWidth)
            {
                j1 = camcorderprofile.videoFrameHeight;
                i = camcorderprofile.videoFrameWidth;
            } else
            {
                j1 = camcorderprofile.videoFrameWidth;
                i = camcorderprofile.videoFrameHeight;
            }
        } else
        {
            j1 = i;
        }
        mResolution = new Resolution(i1, l);
        mMaxVideoHeight = Math.min(l, j1);
        mMaxVideoWidth = Math.min(i1, i);
        aobj = new Object[4];
        aobj[0] = Integer.valueOf(mResolution.b());
        aobj[1] = Integer.valueOf(mResolution.a());
        aobj[2] = Integer.valueOf(mMaxVideoHeight);
        aobj[3] = Integer.valueOf(mMaxVideoWidth);
        Timber.b("ScreenParameterProvider", "Computed screen parameter values: height=%d, width=%d, maxVideoHeight=%d, maxVideoWidth=%d", aobj);
    }

    public DisplayMetrics b(Context context)
    {
        return context.getResources().getDisplayMetrics();
    }

    public Resolution b()
    {
        return mResolution;
    }

    public int c()
    {
        return mMaxVideoHeight;
    }

    public int d()
    {
        return mMaxVideoWidth;
    }

    protected CamcorderProfile e()
    {
        if (CamcorderProfile.hasProfile(1))
        {
            return CamcorderProfile.get(1);
        }
        if (CamcorderProfile.hasProfile(0))
        {
            return CamcorderProfile.get(0);
        } else
        {
            return null;
        }
    }

}
