// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.util.FlashUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeBrightnessEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.camera.controller:
//            FlashController

public class DefaultFlashControllerImpl extends FlashController
{

    protected CameraModel a;
    private View b;

    public DefaultFlashControllerImpl(View view)
    {
        SnapchatApplication.e().a(this);
        b = view;
    }

    private android.hardware.Camera.Parameters a(android.hardware.Camera.Parameters parameters)
    {
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = a.l();
        if (cameraproxy == null)
        {
            parameters = null;
        } else
        if (parameters == null)
        {
            return cameraproxy.c();
        }
        return parameters;
    }

    public int a()
    {
        return 700;
    }

    public void a(android.hardware.Camera.Parameters parameters, boolean flag)
    {
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = a.l();
        android.hardware.Camera.Parameters parameters1;
        if (!a.e() && FlashUtils.b(cameraproxy) && cameraproxy != null)
        {
            if ((parameters1 = a(parameters)) != null)
            {
                if (flag)
                {
                    parameters1.setFlashMode("on");
                    List list = parameters1.getSupportedFocusModes();
                    if (list != null && list.contains("auto"))
                    {
                        parameters1.setFocusMode("auto");
                    }
                } else
                {
                    parameters1.setFlashMode("off");
                }
                if (parameters == null)
                {
                    cameraproxy.a(parameters1);
                    return;
                }
            }
        }
    }

    public void a(boolean flag)
    {
        if (flag)
        {
            BusProvider.a().a(new ChangeBrightnessEvent(1.0F));
            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
            alphaanimation.setDuration(200L);
            alphaanimation.setFillAfter(true);
            b.setVisibility(0);
            b.startAnimation(alphaanimation);
            return;
        } else
        {
            BusProvider.a().a(new ChangeBrightnessEvent(-1F));
            b.clearAnimation();
            b.setVisibility(8);
            return;
        }
    }

    public void b(android.hardware.Camera.Parameters parameters, boolean flag)
    {
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = a.l();
        android.hardware.Camera.Parameters parameters1 = a(parameters);
        if (parameters1 != null && cameraproxy != null)
        {
            if (flag)
            {
                List list = parameters1.getSupportedFlashModes();
                if (list != null && list.contains("torch"))
                {
                    parameters1.setFlashMode("torch");
                }
            } else
            {
                parameters1.setFlashMode("off");
            }
            if (parameters == null)
            {
                cameraproxy.a(parameters1);
                return;
            }
        }
    }
}
