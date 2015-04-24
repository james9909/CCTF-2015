// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.hardware.Camera;

// Referenced classes of package com.snapchat.android.camera.hardware:
//            SnapchatCameraManagerImpl

class a
    implements Operation
{

    final byte a[];
    final SnapchatCameraManagerImpl b;

    public void a()
    {
        if (SnapchatCameraManagerImpl.a(b) == null)
        {
            return;
        } else
        {
            SnapchatCameraManagerImpl.a(b).addCallbackBuffer(a);
            return;
        }
    }

    Operation(SnapchatCameraManagerImpl snapchatcameramanagerimpl, byte abyte0[])
    {
        b = snapchatcameramanagerimpl;
        a = abyte0;
        super();
    }
}
