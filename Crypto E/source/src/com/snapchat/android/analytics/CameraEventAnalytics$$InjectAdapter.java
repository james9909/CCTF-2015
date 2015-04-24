// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics:
//            CameraEventAnalytics

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCameraModel;
    private Binding mFlashModel;

    public CameraEventAnalytics a()
    {
        CameraEventAnalytics cameraeventanalytics = new CameraEventAnalytics();
        a(cameraeventanalytics);
        return cameraeventanalytics;
    }

    public void a(CameraEventAnalytics cameraeventanalytics)
    {
        cameraeventanalytics.mCameraModel = (CameraModel)mCameraModel.get();
        cameraeventanalytics.mFlashModel = (FlashModel)mFlashModel.get();
    }

    public void a(Linker linker)
    {
        mCameraModel = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/analytics/CameraEventAnalytics, getClass().getClassLoader());
        mFlashModel = linker.a("com.snapchat.android.camera.model.FlashModel", com/snapchat/android/analytics/CameraEventAnalytics, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((CameraEventAnalytics)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCameraModel);
        set1.add(mFlashModel);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.analytics.CameraEventAnalytics", "members/com.snapchat.android.analytics.CameraEventAnalytics", false, com/snapchat/android/analytics/CameraEventAnalytics);
    }
}
