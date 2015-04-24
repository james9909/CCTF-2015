// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.util;

import java.util.List;

public class FlashUtils
{

    public FlashUtils()
    {
    }

    public static boolean a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        android.hardware.Camera.Parameters parameters;
        List list;
        if (cameraproxy != null)
        {
            if ((parameters = cameraproxy.c()) != null && (list = parameters.getSupportedFlashModes()) != null)
            {
                return list.contains("torch");
            }
        }
        return false;
    }

    public static boolean b(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        android.hardware.Camera.Parameters parameters;
        List list;
        if (cameraproxy != null)
        {
            if ((parameters = cameraproxy.c()) != null && (list = parameters.getSupportedFlashModes()) != null)
            {
                return list.contains("on");
            }
        }
        return false;
    }
}
