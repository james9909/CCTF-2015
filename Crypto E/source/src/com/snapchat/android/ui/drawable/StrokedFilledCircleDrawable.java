// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

public class StrokedFilledCircleDrawable extends Drawable
{

    private final Paint a = new Paint();
    private final Paint b = new Paint();
    private float c;
    private float d;

    public StrokedFilledCircleDrawable(int i, float f)
    {
        d = 0.0F;
        a.setStyle(android.graphics.Paint.Style.FILL);
        a.setAntiAlias(true);
        a.setColor(i);
        b.setStyle(android.graphics.Paint.Style.STROKE);
        b.setAntiAlias(true);
        c = f;
    }

    public void draw(Canvas canvas)
    {
        int i = (int)c / 2;
        int j = (int)((float)i - d / 2.0F);
        if (c > 0.0F)
        {
            canvas.drawCircle(i, i, j, a);
        }
        if (d > 0.0F)
        {
            canvas.drawCircle(i, i, j, b);
        }
    }

    public int getOpacity()
    {
        return 0;
    }

    public void setAlpha(int i)
    {
        a.setAlpha(i);
        b.setAlpha(i);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        a.setColorFilter(colorfilter);
        b.setColorFilter(colorfilter);
        invalidateSelf();
    }
}
