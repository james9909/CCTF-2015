// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import com.snapchat.android.camera.hardware.callback.CameraOpenCallbackMessenger;

// Referenced classes of package com.snapchat.android.camera.hardware:
//            SnapchatCameraManagerImpl

class b
    implements aOperation
{

    final int a;
    final CameraOpenCallbackMessenger b;
    final SnapchatCameraManagerImpl c;

    public void a()
    {
        if (SnapchatCameraManagerImpl.a(c) != null)
        {
            return;
        } else
        {
            SnapchatCameraManagerImpl.a(c, a, b);
            return;
        }
    }

    essenger(SnapchatCameraManagerImpl snapchatcameramanagerimpl, int i, CameraOpenCallbackMessenger cameraopencallbackmessenger)
    {
        c = snapchatcameramanagerimpl;
        a = i;
        b = cameraopencallbackmessenger;
        super();
    }
}
