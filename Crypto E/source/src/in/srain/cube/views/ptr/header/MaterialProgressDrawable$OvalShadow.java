// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.drawable.shapes.OvalShape;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

class b extends OvalShape
{

    final MaterialProgressDrawable a;
    private RadialGradient b;
    private int c;
    private Paint d;
    private int e;

    public void draw(Canvas canvas, Paint paint)
    {
        int i = a.getBounds().width();
        int j = a.getBounds().height();
        canvas.drawCircle(i / 2, j / 2, e / 2 + c, d);
        canvas.drawCircle(i / 2, j / 2, e / 2, paint);
    }

    public (MaterialProgressDrawable materialprogressdrawable, int i, int j)
    {
        a = materialprogressdrawable;
        super();
        d = new Paint();
        c = i;
        e = j;
        b = new RadialGradient(e / 2, e / 2, c, new int[] {
            0x3d000000, 0
        }, null, android.graphics.le.OvalShadow.c);
        d.setShader(b);
    }
}
