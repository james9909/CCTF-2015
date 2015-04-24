// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;


// Referenced classes of package com.snapchat.android.camera.hardware.callback:
//            CameraOpenCallbackMessenger, CameraOpenCallback

class a
    implements Runnable
{

    final int a;
    final CameraOpenCallbackMessenger b;

    public void run()
    {
        CameraOpenCallbackMessenger.a(b).b(a);
    }

    Q(CameraOpenCallbackMessenger cameraopencallbackmessenger, int i)
    {
        b = cameraopencallbackmessenger;
        a = i;
        super();
    }
}
