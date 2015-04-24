// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.PhotoBitmapProvider;
import com.snapchat.android.camera.TakePhotoCallback;
import com.snapchat.android.camera.hardware.callback.AutofocusCallbackMessenger;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;

// Referenced classes of package com.snapchat.android.camera.controller:
//            FlashController

public class TakePhotoController
{

    protected FlashModel a;
    protected CameraModel b;

    public TakePhotoController()
    {
        SnapchatApplication.e().a(this);
    }

    private void b(PhotoBitmapProvider photobitmapprovider, TakePhotoCallback takephotocallback, FlashController flashcontroller)
    {
        if (b.e())
        {
            d(photobitmapprovider, takephotocallback, flashcontroller);
            return;
        } else
        {
            c(photobitmapprovider, takephotocallback, flashcontroller);
            return;
        }
    }

    private void c(PhotoBitmapProvider photobitmapprovider, TakePhotoCallback takephotocallback, FlashController flashcontroller)
    {
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = b.l();
        if (cameraproxy == null)
        {
            return;
        } else
        {
            flashcontroller.b(true);
            cameraproxy.a(new AutofocusCallbackMessenger(new Handler(Looper.getMainLooper()), cameraproxy, new com.snapchat.android.camera.hardware.CameraManager.CameraProxyAutoFocusCallback(photobitmapprovider, takephotocallback, flashcontroller) {

                final PhotoBitmapProvider a;
                final TakePhotoCallback b;
                final FlashController c;
                final TakePhotoController d;

                public void a(boolean flag, com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy1)
                {
                    a.a(d.b.j(), b);
                    c.b(false);
                }

            
            {
                d = TakePhotoController.this;
                a = photobitmapprovider;
                b = takephotocallback;
                c = flashcontroller;
                super();
            }
            }));
            return;
        }
    }

    private void d(PhotoBitmapProvider photobitmapprovider, TakePhotoCallback takephotocallback, FlashController flashcontroller)
    {
        flashcontroller.a(true);
        (new Handler()).postDelayed(new Runnable(photobitmapprovider, takephotocallback, flashcontroller) {

            final PhotoBitmapProvider a;
            final TakePhotoCallback b;
            final FlashController c;
            final TakePhotoController d;

            public void run()
            {
                a.a(d.b.j(), b);
                c.a(false);
            }

            
            {
                d = TakePhotoController.this;
                a = photobitmapprovider;
                b = takephotocallback;
                c = flashcontroller;
                super();
            }
        }, flashcontroller.a());
    }

    public void a(PhotoBitmapProvider photobitmapprovider, TakePhotoCallback takephotocallback, FlashController flashcontroller)
    {
        if (a.a())
        {
            b(photobitmapprovider, takephotocallback, flashcontroller);
            return;
        } else
        {
            photobitmapprovider.a(b.j(), takephotocallback);
            return;
        }
    }
}
