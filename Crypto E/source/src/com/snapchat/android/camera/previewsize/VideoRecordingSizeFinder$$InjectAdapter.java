// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.previewsize;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.previewsize:
//            VideoRecordingSizeFinder

public final class  extends Binding
    implements Provider
{

    public VideoRecordingSizeFinder a()
    {
        return new VideoRecordingSizeFinder();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder", "members/com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder", false, com/snapchat/android/camera/previewsize/VideoRecordingSizeFinder);
    }
}
