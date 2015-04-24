// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;

public class StoreHouseBarItem extends Animation
{

    public PointF a;
    public float b;
    private final Paint c;
    private float d;
    private float e;
    private PointF f;
    private PointF g;

    public void a(float f1)
    {
        c.setAlpha((int)(255F * f1));
    }

    public void a(float f1, float f2)
    {
        d = f1;
        e = f2;
        super.start();
    }

    public void a(int i)
    {
        b = i + -(new Random()).nextInt(i);
    }

    public void a(Canvas canvas)
    {
        canvas.drawLine(f.x, f.y, g.x, g.y, c);
    }

    protected void applyTransformation(float f1, Transformation transformation)
    {
        float f2 = d;
        a(f2 + f1 * (e - f2));
    }
}
