// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameraview;

import android.widget.FrameLayout;

// Referenced classes of package com.snapchat.android.camera.cameraview:
//            CameraView

class a
    implements Runnable
{

    final CameraView a;

    public void run()
    {
        CameraView.a(a).removeView(a.a);
        a.a = null;
    }

    _cls9(CameraView cameraview)
    {
        a = cameraview;
        super();
    }
}
