// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;

public class BitmapDecodeResult
{

    private final boolean a;
    private final Bitmap b;

    public BitmapDecodeResult()
    {
        this(null, false);
    }

    public BitmapDecodeResult(Bitmap bitmap, boolean flag)
    {
        b = bitmap;
        a = flag;
    }

    public boolean a()
    {
        return a;
    }

    public Bitmap b()
    {
        return b;
    }
}
