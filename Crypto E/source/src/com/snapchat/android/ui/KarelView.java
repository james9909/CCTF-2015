// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.snapchat.android.util.SnapMediaUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

public class KarelView extends View
{

    private int a;
    private Handler b;
    private Random c;
    private Paint d;
    private Bitmap e;
    private int f;
    private int g;
    private int h;
    private Bitmap i;
    private Set j;
    private final Runnable k;

    public KarelView(Context context)
    {
        super(context);
        b = new Handler();
        c = new Random();
        d = new Paint();
        j = new HashSet();
        k = new Runnable() {

            final KarelView a;

            public void run()
            {
                if (KarelView.a(a).nextInt(4) == 0)
                {
                    Point point = new Point();
                    point.x = KarelView.a(KarelView.b(a), KarelView.c(a));
                    point.y = KarelView.a(KarelView.d(a), 8);
                    if (KarelView.e(a).add(point))
                    {
                        a.invalidate();
                        return;
                    }
                }
                if (KarelView.a(a).nextInt(3) != 0) goto _L2; else goto _L1
_L1:
                KarelView.f(a);
_L4:
                a.invalidate();
                return;
_L2:
                int l = KarelView.a(KarelView.g(a), 4);
                switch (l)
                {
                default:
                    throw new RuntimeException((new StringBuilder()).append("Something is rotten in the state of Denmark: ").append(l).toString());

                case 0: // '\0'
                    KarelView.h(a);
                    break;

                case 1: // '\001'
                    KarelView.i(a);
                    break;

                case 2: // '\002'
                    KarelView.j(a);
                    break;

                case 3: // '\003'
                    KarelView.k(a);
                    break;
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                a = KarelView.this;
                super();
            }
        };
    }

    public KarelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new Handler();
        c = new Random();
        d = new Paint();
        j = new HashSet();
        k = new _cls1();
    }

    public KarelView(Context context, AttributeSet attributeset, int l)
    {
        super(context, attributeset, l);
        b = new Handler();
        c = new Random();
        d = new Paint();
        j = new HashSet();
        k = new _cls1();
    }

    static int a(int l, int i1)
    {
        return b(l, i1);
    }

    private static Matrix a(int l, int i1, int j1, int k1, int l1)
    {
        Matrix matrix = new Matrix();
        matrix.postScale((float)j1 / (float)l, (float)k1 / (float)i1);
        int i2 = b(l1, 4);
        switch (i2)
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Something is rotten in the state of Denmark: ").append(i2).toString());

        case 1: // '\001'
            matrix.postRotate(90F, j1 / 2, k1 / 2);
            // fall through

        case 0: // '\0'
            return matrix;

        case 2: // '\002'
            matrix.postRotate(180F, j1 / 2, k1 / 2);
            return matrix;

        case 3: // '\003'
            matrix.postRotate(270F, j1 / 2, k1 / 2);
            break;
        }
        return matrix;
    }

    static Random a(KarelView karelview)
    {
        return karelview.c;
    }

    private static int b(int l, int i1)
    {
        int j1 = l % i1;
        if (j1 < 0)
        {
            j1 += i1;
        }
        return j1;
    }

    static int b(KarelView karelview)
    {
        return karelview.f;
    }

    static int c(KarelView karelview)
    {
        return karelview.a;
    }

    static int d(KarelView karelview)
    {
        return karelview.g;
    }

    static Set e(KarelView karelview)
    {
        return karelview.j;
    }

    static int f(KarelView karelview)
    {
        int l = karelview.h;
        karelview.h = l + 1;
        return l;
    }

    static int g(KarelView karelview)
    {
        return karelview.h;
    }

    static int h(KarelView karelview)
    {
        int l = karelview.f;
        karelview.f = l + 1;
        return l;
    }

    static int i(KarelView karelview)
    {
        int l = karelview.g;
        karelview.g = l + 1;
        return l;
    }

    static int j(KarelView karelview)
    {
        int l = karelview.f;
        karelview.f = l - 1;
        return l;
    }

    static int k(KarelView karelview)
    {
        int l = karelview.g;
        karelview.g = l - 1;
        return l;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        e = SnapMediaUtils.a(getContext(), 0x7f020140, false);
        i = SnapMediaUtils.a(getContext(), 0x7f020084, false);
        d.setAntiAlias(false);
        d.setFilterBitmap(false);
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        e.recycle();
        e = null;
        i.recycle();
        i = null;
    }

    public void onDraw(Canvas canvas)
    {
        int l = canvas.getWidth();
        int i1 = canvas.getHeight();
        a = l / (i1 / 8);
        if (i != null && j != null)
        {
            Matrix matrix1;
            for (Iterator iterator = j.iterator(); iterator.hasNext(); canvas.drawBitmap(i, matrix1, d))
            {
                Point point = (Point)iterator.next();
                matrix1 = a(i.getWidth(), i.getHeight(), l / a, i1 / 8, 0);
                int l1 = point.x * (l / a);
                int i2 = point.y * (i1 / 8);
                matrix1.postTranslate(l1, i2);
            }

        }
        if (e != null)
        {
            Matrix matrix = a(e.getWidth(), e.getHeight(), l / a, i1 / 8, h);
            int j1 = b(f, a) * (l / a);
            int k1 = b(g, 8) * (i1 / 8);
            matrix.postTranslate(j1, k1);
            canvas.drawBitmap(e, matrix, d);
        }
        b.removeCallbacks(k);
        b.postDelayed(k, 400L);
    }

    public void onMeasure(int l, int i1)
    {
        super.onMeasure(l, i1);
        setMeasuredDimension(l, i1);
    }
}
