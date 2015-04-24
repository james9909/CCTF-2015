// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.camera:
//            BaseCameraFragment

public final class er extends Binding
    implements MembersInjector
{

    private Binding a;
    private Binding b;
    private Binding c;

    public void a(BaseCameraFragment basecamerafragment)
    {
        basecamerafragment.j = (CameraModel)a.get();
        basecamerafragment.k = (VideoRecordingSizeFinder)b.get();
        c.a(basecamerafragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.camera.model.CameraModel", com/snapchat/android/camera/BaseCameraFragment, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder", com/snapchat/android/camera/BaseCameraFragment, getClass().getClassLoader());
        c = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/camera/BaseCameraFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((BaseCameraFragment)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
    }

    public er()
    {
        super(null, "members/com.snapchat.android.camera.BaseCameraFragment", false, com/snapchat/android/camera/BaseCameraFragment);
    }
}
