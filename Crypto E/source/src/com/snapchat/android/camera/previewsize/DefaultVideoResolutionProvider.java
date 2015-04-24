// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.previewsize;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.CameraUtils;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.util.Resolution;

// Referenced classes of package com.snapchat.android.camera.previewsize:
//            VideoResolutionProvider, VideoRecordingSizeFinder

public class DefaultVideoResolutionProvider
    implements VideoResolutionProvider
{

    protected CameraModel a;
    protected VideoRecordingSizeFinder b;
    private final TranscodingPreferencesWrapper c;

    public DefaultVideoResolutionProvider()
    {
        this(TranscodingPreferencesWrapper.a());
    }

    protected DefaultVideoResolutionProvider(TranscodingPreferencesWrapper transcodingpreferenceswrapper)
    {
        SnapchatApplication.e().a(this);
        c = transcodingpreferenceswrapper;
    }

    public Resolution a()
    {
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = a.l();
        android.hardware.Camera.Parameters parameters;
        if (cameraproxy != null)
        {
            if ((parameters = cameraproxy.c()) != null)
            {
                boolean flag;
                if (c.b() == com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled.e)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return b.a(parameters, a.h(), CameraUtils.a(parameters.getPreviewSize()), flag);
            }
        }
        return null;
    }
}
