// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Looper;

public class PreviewCallbackMessenger
    implements android.hardware.Camera.PreviewCallback
{

    private final Handler a;
    private final com.snapchat.android.camera.hardware.CameraManager.CameraProxy b;
    private final com.snapchat.android.camera.hardware.CameraManager.CameraPreviewDataCallback c;

    public PreviewCallbackMessenger(Handler handler, com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy, com.snapchat.android.camera.hardware.CameraManager.CameraPreviewDataCallback camerapreviewdatacallback)
    {
        a = handler;
        c = camerapreviewdatacallback;
        b = cameraproxy;
    }

    static com.snapchat.android.camera.hardware.CameraManager.CameraProxy a(PreviewCallbackMessenger previewcallbackmessenger)
    {
        return previewcallbackmessenger.b;
    }

    static com.snapchat.android.camera.hardware.CameraManager.CameraPreviewDataCallback b(PreviewCallbackMessenger previewcallbackmessenger)
    {
        return previewcallbackmessenger.c;
    }

    public void a()
    {
        if (a != null)
        {
            a.getLooper().quit();
        }
    }

    public void onPreviewFrame(byte abyte0[], Camera camera)
    {
        a.post(new Runnable(abyte0) {

            final byte a[];
            final PreviewCallbackMessenger b;

            public void run()
            {
                PreviewCallbackMessenger.b(b).a(a, PreviewCallbackMessenger.a(b));
            }

            
            {
                b = PreviewCallbackMessenger.this;
                a = abyte0;
                super();
            }
        });
    }
}
