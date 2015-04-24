// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.drawable;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public class CircleBitmapDrawable extends Drawable
{

    private final RectF a = new RectF();
    private final BitmapShader b;
    private final Paint c = new Paint();
    private final Paint d = new Paint();
    private final float e;
    private final int f;
    private final int g;
    private float h;

    public CircleBitmapDrawable(Bitmap bitmap, float f1)
    {
        h = 0.0F;
        b = new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
        f = bitmap.getWidth();
        g = bitmap.getHeight();
        c.setStyle(android.graphics.Paint.Style.FILL);
        c.setAntiAlias(true);
        c.setShader(b);
        d.setStyle(android.graphics.Paint.Style.STROKE);
        d.setAntiAlias(true);
        e = f1;
    }

    public void a(float f1)
    {
        h = f1;
        d.setStrokeWidth(f1);
        invalidateSelf();
    }

    public void a(int i)
    {
        d.setColor(i);
        invalidateSelf();
    }

    public void draw(Canvas canvas)
    {
        Matrix matrix = new Matrix();
        RectF rectf = new RectF(0.0F, 0.0F, f, g);
        RectF rectf1 = new RectF(0.0F, 0.0F, f, g);
        matrix.setRectToRect(rectf1, a, android.graphics.Matrix.ScaleToFit.CENTER);
        matrix.mapRect(rectf);
        rectf.inset(h / 2.0F, h / 2.0F);
        matrix.setRectToRect(rectf1, rectf, android.graphics.Matrix.ScaleToFit.FILL);
        b.setLocalMatrix(matrix);
        int i = (int)e / 2;
        int j = (int)((float)i - h / 2.0F);
        canvas.drawCircle(i, i, j, c);
        if (h > 0.0F)
        {
            canvas.drawCircle(i, i, j, d);
        }
    }

    public int getOpacity()
    {
        return 0;
    }

    protected void onBoundsChange(Rect rect)
    {
        super.onBoundsChange(rect);
        a.set(rect);
    }

    public void setAlpha(int i)
    {
        c.setAlpha(i);
        d.setAlpha(i);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        c.setColorFilter(colorfilter);
        invalidateSelf();
    }
}
