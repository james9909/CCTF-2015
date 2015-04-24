// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.camera.model.CameraModel;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera:
//            BackgroundCameraFragment

public final class I extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public BackgroundCameraFragment a()
    {
        BackgroundCameraFragment backgroundcamerafragment = new BackgroundCameraFragment();
        a(backgroundcamerafragment);
        return backgroundcamerafragment;
    }

    public void a(BackgroundCameraFragment backgroundcamerafragment)
    {
        backgroundcamerafragment.a = (CameraModel)a.get();
        b.a(backgroundcamerafragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/BackgroundCameraFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.camera.BaseCameraFragment", com/snapchat/android/camera/BackgroundCameraFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((BackgroundCameraFragment)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public Object get()
    {
        return a();
    }

    public I()
    {
        super("com.snapchat.android.camera.BackgroundCameraFragment", "members/com.snapchat.android.camera.BackgroundCameraFragment", false, com/snapchat/android/camera/BackgroundCameraFragment);
    }
}
