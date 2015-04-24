// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.os.SystemClock;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.network.ConnectivityUtils;

public class SnapbryoAnalytics
{

    private static final long TIME_UNINITIALIZED = -1L;
    private String mReachability;
    private long mTimePressSend;

    public SnapbryoAnalytics()
    {
        mTimePressSend = -1L;
    }

    public void a()
    {
        mTimePressSend = SystemClock.elapsedRealtime();
        mReachability = ConnectivityUtils.d();
    }

    protected void a(long l)
    {
        (new EasyMetric("SNAP_SEND_TIMED")).a("success", Boolean.valueOf(true)).a("reachability", mReachability).a(l).c();
    }

    public void b()
    {
        if (mTimePressSend == -1L)
        {
            if (ReleaseManager.e())
            {
                throw new IllegalStateException();
            }
        } else
        {
            a(SystemClock.elapsedRealtime() - mTimePressSend);
            mTimePressSend = -1L;
        }
    }

    protected void b(long l)
    {
        (new EasyMetric("SNAP_SEND_TIMED")).a("success", Boolean.valueOf(false)).a("reachability", mReachability).a(l).c();
    }

    public void c()
    {
        if (mTimePressSend == -1L)
        {
            if (ReleaseManager.e())
            {
                throw new IllegalStateException();
            }
        } else
        {
            b(SystemClock.elapsedRealtime() - mTimePressSend);
            mTimePressSend = -1L;
        }
    }
}
