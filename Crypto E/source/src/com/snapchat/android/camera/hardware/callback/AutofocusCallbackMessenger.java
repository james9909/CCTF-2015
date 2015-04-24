// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;

import android.hardware.Camera;
import android.os.Handler;

public class AutofocusCallbackMessenger
    implements android.hardware.Camera.AutoFocusCallback
{

    private final Handler a;
    private final com.snapchat.android.camera.hardware.CameraManager.CameraProxy b;
    private final com.snapchat.android.camera.hardware.CameraManager.CameraProxyAutoFocusCallback c;

    public AutofocusCallbackMessenger(Handler handler, com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy, com.snapchat.android.camera.hardware.CameraManager.CameraProxyAutoFocusCallback cameraproxyautofocuscallback)
    {
        a = handler;
        c = cameraproxyautofocuscallback;
        b = cameraproxy;
    }

    static com.snapchat.android.camera.hardware.CameraManager.CameraProxy a(AutofocusCallbackMessenger autofocuscallbackmessenger)
    {
        return autofocuscallbackmessenger.b;
    }

    static com.snapchat.android.camera.hardware.CameraManager.CameraProxyAutoFocusCallback b(AutofocusCallbackMessenger autofocuscallbackmessenger)
    {
        return autofocuscallbackmessenger.c;
    }

    public void onAutoFocus(boolean flag, Camera camera)
    {
        a.post(new Runnable(flag) {

            final boolean a;
            final AutofocusCallbackMessenger b;

            public void run()
            {
                AutofocusCallbackMessenger.b(b).a(a, AutofocusCallbackMessenger.a(b));
            }

            
            {
                b = AutofocusCallbackMessenger.this;
                a = flag;
                super();
            }
        });
    }
}
