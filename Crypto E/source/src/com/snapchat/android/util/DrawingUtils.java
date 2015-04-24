// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;

// Referenced classes of package com.snapchat.android.util:
//            SnapMediaUtils

public class DrawingUtils
{

    public DrawingUtils()
    {
    }

    public static transient Bitmap a(int i, int j, View aview[])
    {
        if (aview == null || aview.length == 0)
        {
            throw new IllegalArgumentException("Specify at least one View to draw.");
        }
        Bitmap bitmap = SnapMediaUtils.a(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        if (bitmap == null)
        {
            bitmap = null;
        } else
        {
            Canvas canvas = new Canvas(bitmap);
            int k = aview.length;
            int l = 0;
            while (l < k) 
            {
                aview[l].draw(canvas);
                l++;
            }
        }
        return bitmap;
    }

    public static Bitmap a(Context context, int i, int j, int k)
    {
        Drawable drawable = context.getResources().getDrawable(i);
        if (drawable == null)
        {
            throw new NullPointerException();
        } else
        {
            Bitmap bitmap = SnapMediaUtils.a(j, k, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmap;
        }
    }
}
