// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.android.ui.layertype.LayerType;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageProvider;

public class ImageRenderer
{

    private Paint a;

    public ImageRenderer()
    {
    }

    private int a(FilterPageProvider filterpageprovider, int i, int j)
    {
        if (filterpageprovider.b(i) == FilterPageType.d)
        {
            return i;
        } else
        {
            return j;
        }
    }

    protected Paint a(FilterPage filterpage)
    {
        Paint paint = filterpage.c();
        if (paint == null)
        {
            paint = a;
        }
        return paint;
    }

    protected void a(float f, float f1, Canvas canvas, Paint paint)
    {
        for (int i = (int)f; (float)i < f1; i++)
        {
            paint.setAlpha((int)(255F * (1.0F - ((float)i - f) / (f1 - f))));
            canvas.drawLine(i, 0.0F, i, canvas.getHeight(), paint);
        }

        paint.setAlpha(255);
    }

    public void a(Canvas canvas, float f, Paint paint, Paint paint1)
    {
        if (paint == a && paint1 == a)
        {
            canvas.drawRect(0.0F, 0.0F, canvas.getWidth(), canvas.getHeight(), a);
            return;
        } else
        {
            paint.setAlpha(255);
            paint1.setAlpha(255);
            int i = Math.round(f);
            canvas.drawRect(0.0F, 0.0F, i, canvas.getHeight(), paint);
            canvas.drawRect(i, 0.0F, canvas.getWidth(), canvas.getHeight(), paint1);
            return;
        }
    }

    public void a(Paint paint)
    {
        a = paint;
    }

    public void a(SwipeViewState swipeviewstate, FilterPageProvider filterpageprovider, Canvas canvas, LayerType layertype)
    {
        int i = a(filterpageprovider, swipeviewstate.c(true), swipeviewstate.c(false));
        int j = a(filterpageprovider, swipeviewstate.d(true), swipeviewstate.d(false));
        Paint paint = a(filterpageprovider.a(i));
        Paint paint1 = a(filterpageprovider.a(j));
        a(canvas, swipeviewstate.y(), paint, paint1);
        if (swipeviewstate.r() && layertype == LayerType.b)
        {
            a(swipeviewstate.y(), swipeviewstate.z(), canvas, paint);
        }
    }
}
