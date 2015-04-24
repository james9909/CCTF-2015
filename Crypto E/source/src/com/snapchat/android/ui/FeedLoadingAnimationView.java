// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import com.snapchat.android.util.DrawingUtils;

public class FeedLoadingAnimationView extends View
{

    private Bitmap a;
    private Bitmap b;
    private final long c = SystemClock.elapsedRealtime();
    private final Rect d = new Rect();

    public FeedLoadingAnimationView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void onDraw(Canvas canvas)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        double d1;
        double d2;
        if (a == null)
        {
            a = DrawingUtils.a(getContext(), 0x7f020044, canvas.getWidth(), canvas.getHeight());
        }
        if (b == null)
        {
            b = DrawingUtils.a(getContext(), 0x7f020043, canvas.getWidth(), canvas.getHeight());
        }
        invalidate();
        i = a.getWidth();
        j = a.getHeight();
        int k = (int)(SystemClock.elapsedRealtime() - c);
        d1 = Math.sin((6.2831853071795862D * (double)k) / 1000D);
        d2 = Math.cos((6.2831853071795862D * (double)k) / 1000D);
        if (d1 <= 0.0D) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = a;
_L7:
        if (d2 <= 0.0D) goto _L4; else goto _L3
_L3:
        int l = (int)((double)i * Math.abs(d1));
        int i1 = j;
_L5:
        d.set((i - l) / 2, (j - i1) / 2, (l + i) / 2, (i1 + j) / 2);
        canvas.drawBitmap(bitmap, null, d, null);
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        bitmap = b;
        continue; /* Loop/switch isn't completed */
_L4:
        double d3 = j;
        double d4 = Math.abs(d1);
        i1 = (int)(d4 * d3);
        l = i;
          goto _L5
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
