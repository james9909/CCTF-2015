// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.snapchat.android.cash.PointGenerator;
import com.snapchat.android.util.ViewUtils;
import java.util.Random;

// Referenced classes of package com.snapchat.android.ui.cash:
//            ParticleView

public class ParticleSparkleView extends ViewGroup
    implements ParticleView.ParticleAnimationListener
{

    Random a;
    private Drawable b;
    private int c;
    private Context d;
    private PointGenerator e;
    private boolean f;
    private int g;
    private int h;

    public ParticleSparkleView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new Random();
        f = false;
        d = context;
        a(context, attributeset);
        c();
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.snapchat.android.R.styleable.ParticleSparkleView);
        b = typedarray.getDrawable(0);
        c = typedarray.getInt(1, 1);
        typedarray.recycle();
        return;
        Exception exception;
        exception;
        typedarray.recycle();
        throw exception;
    }

    private void c()
    {
        g = (int)ViewUtils.a(25F, d);
        h = (int)ViewUtils.a(125F, d);
    }

    private void d()
    {
        ParticleView particleview = new ParticleView(d);
        particleview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        particleview.setImageDrawable(b);
        particleview.setAnimationListener(this);
        particleview.setCenterPoint(e.a());
        particleview.setFinalSize(getParticleFinalSize());
        particleview.setAlpha(0.0F);
        addView(particleview);
        particleview.a();
    }

    public void a()
    {
        if (!f)
        {
            f = true;
            int i = 0;
            while (i < c) 
            {
                d();
                i++;
            }
        }
    }

    public void a(PointGenerator pointgenerator)
    {
        e = pointgenerator;
    }

    public void a(ParticleView particleview)
    {
        e.a(particleview.getCenterPoint());
        removeView(particleview);
        if (f)
        {
            d();
        }
    }

    public void b()
    {
        f = false;
    }

    public Drawable getParticle()
    {
        return b;
    }

    protected int getParticleFinalSize()
    {
        return a.nextInt(h - g) + g;
    }

    public void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            ParticleView particleview = (ParticleView)getChildAt(j1);
            int k1 = particleview.getMeasuredWidth();
            int l1 = particleview.getMeasuredHeight();
            Point point = particleview.getCenterPoint();
            particleview.layout(point.x - k1 / 2, point.y - l1 / 2, point.x + k1 / 2, point.y + l1 / 2);
        }

    }

    protected void onMeasure(int i, int j)
    {
        int k = getChildCount();
        setMeasuredDimension(i, j);
        for (int l = 0; l < k; l++)
        {
            ParticleView particleview = (ParticleView)getChildAt(l);
            int i1 = android.view.View.MeasureSpec.makeMeasureSpec(particleview.getFinalSize(), 0x40000000);
            measureChild(particleview, i1, i1);
        }

    }
}
