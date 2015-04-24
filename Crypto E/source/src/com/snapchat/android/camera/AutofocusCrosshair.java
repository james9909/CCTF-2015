// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;

public class AutofocusCrosshair extends RelativeLayout
{

    private AnimationSet a;
    private View b;

    public AutofocusCrosshair(Context context)
    {
        super(context);
        b = new View(context);
        int i = (int)(0.5F + 85F * context.getResources().getDisplayMetrics().density);
        b.setLayoutParams(new android.view.ViewGroup.LayoutParams(i, i));
        addView(b);
        float f = 1.6F * (float)i - 1.3F * (float)i;
        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, f / 2.0F, 0.0F, f / 2.0F);
        translateanimation.setDuration(100L);
        translateanimation.setFillAfter(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.6F, 1.3F, 1.6F, 1.3F);
        scaleanimation.setDuration(100L);
        scaleanimation.setFillAfter(true);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(600L);
        alphaanimation.setFillAfter(true);
        a = new AnimationSet(true);
        a.addAnimation(translateanimation);
        a.addAnimation(scaleanimation);
        a.addAnimation(alphaanimation);
        a.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final AutofocusCrosshair a;

            public void onAnimationEnd(Animation animation)
            {
                AutofocusCrosshair.a(a).setBackgroundDrawable(null);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                a = AutofocusCrosshair.this;
                super();
            }
        });
    }

    static View a(AutofocusCrosshair autofocuscrosshair)
    {
        return autofocuscrosshair.b;
    }

    private Point b(float f, float f1)
    {
        float f2 = (1.6F * (float)getWidth()) / 2.0F;
        float f3 = (1.6F * (float)getHeight()) / 2.0F;
        return new Point((int)(f - f2), (int)(f1 - f3));
    }

    public void a(float f, float f1)
    {
        b.setBackgroundResource(0x7f02011b);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)getLayoutParams();
        if (layoutparams == null)
        {
            return;
        } else
        {
            Point point = b(f, f1);
            layoutparams.setMargins(point.x, point.y, 0, 0);
            requestLayout();
            b.setVisibility(0);
            startAnimation(a);
            return;
        }
    }
}
