// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.Random;

public class ParticleView extends ImageView
{
    public static interface ParticleAnimationListener
    {

        public abstract void a(ParticleView particleview);
    }


    private static Random d = new Random();
    private Point a;
    private int b;
    private ParticleAnimationListener c;

    public ParticleView(Context context)
    {
        super(context);
    }

    public ParticleView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    static ParticleAnimationListener a(ParticleView particleview)
    {
        return particleview.c;
    }

    public void a()
    {
        AnimatorSet animatorset = new AnimatorSet();
        int i = d.nextInt(300);
        int j = 300 + d.nextInt(100);
        int k = 300 + d.nextInt(100);
        setScaleX(0.3F);
        setScaleY(0.3F);
        PropertyValuesHolder propertyvaluesholder = PropertyValuesHolder.ofFloat(SCALE_X, new float[] {
            1.0F
        });
        PropertyValuesHolder propertyvaluesholder1 = PropertyValuesHolder.ofFloat(SCALE_Y, new float[] {
            1.0F
        });
        PropertyValuesHolder propertyvaluesholder2 = PropertyValuesHolder.ofFloat(ALPHA, new float[] {
            1.0F
        });
        PropertyValuesHolder propertyvaluesholder3 = PropertyValuesHolder.ofFloat(SCALE_X, new float[] {
            0.3F
        });
        PropertyValuesHolder propertyvaluesholder4 = PropertyValuesHolder.ofFloat(SCALE_Y, new float[] {
            0.3F
        });
        PropertyValuesHolder propertyvaluesholder5 = PropertyValuesHolder.ofFloat(ALPHA, new float[] {
            0.0F
        });
        ObjectAnimator objectanimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] {
            propertyvaluesholder, propertyvaluesholder1, propertyvaluesholder2
        }).setDuration(j);
        ObjectAnimator objectanimator1 = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] {
            propertyvaluesholder3, propertyvaluesholder4, propertyvaluesholder5
        }).setDuration(k);
        animatorset.play(objectanimator).after(i);
        animatorset.play(objectanimator1).after(objectanimator);
        animatorset.addListener(new com.snapchat.android.ui.CashSwiperView.AnimationEndListener(this) {

            final ParticleView a;
            final ParticleView b;

            public void onAnimationEnd(Animator animator)
            {
                ParticleView.a(b).a(a);
            }

            
            {
                b = ParticleView.this;
                a = particleview1;
                super();
            }
        });
        animatorset.start();
    }

    public Point getCenterPoint()
    {
        return a;
    }

    public int getFinalSize()
    {
        return b;
    }

    public void setAnimationListener(ParticleAnimationListener particleanimationlistener)
    {
        c = particleanimationlistener;
    }

    public void setCenterPoint(Point point)
    {
        a = point;
    }

    public void setFinalSize(int i)
    {
        b = i;
    }

}
