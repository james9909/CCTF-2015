// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.controller:
//            TakePhotoController

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public TakePhotoController a()
    {
        TakePhotoController takephotocontroller = new TakePhotoController();
        a(takephotocontroller);
        return takephotocontroller;
    }

    public void a(TakePhotoController takephotocontroller)
    {
        takephotocontroller.a = (FlashModel)a.get();
        takephotocontroller.b = (CameraModel)b.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.model.FlashModel", com/snapchat/android/camera/controller/TakePhotoController, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/controller/TakePhotoController, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((TakePhotoController)obj);
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

    public ()
    {
        super("com.snapchat.android.camera.controller.TakePhotoController", "members/com.snapchat.android.camera.controller.TakePhotoController", false, com/snapchat/android/camera/controller/TakePhotoController);
    }
}
