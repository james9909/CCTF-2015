// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;

// Referenced classes of package com.snapchat.android.ui:
//            LegacyCanvasView

public class a
{

    public Paint a;
    final LegacyCanvasView b;
    private Path c;
    private float d;

    public void a(float f, float f1)
    {
        c.moveTo(f, f1);
    }

    public void a(float f, float f1, float f2, float f3)
    {
        c.quadTo(f, f1, f2, f3);
    }

    public void a(Canvas canvas)
    {
        canvas.drawPath(c, a);
    }

    public void a(Matrix matrix)
    {
        c.transform(matrix);
    }

    public void b(float f, float f1)
    {
        c.lineTo(f, f1);
    }

    public (LegacyCanvasView legacycanvasview, int i, float f)
    {
        b = legacycanvasview;
        super();
        d = f;
        c = new Path();
        a = new Paint();
        a.setColor(i);
        a.setAntiAlias(true);
        a.setStyle(android.graphics.Stroke.a);
        a.setStrokeWidth(6.5F * d);
        a.setStrokeJoin(android.graphics.Stroke.a);
        a.setStrokeCap(android.graphics.Stroke.a);
    }
}
