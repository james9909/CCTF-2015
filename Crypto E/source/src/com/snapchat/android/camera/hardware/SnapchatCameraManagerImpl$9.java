// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.hardware.Camera;

// Referenced classes of package com.snapchat.android.camera.hardware:
//            SnapchatCameraManagerImpl

class a
    implements aOperation
{

    final SnapchatCameraManagerImpl a;

    public void a()
    {
        if (SnapchatCameraManagerImpl.a(a) == null)
        {
            return;
        } else
        {
            SnapchatCameraManagerImpl.a(a).startPreview();
            return;
        }
    }

    aOperation(SnapchatCameraManagerImpl snapchatcameramanagerimpl)
    {
        a = snapchatcameramanagerimpl;
        super();
    }
}
