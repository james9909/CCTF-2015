// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.BitmapPool;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.snapchat.android.ui:
//            LegacyCanvasView

class c
{

    public ArrayList a;
    final LegacyCanvasView b;
    private Paint c;
    private Matrix d;
    private Canvas e;
    private Bitmap f;
    private boolean g;

    static Canvas a(c c1)
    {
        return c1.e;
    }

    private void g()
    {
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(android.graphics.ection));
        e.drawRect(0.0F, 0.0F, LegacyCanvasView.a(b), LegacyCanvasView.b(b), paint);
    }

    public void a()
    {
        e();
        android.graphics.ection ection = SnapMediaUtils.a(b.getContext().getResources().getDisplayMetrics(), LegacyCanvasView.a(b), LegacyCanvasView.b(b), android.graphics.ection.b);
        Bitmap bitmap = BitmapPool.a().a(ection, true);
        if (bitmap != null)
        {
            f = bitmap;
        } else
        {
            f = SnapMediaUtils.a(LegacyCanvasView.a(b), LegacyCanvasView.b(b), android.graphics.ection.b);
        }
        e = new Canvas(f);
    }

    public void a(Canvas canvas)
    {
        if (g)
        {
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                f f1 = (a)iterator.next();
                if (g)
                {
                    f1.g(e);
                }
            } while (true);
            g = false;
        }
        canvas.drawBitmap(f, d, c);
    }

    public void a(c c1)
    {
        c1.c(e);
        a.add(c1);
    }

    public int b()
    {
        if (a.size() > 0)
        {
            return ((a)a.get(-1 + a.size())).a.getColor();
        } else
        {
            return 0;
        }
    }

    public boolean c()
    {
        return a.size() >= 4;
    }

    public boolean d()
    {
        return a.size() == 0;
    }

    public void e()
    {
        e = null;
        BitmapPool.a().a(f);
        f = null;
    }

    public void f()
    {
        if (a.size() != 0)
        {
            a.remove(-1 + a.size());
        }
        g();
        g = true;
        b.invalidate();
    }

    public (LegacyCanvasView legacycanvasview)
    {
        b = legacycanvasview;
        super();
        a = new ArrayList();
        c = new Paint();
        d = new Matrix();
        g = false;
        a();
        c.setAntiAlias(true);
        c.setFilterBitmap(false);
    }
}
