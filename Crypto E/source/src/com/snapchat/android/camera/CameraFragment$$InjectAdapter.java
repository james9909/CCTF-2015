// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.analytics.LifecycleAnalytics;
import com.snapchat.android.camera.controller.TakePhotoController;
import com.snapchat.android.camera.controller.VideoRecordingController;
import com.snapchat.android.camera.model.FlashModel;
import com.snapchat.android.camera.model.VideoRecordingModel;
import com.snapchat.android.camera.model.ZoomModel;
import com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider;
import com.snapchat.android.util.debug.ExceptionReporter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera:
//            CameraFragment

public final class tionProvider extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;
    private Binding e;
    private Binding f;
    private Binding g;
    private Binding h;
    private Binding i;

    public CameraFragment a()
    {
        CameraFragment camerafragment = new CameraFragment();
        a(camerafragment);
        return camerafragment;
    }

    public void a(CameraFragment camerafragment)
    {
        camerafragment.l = (TakePhotoController)a.get();
        camerafragment.m = (VideoRecordingController)b.get();
        camerafragment.n = (ZoomModel)c.get();
        camerafragment.o = (FlashModel)d.get();
        camerafragment.p = (VideoRecordingModel)e.get();
        camerafragment.q = (LifecycleAnalytics)f.get();
        camerafragment.r = (DefaultVideoResolutionProvider)g.get();
        camerafragment.s = (ExceptionReporter)h.get();
        i.a(camerafragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.controller.TakePhotoController", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.camera.controller.VideoRecordingController", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.camera.model.ZoomModel", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        d = linker.a("com.snapchat.android.camera.model.FlashModel", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        e = linker.a("com.snapchat.android.camera.model.VideoRecordingModel", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        f = linker.a("com.snapchat.android.analytics.LifecycleAnalytics", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        g = linker.a("com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        h = linker.a("com.snapchat.android.util.debug.ExceptionReporter", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader());
        i = linker.a("members/com.snapchat.android.camera.BaseCameraFragment", com/snapchat/android/camera/CameraFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((CameraFragment)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
        set1.add(d);
        set1.add(e);
        set1.add(f);
        set1.add(g);
        set1.add(h);
        set1.add(i);
    }

    public Object get()
    {
        return a();
    }

    public tionProvider()
    {
        super("com.snapchat.android.camera.CameraFragment", "members/com.snapchat.android.camera.CameraFragment", false, com/snapchat/android/camera/CameraFragment);
    }
}
