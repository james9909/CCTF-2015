// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.utils;


// Referenced classes of package com.snapchat.videotranscoder.utils:
//            ImageTransformationMatrixFront, ImageTransformationMatrix

public class ImageTransformationMatrixFactory
{

    public ImageTransformationMatrixFactory()
    {
    }

    public ImageTransformationMatrix a(boolean flag)
    {
        if (flag)
        {
            return new ImageTransformationMatrixFront();
        } else
        {
            return new ImageTransformationMatrix();
        }
    }
}
