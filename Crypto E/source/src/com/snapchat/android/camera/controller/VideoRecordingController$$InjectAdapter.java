// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;
import com.snapchat.android.camera.model.VideoRecordingModel;
import com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.controller:
//            VideoRecordingController

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;

    public VideoRecordingController a()
    {
        VideoRecordingController videorecordingcontroller = new VideoRecordingController();
        a(videorecordingcontroller);
        return videorecordingcontroller;
    }

    public void a(VideoRecordingController videorecordingcontroller)
    {
        videorecordingcontroller.a = (VideoRecordingModel)a.get();
        videorecordingcontroller.b = (CameraModel)b.get();
        videorecordingcontroller.c = (FlashModel)c.get();
        videorecordingcontroller.d = (DefaultVideoResolutionProvider)d.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.model.VideoRecordingModel", com/snapchat/android/camera/controller/VideoRecordingController, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/controller/VideoRecordingController, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.camera.model.FlashModel", com/snapchat/android/camera/controller/VideoRecordingController, getClass().getClassLoader());
        d = linker.a("com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider", com/snapchat/android/camera/controller/VideoRecordingController, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((VideoRecordingController)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
        set1.add(d);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.camera.controller.VideoRecordingController", "members/com.snapchat.android.camera.controller.VideoRecordingController", false, com/snapchat/android/camera/controller/VideoRecordingController);
    }
}
