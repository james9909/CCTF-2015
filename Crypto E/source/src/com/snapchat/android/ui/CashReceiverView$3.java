// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.view.View;

// Referenced classes of package com.snapchat.android.ui:
//            CashReceiverView

class h
    implements android.animation.torUpdateListener
{

    final View a;
    final float b;
    final float c;
    final float d;
    final float e;
    final float f;
    final float g;
    final float h;
    final CashReceiverView i;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        float f1 = 5000F * ((Float)valueanimator.getAnimatedValue()).floatValue();
        a.setTranslationX((float)(Math.sin(f1 * b + c) * (double)d + (double)e));
        a.setTranslationY(f + f1 * g);
        a.setRotation((float)(-Math.sin(f1 * b + c) * (double)h));
    }

    ateListener(CashReceiverView cashreceiverview, View view, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7)
    {
        i = cashreceiverview;
        a = view;
        b = f1;
        c = f2;
        d = f3;
        e = f4;
        f = f5;
        g = f6;
        h = f7;
        super();
    }
}
