// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            BitmapPool

public class BitmapRecycling
{

    private final BitmapPool a;

    public BitmapRecycling()
    {
        this(BitmapPool.a());
    }

    BitmapRecycling(BitmapPool bitmappool)
    {
        a = bitmappool;
    }

    public void a(ImageView imageview)
    {
        android.graphics.drawable.Drawable drawable = imageview.getDrawable();
        if (drawable instanceof BitmapDrawable)
        {
            android.graphics.Bitmap bitmap = ((BitmapDrawable)drawable).getBitmap();
            if (bitmap != null)
            {
                a.a(bitmap);
            }
        }
        imageview.setImageBitmap(null);
    }
}
