// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.hardware.Camera;
import com.snapchat.android.camera.hardware.callback.AutofocusCallbackMessenger;

// Referenced classes of package com.snapchat.android.camera.hardware:
//            SnapchatCameraManagerImpl

class a
    implements aOperation
{

    final AutofocusCallbackMessenger a;
    final SnapchatCameraManagerImpl b;

    public void a()
    {
        if (SnapchatCameraManagerImpl.a(b) == null)
        {
            return;
        } else
        {
            SnapchatCameraManagerImpl.a(b).autoFocus(a);
            return;
        }
    }

    ssenger(SnapchatCameraManagerImpl snapchatcameramanagerimpl, AutofocusCallbackMessenger autofocuscallbackmessenger)
    {
        b = snapchatcameramanagerimpl;
        a = autofocuscallbackmessenger;
        super();
    }
}
