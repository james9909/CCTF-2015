// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.system.Clock;

public class DiscoverButtonView extends View
{

    private final Paint a = new Paint();
    private final Paint b = new Paint();
    private final float c;
    private final float d;
    private final Clock e = new Clock();
    private float f;
    private float g;
    private long h;
    private float i;
    private boolean j;
    private final Runnable k = new Runnable() {

        final DiscoverButtonView a;

        public void run()
        {
            DiscoverButtonView.a(a, DiscoverButtonView.a(a).b());
            a.invalidate();
        }

            
            {
                a = DiscoverButtonView.this;
                super();
            }
    };
    private final Runnable l = new Runnable() {

        final DiscoverButtonView a;

        public void run()
        {
            a.invalidate();
        }

            
            {
                a = DiscoverButtonView.this;
                super();
            }
    };

    public DiscoverButtonView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        i = -1F;
        j = false;
        c = ViewUtils.a(2.0F, context);
        d = ViewUtils.a(1.0F, context);
        a.setColor(getResources().getColor(0x7f080037));
        a.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        a.setAntiAlias(true);
        a.setStrokeWidth(c);
        b.setColor(getResources().getColor(0x7f080037));
        b.setStyle(android.graphics.Paint.Style.STROKE);
        b.setAntiAlias(true);
    }

    static long a(DiscoverButtonView discoverbuttonview, long l1)
    {
        discoverbuttonview.h = l1;
        return l1;
    }

    static Clock a(DiscoverButtonView discoverbuttonview)
    {
        return discoverbuttonview.e;
    }

    private void a(float f1)
    {
        if (i == -1F)
        {
            i = (float)Math.round(0.67F * f1) - c / 2.0F;
        }
    }

    public void a()
    {
        if (j)
        {
            return;
        } else
        {
            j = true;
            postDelayed(k, 150L);
            return;
        }
    }

    public void b()
    {
        if (!j)
        {
            return;
        } else
        {
            j = false;
            removeCallbacks(l);
            invalidate();
            return;
        }
    }

    public void onDraw(Canvas canvas)
    {
        a(f);
        if (j)
        {
            long l1 = e.b() - h;
            if (l1 < 650L)
            {
                invalidate();
                b.setAlpha(255);
                b.setStrokeWidth(c);
                canvas.drawCircle(f, g, i, b);
                double d4 = ((double)l1 / 650D) * (double)i;
                canvas.drawCircle(f, g, (float)d4, a);
                return;
            }
            canvas.drawCircle(f, g, i, a);
            long l2 = (l1 - 650L) % 1450L;
            if (l2 < 1300L)
            {
                invalidate();
                double d1 = (double)l2 / 1300D;
                int i1 = (int)Math.round(255D * Math.sin(3.1415926535897931D * d1));
                b.setAlpha(i1);
                double d2 = (1.0D - d1) * (double)c + d1 * (double)d;
                b.setStrokeWidth((float)d2);
                double d3 = (1.0D - d1) * (double)i + d1 * (double)(f - d / 2.0F);
                canvas.drawCircle(f, g, (float)d3, b);
                return;
            } else
            {
                postDelayed(l, 150L);
                return;
            }
        } else
        {
            b.setAlpha(255);
            b.setStrokeWidth(c);
            canvas.drawCircle(f, g, i, b);
            return;
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        f = i1 / 2;
        g = j1 / 2;
        a(f);
    }
}
