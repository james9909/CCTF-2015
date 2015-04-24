// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.util.DisplayMetrics;

public class ReusableBitmapOptionsProvider
{

    public ReusableBitmapOptionsProvider()
    {
    }

    public android.graphics.BitmapFactory.Options a()
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inMutable = true;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        return options;
    }

    public android.graphics.BitmapFactory.Options a(DisplayMetrics displaymetrics, int i, int j)
    {
        return a(displaymetrics, i, j, android.graphics.Bitmap.Config.ARGB_8888);
    }

    public android.graphics.BitmapFactory.Options a(DisplayMetrics displaymetrics, int i, int j, android.graphics.Bitmap.Config config)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = b(displaymetrics, i, j);
        options.inMutable = true;
        options.inPreferredConfig = config;
        options.outHeight = j;
        options.outWidth = i;
        return options;
    }

    public int b(DisplayMetrics displaymetrics, int i, int j)
    {
        int k = Math.min(displaymetrics.widthPixels, 3379);
        int l = Math.min(displaymetrics.heightPixels, 3379);
        int i1 = 1;
        if (i > k && j > l)
        {
            int j1 = j / 2;
            int k1;
            for (k1 = i / 2; j1 / i1 > l && k1 / i1 > k; i1 *= 2) { }
            if (j1 / i1 == l && k1 / i1 == k)
            {
                i1 *= 2;
            }
        }
        return i1;
    }
}
