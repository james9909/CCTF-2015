// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.Display;
import android.view.WindowManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.model.CameraModel;

public class CameraPreviewRotationFinder
{

    public CameraPreviewRotationFinder()
    {
    }

    private int a()
    {
label0:
        {
            int i = 1;
            Context context = SnapchatApplication.e().getApplicationContext();
            WindowManager windowmanager = (WindowManager)context.getSystemService("window");
            Configuration configuration = context.getResources().getConfiguration();
            int j = windowmanager.getDefaultDisplay().getRotation();
            int k;
            int l;
            byte byte0;
            if (j == 0 || j == 2)
            {
                k = i;
            } else
            {
                k = 0;
            }
            if (configuration.orientation == 2)
            {
                l = i;
            } else
            {
                l = 0;
            }
            if (configuration.orientation != i)
            {
                i = 0;
            }
            if (k == 0 || l == 0)
            {
                byte0 = 0;
                if (k != 0)
                {
                    break label0;
                }
                byte0 = 0;
                if (i == 0)
                {
                    break label0;
                }
            }
            byte0 = 3;
        }
        return byte0;
    }

    int a(int i)
    {
        switch (i)
        {
        case 0: // '\0'
        default:
            return 0;

        case 1: // '\001'
            return 90;

        case 2: // '\002'
            return 180;

        case 3: // '\003'
            return 270;
        }
    }

    public int a(CameraModel cameramodel)
    {
        return a(cameramodel, a());
    }

    public int a(CameraModel cameramodel, int i)
    {
        android.hardware.Camera.CameraInfo camerainfo = cameramodel.m();
        if (camerainfo == null)
        {
            return 90;
        }
        int j = a(i);
        int k = camerainfo.orientation;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(k);
        aobj[1] = Integer.valueOf(j);
        Timber.c("CameraPreviewRotationFinder", "Camera Orientation [%d] and Display Orientation [%d]", aobj);
        if (cameramodel.e())
        {
            return (360 - (k + j) % 360) % 360;
        } else
        {
            return (360 + (k - j)) % 360;
        }
    }
}
