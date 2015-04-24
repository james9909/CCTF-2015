// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import com.snapchat.android.camera.PhotoBitmapProvider;
import com.snapchat.android.camera.TakePhotoCallback;
import com.snapchat.android.camera.model.CameraModel;

// Referenced classes of package com.snapchat.android.camera.controller:
//            TakePhotoController, FlashController

class c
    implements Runnable
{

    final PhotoBitmapProvider a;
    final TakePhotoCallback b;
    final FlashController c;
    final TakePhotoController d;

    public void run()
    {
        a.a(d.b.j(), b);
        c.a(false);
    }

    (TakePhotoController takephotocontroller, PhotoBitmapProvider photobitmapprovider, TakePhotoCallback takephotocallback, FlashController flashcontroller)
    {
        d = takephotocontroller;
        a = photobitmapprovider;
        b = takephotocallback;
        c = flashcontroller;
        super();
    }
}
