// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.previewsize;

import com.snapchat.android.camera.model.CameraModel;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.previewsize:
//            DefaultVideoResolutionProvider, VideoRecordingSizeFinder

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public DefaultVideoResolutionProvider a()
    {
        DefaultVideoResolutionProvider defaultvideoresolutionprovider = new DefaultVideoResolutionProvider();
        a(defaultvideoresolutionprovider);
        return defaultvideoresolutionprovider;
    }

    public void a(DefaultVideoResolutionProvider defaultvideoresolutionprovider)
    {
        defaultvideoresolutionprovider.a = (CameraModel)a.get();
        defaultvideoresolutionprovider.b = (VideoRecordingSizeFinder)b.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder", com/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((DefaultVideoResolutionProvider)obj);
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
        super("com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider", "members/com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider", false, com/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider);
    }
}
