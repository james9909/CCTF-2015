// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics:
//            LifecycleAnalytics

public final class orm extends Binding
    implements Provider
{

    private Binding postEventsAnalyticsPlatform;

    public LifecycleAnalytics a()
    {
        return new LifecycleAnalytics((PostEventsAnalyticsPlatform)postEventsAnalyticsPlatform.get());
    }

    public void a(Linker linker)
    {
        postEventsAnalyticsPlatform = linker.a("com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform", com/snapchat/android/analytics/LifecycleAnalytics, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(postEventsAnalyticsPlatform);
    }

    public Object get()
    {
        return a();
    }

    public orm()
    {
        super("com.snapchat.android.analytics.LifecycleAnalytics", "members/com.snapchat.android.analytics.LifecycleAnalytics", true, com/snapchat/android/analytics/LifecycleAnalytics);
    }
}
