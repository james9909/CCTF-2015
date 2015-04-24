// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;


// Referenced classes of package com.snapchat.android.camera.hardware.callback:
//            CameraOpenCallbackMessenger, CameraOpenCallback

class b
    implements Runnable
{

    final com.snapchat.android.camera.hardware.senger._cls1.b a;
    final int b;
    final CameraOpenCallbackMessenger c;

    public void run()
    {
        CameraOpenCallbackMessenger.a(c).a(a, b);
    }

    Q(CameraOpenCallbackMessenger cameraopencallbackmessenger, com.snapchat.android.camera.hardware.senger senger, int i)
    {
        c = cameraopencallbackmessenger;
        a = senger;
        b = i;
        super();
    }
}
