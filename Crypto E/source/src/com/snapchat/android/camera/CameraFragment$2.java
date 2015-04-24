// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.analytics.CameraEventAnalytics;

// Referenced classes of package com.snapchat.android.camera:
//            CameraFragment, TakeSnapButtonTouchIntent

class a
    implements Runnable
{

    final CameraFragment a;

    public void run()
    {
        CameraFragment.b(a).c();
        a.a.a(chIntent.MediaCaptureType.c);
        a.p();
    }

    chIntent(CameraFragment camerafragment)
    {
        a = camerafragment;
        super();
    }
}
