// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            ImageViewBitmapLoaderTask

public class AsyncPlaceholderDrawable extends BitmapDrawable
{
    public static class Factory
    {

        public AsyncPlaceholderDrawable a(Resources resources, Bitmap bitmap, ImageViewBitmapLoaderTask imageviewbitmaploadertask)
        {
            return new AsyncPlaceholderDrawable(resources, bitmap, imageviewbitmaploadertask);
        }

        public Factory()
        {
        }
    }


    private final ImageViewBitmapLoaderTask a;

    public AsyncPlaceholderDrawable(Resources resources, Bitmap bitmap, ImageViewBitmapLoaderTask imageviewbitmaploadertask)
    {
        super(resources, bitmap);
        a = imageviewbitmaploadertask;
    }

    public ImageViewBitmapLoaderTask a()
    {
        return a;
    }
}
