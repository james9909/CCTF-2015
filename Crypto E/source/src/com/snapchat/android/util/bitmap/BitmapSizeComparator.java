// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;
import com.snapchat.android.util.SnapMediaUtils;
import java.util.Comparator;

class BitmapSizeComparator
    implements Comparator
{

    BitmapSizeComparator()
    {
    }

    protected int a(Bitmap bitmap)
    {
        return SnapMediaUtils.e(bitmap);
    }

    public int a(Bitmap bitmap, Bitmap bitmap1)
    {
        if (bitmap == null && bitmap1 == null)
        {
            return 0;
        }
        if (bitmap == null)
        {
            return -1;
        }
        if (bitmap1 == null)
        {
            return 1;
        } else
        {
            return a(bitmap) - a(bitmap1);
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Bitmap)obj, (Bitmap)obj1);
    }
}
