// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.dagger;

import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.ads.AdManager;
import com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform;
import com.snapchat.android.analytics.framework.ScAnalyticsPlatform;
import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.analytics.framework.UserActionTracePlatform;
import com.snapchat.android.api.ScreenParameterProvider;
import com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.debug.CrashSampler;
import com.snapchat.android.util.debug.DeveloperSettings;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.eventengine.ScAnalyticsEventEngine;

public class AndroidModule
{

    private final SnapchatApplication a;

    public AndroidModule(SnapchatApplication snapchatapplication)
    {
        a = snapchatapplication;
    }

    Context a()
    {
        return a;
    }

    ScAnalyticsPlatform a(ScAnalyticsEventEngine scanalyticseventengine)
    {
        return new ScAnalyticsPlatform(scanalyticseventengine);
    }

    UpdateSnapsAnalyticsPlatform b()
    {
        return new UpdateSnapsAnalyticsPlatform();
    }

    FlurryAnalyticsPlatform c()
    {
        return new FlurryAnalyticsPlatform();
    }

    UserActionTracePlatform d()
    {
        return new UserActionTracePlatform();
    }

    AdManager e()
    {
        return AdManager.a();
    }

    SnapchatServiceManager f()
    {
        return SnapchatServiceManager.a();
    }

    ScreenParameterProvider g()
    {
        return ScreenParameterProvider.a();
    }

    DeveloperSettings h()
    {
        return DeveloperSettings.a();
    }

    ReleaseManager i()
    {
        return ReleaseManager.a();
    }

    CrashSampler j()
    {
        return CrashSampler.a();
    }

    DeviceVideoEncodingResolutionSet k()
    {
        return DeviceVideoEncodingResolutionSet.a();
    }
}
