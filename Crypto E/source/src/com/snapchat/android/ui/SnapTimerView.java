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
import android.widget.TextView;
import com.snapchat.android.util.DrawingUtils;
import com.snapchat.android.util.ViewUtils;

public class SnapTimerView extends TextView
{

    private boolean a;
    private long b;
    private long c;
    private long d;
    private boolean e;
    private Bitmap f;
    private Paint g;
    private Bitmap h;
    private Paint i;
    private RectF j;

    public SnapTimerView(Context context)
    {
        super(context);
        b = 0L;
        c = 0L;
        d = 0L;
        e = false;
        b();
    }

    public SnapTimerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 0L;
        c = 0L;
        d = 0L;
        e = false;
        b();
    }

    public SnapTimerView(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        b = 0L;
        c = 0L;
        d = 0L;
        e = false;
        b();
    }

    private void a(int k, int l)
    {
        if (f == null || f.getWidth() != k || f.getHeight() != l)
        {
            if (f != null)
            {
                f.recycle();
            }
            int i1;
            if (a)
            {
                i1 = 0x7f0201f4;
            } else
            {
                i1 = 0x7f0201f2;
            }
            f = DrawingUtils.a(getContext(), i1, k, l);
            g.setShader(new BitmapShader(f, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
        }
        if (h == null || h.getWidth() != k || h.getHeight() != l)
        {
            if (h != null)
            {
                h.recycle();
            }
            int j1;
            if (a)
            {
                j1 = 0x7f0201f3;
            } else
            {
                j1 = 0x7f0201f1;
            }
            h = DrawingUtils.a(getContext(), j1, k, l);
            i.setShader(new BitmapShader(h, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
        }
    }

    private void b()
    {
        setTextColor(-1);
        setTextSize(1, 20F);
        setGravity(17);
        g = new Paint();
        g.setAntiAlias(true);
        i = new Paint();
        i.setAntiAlias(true);
        j = new RectF();
    }

    private void c()
    {
        int k = 2;
        CharSequence charsequence = getText();
        int l;
        byte byte0;
        int i1;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (charsequence != null)
        {
            l = charsequence.length();
        } else
        {
            l = 0;
        }
        if (l >= k)
        {
            k = l;
        }
        if (a)
        {
            byte0 = 18;
        } else
        {
            byte0 = 12;
        }
        i1 = (int)ViewUtils.a(byte0 + k * 12, getContext());
        layoutparams = getLayoutParams();
        layoutparams.width = i1;
        layoutparams.height = i1;
        setLayoutParams(layoutparams);
    }

    public void a()
    {
        e = false;
    }

    public void a(long l, long l1)
    {
        long l2 = l1 - l;
        long l3 = SystemClock.elapsedRealtime();
        b = l3 - l2;
        c = l3 + l;
        e = true;
        invalidate();
    }

    public void onDraw(Canvas canvas)
    {
        long l = 0L;
        if (e)
        {
            d = SystemClock.elapsedRealtime();
        }
        int k = getWidth();
        int i1 = getHeight();
        if (i1 != 0 && k != 0)
        {
            a(k, i1);
            int j1 = Math.max(k, i1) / 2;
            int k1 = (int)Math.ceil(Math.sqrt(Math.pow(j1, 2D) + Math.pow(j1, 2D)));
            int l1 = k1 - i1 / 2;
            int i2 = k1 - k / 2;
            j.set(0 - i2, 0 - l1, k + i2, i1 + l1);
            canvas.drawRect(j, i);
            long l2 = d - b;
            long l3 = c - b;
            float f1;
            if (l2 >= l)
            {
                if (l2 > l3)
                {
                    l = l3;
                } else
                {
                    invalidate((int)j.left, (int)j.top, (int)j.right, (int)j.bottom);
                    l = l2;
                }
            }
            f1 = (float)(l * 360L) / (float)l3;
            g.setAlpha(255);
            canvas.drawArc(j, -90F + f1, 360F - f1, true, g);
            g.setAlpha(85);
            canvas.drawArc(j, -90F, f1, true, g);
        }
        super.onDraw(canvas);
    }

    public void setIsStory(boolean flag)
    {
        if (a == flag)
        {
            return;
        }
        a = flag;
        if (f != null)
        {
            f.recycle();
            f = null;
        }
        if (h != null)
        {
            h.recycle();
            h = null;
        }
        c();
    }

    public void setText(String s)
    {
        super.setText(s);
        c();
    }
}
