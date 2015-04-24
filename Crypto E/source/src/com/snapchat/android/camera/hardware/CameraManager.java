// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import com.snapchat.android.camera.hardware.callback.AutofocusCallbackMessenger;
import com.snapchat.android.camera.hardware.callback.CameraOpenCallbackMessenger;
import com.snapchat.android.camera.hardware.callback.PreviewCallbackMessenger;

public interface CameraManager
{
    public static interface CameraPreviewDataCallback
    {

        public abstract void a(byte abyte0[], CameraProxy cameraproxy);
    }

    public static interface CameraProxy
    {

        public abstract void a(int i);

        public abstract void a(SurfaceTexture surfacetexture);

        public abstract void a(android.hardware.Camera.Parameters parameters);

        public abstract void a(AutofocusCallbackMessenger autofocuscallbackmessenger);

        public abstract void a(PreviewCallbackMessenger previewcallbackmessenger);

        public abstract void a(boolean flag);

        public abstract void a(byte abyte0[]);

        public abstract Camera b();

        public abstract void b(boolean flag);

        public abstract android.hardware.Camera.Parameters c();

        public abstract void d();

        public abstract void e();

        public abstract boolean f();

        public abstract void g();
    }

    public static interface CameraProxyAutoFocusCallback
    {

        public abstract void a(boolean flag, CameraProxy cameraproxy);
    }


    public abstract void a();

    public abstract void a(int i, CameraOpenCallbackMessenger cameraopencallbackmessenger);
}
