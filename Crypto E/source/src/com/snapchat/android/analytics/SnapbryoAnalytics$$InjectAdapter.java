// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics:
//            SnapbryoAnalytics

public final class  extends Binding
    implements Provider
{

    public SnapbryoAnalytics a()
    {
        return new SnapbryoAnalytics();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.analytics.SnapbryoAnalytics", "members/com.snapchat.android.analytics.SnapbryoAnalytics", false, com/snapchat/android/analytics/SnapbryoAnalytics);
    }
}
