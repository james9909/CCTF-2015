// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatformRegistry, UpdateSnapsAnalyticsPlatform, FlurryAnalyticsPlatform, PostEventsAnalyticsPlatform, 
//            UserActionTracePlatform, ScAnalyticsPlatform

public final class  extends Binding
    implements Provider
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;
    private Binding e;

    public AnalyticsPlatformRegistry a()
    {
        return new AnalyticsPlatformRegistry((UpdateSnapsAnalyticsPlatform)a.get(), (FlurryAnalyticsPlatform)b.get(), (PostEventsAnalyticsPlatform)c.get(), (UserActionTracePlatform)d.get(), (ScAnalyticsPlatform)e.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform", com/snapchat/android/analytics/framework/AnalyticsPlatformRegistry, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform", com/snapchat/android/analytics/framework/AnalyticsPlatformRegistry, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform", com/snapchat/android/analytics/framework/AnalyticsPlatformRegistry, getClass().getClassLoader());
        d = linker.a("com.snapchat.android.analytics.framework.UserActionTracePlatform", com/snapchat/android/analytics/framework/AnalyticsPlatformRegistry, getClass().getClassLoader());
        e = linker.a("com.snapchat.android.analytics.framework.ScAnalyticsPlatform", com/snapchat/android/analytics/framework/AnalyticsPlatformRegistry, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
        set.add(b);
        set.add(c);
        set.add(d);
        set.add(e);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry", "members/com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry", false, com/snapchat/android/analytics/framework/AnalyticsPlatformRegistry);
    }
}
