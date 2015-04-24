// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.snapchat.android.api2.PostEventsTask;
import com.snapchat.android.util.system.Clock;
import com.snapchat.data.gson.analytics.PostEventsAnalyticsEvent;
import java.util.Arrays;
import java.util.Map;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform

public class PostEventsAnalyticsPlatform
    implements AnalyticsPlatform
{

    private Clock a;

    protected PostEventsAnalyticsPlatform(Clock clock)
    {
        a = clock;
    }

    public void a(Activity activity)
    {
    }

    public void a(String s, Map map, Map map1, Map map2)
    {
        (new PostEventsTask(Arrays.asList(new PostEventsAnalyticsEvent[] {
            (new PostEventsAnalyticsEvent()).a(s).a(Long.valueOf(a.a())).a(map)
        }))).g();
    }

    public void b(Activity activity)
    {
    }
}
