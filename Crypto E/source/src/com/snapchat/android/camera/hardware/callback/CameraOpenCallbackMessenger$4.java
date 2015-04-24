// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;

import com.snapchat.android.camera.hardware.CameraManager;

// Referenced classes of package com.snapchat.android.camera.hardware.callback:
//            CameraOpenCallbackMessenger, CameraOpenCallback

class a
    implements Runnable
{

    final CameraManager a;
    final CameraOpenCallbackMessenger b;

    public void run()
    {
        CameraOpenCallbackMessenger.a(b).a(a);
    }

    Q(CameraOpenCallbackMessenger cameraopencallbackmessenger, CameraManager cameramanager)
    {
        b = cameraopencallbackmessenger;
        a = cameramanager;
        super();
    }
}
