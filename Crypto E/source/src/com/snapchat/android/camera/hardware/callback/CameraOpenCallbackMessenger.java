// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;

import android.os.Handler;
import com.snapchat.android.camera.hardware.CameraManager;

// Referenced classes of package com.snapchat.android.camera.hardware.callback:
//            CameraOpenCallback

public class CameraOpenCallbackMessenger
    implements CameraOpenCallback
{

    private final Handler a;
    private final CameraOpenCallback b;

    public CameraOpenCallbackMessenger(Handler handler, CameraOpenCallback cameraopencallback)
    {
        a = handler;
        b = cameraopencallback;
    }

    static CameraOpenCallback a(CameraOpenCallbackMessenger cameraopencallbackmessenger)
    {
        return cameraopencallbackmessenger.b;
    }

    public void a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy, int i)
    {
        a.post(new Runnable(cameraproxy, i) {

            final com.snapchat.android.camera.hardware.CameraManager.CameraProxy a;
            final int b;
            final CameraOpenCallbackMessenger c;

            public void run()
            {
                CameraOpenCallbackMessenger.a(c).a(a, b);
            }

            
            {
                c = CameraOpenCallbackMessenger.this;
                a = cameraproxy;
                b = i;
                super();
            }
        });
    }

    public void a(CameraManager cameramanager)
    {
        a.post(new Runnable(cameramanager) {

            final CameraManager a;
            final CameraOpenCallbackMessenger b;

            public void run()
            {
                CameraOpenCallbackMessenger.a(b).a(a);
            }

            
            {
                b = CameraOpenCallbackMessenger.this;
                a = cameramanager;
                super();
            }
        });
    }

    public void b(int i)
    {
        a.post(new Runnable(i) {

            final int a;
            final CameraOpenCallbackMessenger b;

            public void run()
            {
                CameraOpenCallbackMessenger.a(b).b(a);
            }

            
            {
                b = CameraOpenCallbackMessenger.this;
                a = i;
                super();
            }
        });
    }

    public void c(int i)
    {
        a.post(new Runnable(i) {

            final int a;
            final CameraOpenCallbackMessenger b;

            public void run()
            {
                CameraOpenCallbackMessenger.a(b).c(a);
            }

            
            {
                b = CameraOpenCallbackMessenger.this;
                a = i;
                super();
            }
        });
    }
}
