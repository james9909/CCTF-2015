// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.util.SnapMediaUtils;

// Referenced classes of package com.snapchat.android.model:
//            Snapbryo, AnnotatedMediabryo

public class SnapImagebryo extends Snapbryo
{

    private static final int JPEG_ENCODING_QUALITY = 60;

    private SnapImagebryo(SnapImagebryo snapimagebryo)
    {
        super(snapimagebryo);
    }

    SnapImagebryo(Snapbryo.Builder builder)
    {
        super(builder);
    }

    public Snapbryo a()
    {
        return new SnapImagebryo(this);
    }

    public int b()
    {
        return 0;
    }

    public boolean c()
    {
        return false;
    }

    public Object clone()
    {
        return a();
    }

    public byte[] d()
    {
        android.graphics.Bitmap bitmap = B();
        if (bitmap == null)
        {
            return null;
        } else
        {
            return SnapMediaUtils.a(SnapMediaUtils.d(bitmap), 60);
        }
    }

    public AnnotatedMediabryo e()
    {
        return a();
    }

    public void f(boolean flag)
    {
    }
}
