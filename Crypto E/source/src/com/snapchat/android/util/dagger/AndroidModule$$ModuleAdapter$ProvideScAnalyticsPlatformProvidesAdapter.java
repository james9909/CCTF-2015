// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.dagger;

import com.snapchat.android.analytics.framework.ScAnalyticsPlatform;
import com.snapchat.eventengine.ScAnalyticsEventEngine;
import dagger.internal.Binding;
import dagger.internal.Linker;
import dagger.internal.ProvidesBinding;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.dagger:
//            AndroidModule

public static final class c extends ProvidesBinding
    implements Provider
{

    private final AndroidModule c;
    private Binding d;

    public ScAnalyticsPlatform a()
    {
        return c.a((ScAnalyticsEventEngine)d.get());
    }

    public void a(Linker linker)
    {
        d = linker.a("com.snapchat.eventengine.ScAnalyticsEventEngine", com/snapchat/android/util/dagger/AndroidModule, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(d);
    }

    public Object get()
    {
        return a();
    }

    public (AndroidModule androidmodule)
    {
        super("com.snapchat.android.analytics.framework.ScAnalyticsPlatform", true, "com.snapchat.android.util.dagger.AndroidModule", "provideScAnalyticsPlatform");
        c = androidmodule;
        c(true);
    }
}
