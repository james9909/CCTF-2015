// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import com.snapchat.android.camera.model.CameraModel;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.camera.controller:
//            DefaultFlashControllerImpl

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;
    private Binding b;

    public void a(DefaultFlashControllerImpl defaultflashcontrollerimpl)
    {
        defaultflashcontrollerimpl.a = (CameraModel)a.get();
        b.a(defaultflashcontrollerimpl);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/controller/DefaultFlashControllerImpl, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.camera.controller.FlashController", com/snapchat/android/camera/controller/DefaultFlashControllerImpl, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((DefaultFlashControllerImpl)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.camera.controller.DefaultFlashControllerImpl", false, com/snapchat/android/camera/controller/DefaultFlashControllerImpl);
    }
}
