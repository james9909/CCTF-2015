// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.util.SnapMediaUtils;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapbryo

public class DSnapImagebryo extends DSnapbryo
{

    public DSnapImagebryo(DSnapImagebryo dsnapimagebryo)
    {
        super(dsnapimagebryo);
    }

    DSnapImagebryo(DSnapbryo.Builder builder)
    {
        super(builder);
    }

    public DSnapbryo a()
    {
        return new DSnapImagebryo(this);
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
}
