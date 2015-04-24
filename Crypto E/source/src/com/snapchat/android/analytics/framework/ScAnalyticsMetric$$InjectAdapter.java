// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            ScAnalyticsMetric, ScAnalyticsPlatform

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;

    public void a(ScAnalyticsMetric scanalyticsmetric)
    {
        scanalyticsmetric.a = (ScAnalyticsPlatform)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.framework.ScAnalyticsPlatform", com/snapchat/android/analytics/framework/ScAnalyticsMetric, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((ScAnalyticsMetric)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.analytics.framework.ScAnalyticsMetric", false, com/snapchat/android/analytics/framework/ScAnalyticsMetric);
    }
}
