// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            EasyMetric, UpdateSnapsAnalyticsPlatform, FlurryAnalyticsPlatform, UserActionTracePlatform

public final class rm extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;

    public EasyMetric a()
    {
        EasyMetric easymetric = new EasyMetric();
        a(easymetric);
        return easymetric;
    }

    public void a(EasyMetric easymetric)
    {
        easymetric.b = (UpdateSnapsAnalyticsPlatform)a.get();
        easymetric.c = (FlurryAnalyticsPlatform)b.get();
        easymetric.d = (UserActionTracePlatform)c.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform", com/snapchat/android/analytics/framework/EasyMetric, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform", com/snapchat/android/analytics/framework/EasyMetric, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.analytics.framework.UserActionTracePlatform", com/snapchat/android/analytics/framework/EasyMetric, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((EasyMetric)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
    }

    public Object get()
    {
        return a();
    }

    public rm()
    {
        super("com.snapchat.android.analytics.framework.EasyMetric", "members/com.snapchat.android.analytics.framework.EasyMetric", false, com/snapchat/android/analytics/framework/EasyMetric);
    }
}
