// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.util.debug.ExceptionReporter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            VideoCameraHandler, ScCamcorderProfileProvider

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;

    public void a(VideoCameraHandler videocamerahandler)
    {
        videocamerahandler.c = (ScCamcorderProfileProvider)a.get();
        videocamerahandler.d = (CameraModel)b.get();
        videocamerahandler.e = (ExceptionReporter)c.get();
        d.a(videocamerahandler);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider", com/snapchat/android/camera/videocamera/VideoCameraHandler, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/videocamera/VideoCameraHandler, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.util.debug.ExceptionReporter", com/snapchat/android/camera/videocamera/VideoCameraHandler, getClass().getClassLoader());
        d = linker.a("members/com.snapchat.android.util.WaitDoneHandler", com/snapchat/android/camera/videocamera/VideoCameraHandler, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((VideoCameraHandler)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
        set1.add(d);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.camera.videocamera.VideoCameraHandler", false, com/snapchat/android/camera/videocamera/VideoCameraHandler);
    }
}
