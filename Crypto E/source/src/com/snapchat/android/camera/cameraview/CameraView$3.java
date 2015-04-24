// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameraview;

import android.view.SurfaceHolder;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.camera.cameraview:
//            CameraView

class a
    implements android.view..Callback
{

    final rfaceReadyCallback a;
    final CameraView b;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(j);
        aobj[1] = Integer.valueOf(k);
        Timber.c("CameraView", "Surface Changed to [%d x %d]", aobj);
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        a.a(surfaceholder.getSurface());
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Timber.c("CameraView", "Surface Destroyed", new Object[0]);
    }

    rfaceReadyCallback(CameraView cameraview, rfaceReadyCallback rfacereadycallback)
    {
        b = cameraview;
        a = rfacereadycallback;
        super();
    }
}
