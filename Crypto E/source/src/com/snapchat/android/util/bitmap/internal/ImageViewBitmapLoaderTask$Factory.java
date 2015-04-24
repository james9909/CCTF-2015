// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            ImageViewBitmapLoaderTask, BitmapDecoder

public static class Q
{

    public ImageViewBitmapLoaderTask a(AsyncLoadBitmapRequest asyncloadbitmaprequest, BitmapDecoder bitmapdecoder)
    {
        return new ImageViewBitmapLoaderTask(asyncloadbitmaprequest, bitmapdecoder);
    }

    public Q()
    {
    }
}
