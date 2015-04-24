// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry;
import com.snapchat.android.util.debug.CrashSampler;
import com.snapchat.android.util.debug.GracefulExceptionHandler;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

public final class ler extends Binding
    implements MembersInjector
{

    private Binding a;
    private Binding b;
    private Binding c;

    public void a(SnapchatActivity snapchatactivity)
    {
        snapchatactivity.r = (AnalyticsPlatformRegistry)a.get();
        snapchatactivity.s = (CrashSampler)b.get();
        snapchatactivity.t = (GracefulExceptionHandler)c.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry", com/snapchat/android/SnapchatActivity, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.util.debug.CrashSampler", com/snapchat/android/SnapchatActivity, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.util.debug.GracefulExceptionHandler", com/snapchat/android/SnapchatActivity, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SnapchatActivity)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
    }

    public ler()
    {
        super(null, "members/com.snapchat.android.SnapchatActivity", false, com/snapchat/android/SnapchatActivity);
    }
}
