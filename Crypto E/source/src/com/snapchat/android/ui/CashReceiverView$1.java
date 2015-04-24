// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.view.ViewGroup;

// Referenced classes of package com.snapchat.android.ui:
//            CashReceiverView

class c
    implements android.animation.torUpdateListener
{

    final float a;
    final float b;
    final float c;
    final CashReceiverView d;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        float f1;
        float f = ((Float)CashReceiverView.a(d).getAnimatedValue()).floatValue();
        CashReceiverView.b(d).setTranslationY(f * a * (f - 1.0F));
        f1 = b + f * c;
        if (f1 >= 0.0F) goto _L2; else goto _L1
_L1:
        f1 = -f1;
_L4:
        CashReceiverView.b(d).setTranslationX(f1);
        return;
_L2:
        if (f1 + (float)CashReceiverView.b(d).getMeasuredWidth() > (float)d.getMeasuredWidth())
        {
            f1 -= 2.0F * ((f1 + (float)CashReceiverView.b(d).getMeasuredWidth()) - (float)d.getMeasuredWidth());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ateListener(CashReceiverView cashreceiverview, float f, float f1, float f2)
    {
        d = cashreceiverview;
        a = f;
        b = f1;
        c = f2;
        super();
    }
}
