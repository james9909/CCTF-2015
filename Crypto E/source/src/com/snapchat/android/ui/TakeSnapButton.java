// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.ViewUtils;

public class TakeSnapButton extends View
{

    private final Paint a = new Paint();
    private final Paint b = new Paint();
    private final Paint c = new Paint();
    private final RectF d = new RectF();
    private final float e;
    private final float f;
    private float g;
    private float h;
    private long i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;
    private Bitmap n;
    private Runnable o;

    public TakeSnapButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        j = -1;
        l = true;
        o = new Runnable() {

            final TakeSnapButton a;

            public void run()
            {
                a.invalidate();
            }

            
            {
                a = TakeSnapButton.this;
                super();
            }
        };
        a.setAntiAlias(true);
        a.setStyle(android.graphics.Paint.Style.FILL);
        b.setAntiAlias(true);
        b.setStyle(android.graphics.Paint.Style.STROKE);
        e = ViewUtils.a(5F, context);
        f = ViewUtils.a(1.0F, context);
    }

    private void a(Canvas canvas, float f1)
    {
        a.setColor(-1);
        a.setAlpha(127);
        canvas.drawCircle(g, h, (float)j - e / 2.0F, a);
        a.setColor(0xffff0000);
        a.setAlpha(255);
        canvas.drawCircle(g, h, 0.75F * (1.0F - f1) * ((float)j - e / 2.0F), a);
        b.setColor(-1);
        b.setStrokeWidth(e);
        canvas.drawCircle(g, h, (float)j - e / 2.0F, b);
        b.setColor(0xff000000);
        b.setStrokeWidth(f);
        canvas.drawCircle(g, h, (float)j + f / 2.0F, b);
    }

    public void a()
    {
        i = SystemClock.elapsedRealtime();
        removeCallbacks(o);
        postDelayed(o, 125L);
        k = true;
        l = true;
    }

    public void b()
    {
        i = SystemClock.elapsedRealtime();
        m = true;
    }

    public void c()
    {
        removeCallbacks(o);
        m = false;
        k = false;
        l = false;
    }

    public void d()
    {
        invalidate();
    }

    public void onDraw(Canvas canvas)
    {
        if (n == null)
        {
            return;
        }
        if (j == -1)
        {
            j = -20 + (int)g;
        }
        if (k)
        {
            if (l)
            {
                invalidate();
            }
            long l1 = SystemClock.elapsedRealtime() - i;
            if (m)
            {
                float f1 = Math.max(0.0F, (float)(360L * (l1 - 500L)) / 10000F);
                a(canvas, 0.0F);
                canvas.drawArc(d, -90F, f1, true, c);
                return;
            } else
            {
                a(canvas, 1.0F - (float)Math.min(l1 - 125L, 375L) / 375F);
                return;
            }
        } else
        {
            a(canvas, 1.0F);
            return;
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        n = SnapMediaUtils.a(i1, j1, android.graphics.Bitmap.Config.ARGB_8888);
        if (n == null)
        {
            return;
        } else
        {
            Canvas canvas = new Canvas(n);
            b.setColor(0xffff0000);
            b.setStrokeWidth(e);
            g = i1 / 2;
            h = j1 / 2;
            j = -20 + (int)g;
            canvas.drawCircle(g, h, (float)j - e / 2.0F, b);
            BitmapShader bitmapshader = new BitmapShader(n, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
            c.setShader(bitmapshader);
            d.set(0.0F, 0.0F, i1, j1);
            return;
        }
    }
}
