// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.animation.ValueAnimator;
import android.view.View;

public class ShiftAnimator
{
    public static interface ShiftAnimatorInterface
    {

        public abstract void a();
    }


    private int a;
    private ShiftAnimatorInterface b;
    private View c;
    private int d;
    private int e;
    private int f;

    public ShiftAnimator(View view, int i, int j, ShiftAnimatorInterface shiftanimatorinterface)
    {
        a = 0;
        c = view;
        d = i;
        e = j;
        b = shiftanimatorinterface;
        f = 150;
    }

    static int a(ShiftAnimator shiftanimator)
    {
        return shiftanimator.a;
    }

    static int a(ShiftAnimator shiftanimator, int i)
    {
        shiftanimator.a = i;
        return i;
    }

    static View b(ShiftAnimator shiftanimator)
    {
        return shiftanimator.c;
    }

    static ShiftAnimatorInterface c(ShiftAnimator shiftanimator)
    {
        return shiftanimator.b;
    }

    public void a()
    {
        a = d;
        int ai[] = new int[2];
        ai[0] = d;
        ai[1] = e;
        ValueAnimator valueanimator = ValueAnimator.ofInt(ai).setDuration(f);
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final ShiftAnimator a;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                ShiftAnimator.a(a, ((Integer)valueanimator1.getAnimatedValue()).intValue());
                ShiftAnimator.b(a).setTranslationX(ShiftAnimator.a(a));
                if (ShiftAnimator.a(a) == 0)
                {
                    ShiftAnimator.c(a).a();
                }
            }

            
            {
                a = ShiftAnimator.this;
                super();
            }
        });
        valueanimator.start();
    }
}
