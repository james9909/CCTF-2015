// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import com.snapchat.android.Timber;
import java.io.IOException;

// Referenced classes of package com.snapchat.android.camera.hardware:
//            SnapchatCameraManagerImpl

class a
    implements Operation
{

    final SurfaceTexture a;
    final SnapchatCameraManagerImpl b;

    public void a()
    {
        if (SnapchatCameraManagerImpl.a(b) == null)
        {
            return;
        }
        try
        {
            SnapchatCameraManagerImpl.a(b).setPreviewTexture(a);
            return;
        }
        catch (IOException ioexception)
        {
            Timber.e("SnapchatCameraManagerImpl", "Could not set preview texture", new Object[0]);
        }
    }

    Operation(SnapchatCameraManagerImpl snapchatcameramanagerimpl, SurfaceTexture surfacetexture)
    {
        b = snapchatcameramanagerimpl;
        a = surfacetexture;
        super();
    }
}
