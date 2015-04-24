// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import com.snapchat.android.util.system.Clock;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            PostEventsAnalyticsPlatform

public final class Y extends Binding
    implements Provider
{

    private Binding a;

    public PostEventsAnalyticsPlatform a()
    {
        return new PostEventsAnalyticsPlatform((Clock)a.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.system.Clock", com/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
    }

    public Object get()
    {
        return a();
    }

    public Y()
    {
        super("com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform", "members/com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform", true, com/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform);
    }
}
