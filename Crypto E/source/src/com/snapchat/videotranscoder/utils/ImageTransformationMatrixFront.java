// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.utils;

import android.opengl.Matrix;

// Referenced classes of package com.snapchat.videotranscoder.utils:
//            ImageTransformationMatrix

public class ImageTransformationMatrixFront extends ImageTransformationMatrix
{

    public ImageTransformationMatrixFront()
    {
    }

    public float[] a()
    {
        Matrix.setRotateM(a, 0, 0.0F, 0.0F, 0.0F, 1.0F);
        return a;
    }

    public float[] b()
    {
        Matrix.setRotateM(a, 0, 180F, 0.0F, 0.0F, 1.0F);
        Matrix.translateM(a, 0, -1F, -1F, 0.0F);
        return a;
    }

    public float[] c()
    {
        Matrix.setRotateM(a, 0, 90F, 0.0F, 0.0F, 1.0F);
        Matrix.translateM(a, 0, 0.0F, -1F, 0.0F);
        return a;
    }

    public float[] d()
    {
        Matrix.setRotateM(a, 0, 270F, 0.0F, 0.0F, 1.0F);
        Matrix.translateM(a, 0, -1F, 0.0F, 0.0F);
        return a;
    }
}