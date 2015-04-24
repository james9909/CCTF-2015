// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import com.snapchat.eventengine.ScAnalyticsEventEngine;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            ScAnalyticsPlatform

public final class Q extends Binding
    implements Provider
{

    private Binding a;

    public ScAnalyticsPlatform a()
    {
        return new ScAnalyticsPlatform((ScAnalyticsEventEngine)a.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.eventengine.ScAnalyticsEventEngine", com/snapchat/android/analytics/framework/ScAnalyticsPlatform, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
    }

    public Object get()
    {
        return a();
    }

    public Q()
    {
        super("com.snapchat.android.analytics.framework.ScAnalyticsPlatform", "members/com.snapchat.android.analytics.framework.ScAnalyticsPlatform", false, com/snapchat/android/analytics/framework/ScAnalyticsPlatform);
    }
}
