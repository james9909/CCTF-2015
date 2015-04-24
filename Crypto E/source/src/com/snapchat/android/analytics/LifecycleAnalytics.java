// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.content.Intent;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform;
import com.snapchat.android.analytics.framework.ScAnalyticsMetric;
import java.util.HashMap;
import java.util.Map;

public class LifecycleAnalytics
{

    private final DictionaryEasyMetric mDictionaryEasyMetric = DictionaryEasyMetric.a();
    protected PostEventsAnalyticsPlatform mPostEventsAnalyticsPlatform;
    private EasyMetric mStartupMetric;

    protected LifecycleAnalytics(PostEventsAnalyticsPlatform posteventsanalyticsplatform)
    {
        mPostEventsAnalyticsPlatform = posteventsanalyticsplatform;
    }

    public void a()
    {
        mStartupMetric = (new EasyMetric("APP_STARTUP_TIMED")).a();
        mStartupMetric.a("from_background", "false");
        mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED");
        mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED", "from_background", "false");
    }

    public void a(Intent intent)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("open_state", "NORMAL");
        hashmap.put("intent_action", intent.getAction());
        (new EasyMetric("APP_OPEN")).a(mPostEventsAnalyticsPlatform).a(hashmap).c();
        (new ScAnalyticsMetric("APP_OPEN")).a(hashmap).b();
    }

    public void b()
    {
        mStartupMetric = (new EasyMetric("APP_STARTUP_TIMED")).a();
        mStartupMetric.a("from_background", "true");
        mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED");
        mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED", "from_background", "true");
    }

    public void c()
    {
        mStartupMetric = null;
    }

    public void d()
    {
        if (mStartupMetric == null)
        {
            return;
        } else
        {
            mStartupMetric.a(false);
            mStartupMetric = null;
            return;
        }
    }
}
