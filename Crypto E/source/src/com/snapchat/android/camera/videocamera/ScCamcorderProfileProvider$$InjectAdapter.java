// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            ScCamcorderProfileProvider

public final class  extends Binding
    implements Provider
{

    public ScCamcorderProfileProvider a()
    {
        return new ScCamcorderProfileProvider();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider", "members/com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider", false, com/snapchat/android/camera/videocamera/ScCamcorderProfileProvider);
    }
}
