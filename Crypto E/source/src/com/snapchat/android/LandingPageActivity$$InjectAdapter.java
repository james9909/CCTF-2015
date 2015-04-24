// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.analytics.LifecycleAnalytics;
import com.snapchat.android.deeplink.DeepLinkParser;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;

    public LandingPageActivity a()
    {
        LandingPageActivity landingpageactivity = new LandingPageActivity();
        a(landingpageactivity);
        return landingpageactivity;
    }

    public void a(LandingPageActivity landingpageactivity)
    {
        landingpageactivity.j = (LifecycleAnalytics)a.get();
        landingpageactivity.k = (DeepLinkParser)b.get();
        c.a(landingpageactivity);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.LifecycleAnalytics", com/snapchat/android/LandingPageActivity, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.deeplink.DeepLinkParser", com/snapchat/android/LandingPageActivity, getClass().getClassLoader());
        c = linker.a("members/com.snapchat.android.SnapchatActivity", com/snapchat/android/LandingPageActivity, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((LandingPageActivity)obj);
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

    public ()
    {
        super("com.snapchat.android.LandingPageActivity", "members/com.snapchat.android.LandingPageActivity", false, com/snapchat/android/LandingPageActivity);
    }
}
