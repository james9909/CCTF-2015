// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.graphics.ImageFormat;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.util.PortraitDisplayMetrics;
import com.snapchat.android.util.MathUtils;
import com.snapchat.android.util.Resolution;
import java.util.ArrayList;

public class CameraUtils
{

    public CameraUtils()
    {
    }

    public static double a(android.hardware.Camera.Size size)
    {
        return (double)size.width / (double)size.height;
    }

    public static double a(PortraitDisplayMetrics portraitdisplaymetrics)
    {
        return (double)portraitdisplaymetrics.heightPixels / (double)portraitdisplaymetrics.widthPixels;
    }

    public static int a(int i, int j)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("cameraNumber: ").append(i).toString());
        }
        if (j >= 2)
        {
            j = 2;
        }
        return i % j;
    }

    private static int a(int i, int j, int k)
    {
        if (i > k)
        {
            return k;
        }
        if (i < j)
        {
            return j;
        } else
        {
            return i;
        }
    }

    public static int a(android.hardware.Camera.CameraInfo acamerainfo[])
    {
        for (int i = 0; i < acamerainfo.length; i++)
        {
            if (acamerainfo[i].facing == 1)
            {
                return i;
            }
        }

        return 0;
    }

    public static Camera a(int i)
    {
        Camera camera;
        try
        {
            camera = Camera.open(i);
        }
        catch (RuntimeException runtimeexception)
        {
            return null;
        }
        return camera;
    }

    private static void a(int i, int j, float f, int k, int l, int i1, int j1, Rect rect, 
            Matrix matrix)
    {
        int k1 = (int)(f * (float)i);
        int l1 = (int)(f * (float)j);
        int i2 = a(k - k1 / 2, 0, i1 - k1);
        int j2 = a(l - l1 / 2, 0, j1 - l1);
        RectF rectf = new RectF(i2, j2, k1 + i2, l1 + j2);
        matrix.mapRect(rectf);
        a(rectf, rect);
    }

    public static void a(int i, int j, View view, com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        android.hardware.Camera.Parameters parameters;
        if (view != null)
        {
            if ((parameters = cameraproxy.c()) != null && parameters.getMaxNumFocusAreas() != 0)
            {
                Matrix matrix = new Matrix();
                Matrix matrix1 = new Matrix();
                a(matrix1, false, 90, view.getWidth(), view.getHeight());
                matrix1.invert(matrix);
                ArrayList arraylist = new ArrayList();
                int k = view.getWidth();
                int l = view.getHeight();
                if (arraylist.size() == 0)
                {
                    arraylist.add(new android.hardware.Camera.Area(new Rect(), 1));
                }
                a(266, 266, 1.0F, i, j, k, l, ((android.hardware.Camera.Area)arraylist.get(0)).rect, matrix);
                parameters.setFocusAreas(arraylist);
                if (parameters.getMaxNumMeteringAreas() != 0)
                {
                    parameters.setMeteringAreas(arraylist);
                }
                cameraproxy.a(parameters);
                return;
            }
        }
    }

    private static void a(Matrix matrix, boolean flag, int i, int j, int k)
    {
        float f;
        if (flag)
        {
            f = -1F;
        } else
        {
            f = 1.0F;
        }
        matrix.setScale(f, 1.0F);
        matrix.postRotate(i);
        matrix.postScale((float)j / 2000F, (float)k / 2000F);
        matrix.postTranslate((float)j / 2.0F, (float)k / 2.0F);
    }

    private static void a(RectF rectf, Rect rect)
    {
        rect.left = Math.round(rectf.left);
        rect.top = Math.round(rectf.top);
        rect.right = Math.round(rectf.right);
        rect.bottom = Math.round(rectf.bottom);
    }

    public static boolean a(android.hardware.Camera.Parameters parameters)
    {
        return parameters.getSupportedVideoSizes() == null;
    }

    public static byte[] a(Resolution resolution)
    {
        int i = MathUtils.a((int)((double)(resolution.d() * ImageFormat.getBitsPerPixel(17)) / 8D));
        Timber.c("CameraUtils", (new StringBuilder()).append("Allocating a Callback Buffer of ").append(resolution.d() * ImageFormat.getBitsPerPixel(17)).append(" divided by 8 = ").append(i).append(" bytes").toString(), new Object[0]);
        return new byte[i];
    }

    public static android.hardware.Camera.CameraInfo[] a()
    {
        int i = Camera.getNumberOfCameras();
        android.hardware.Camera.CameraInfo acamerainfo[] = new android.hardware.Camera.CameraInfo[i];
        for (int j = 0; j < i; j++)
        {
            acamerainfo[j] = new android.hardware.Camera.CameraInfo();
            Camera.getCameraInfo(j, acamerainfo[j]);
        }

        return acamerainfo;
    }

    public static int b(android.hardware.Camera.CameraInfo acamerainfo[])
    {
        for (int i = 0; i < acamerainfo.length; i++)
        {
            if (acamerainfo[i].facing == 0)
            {
                return i;
            }
        }

        return 0;
    }

    public static boolean b()
    {
        return Camera.getNumberOfCameras() > 1;
    }
}
