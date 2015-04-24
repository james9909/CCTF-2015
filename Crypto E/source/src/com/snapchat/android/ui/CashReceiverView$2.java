// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.view.ViewGroup;

// Referenced classes of package com.snapchat.android.ui:
//            CashReceiverView

class c
    implements android.animation.stener
{

    final float a;
    final float b;
    final ostDirection c;
    final CashReceiverView d;

    public void onAnimationCancel(Animator animator)
    {
        CashReceiverView.a(d, true);
    }

    public void onAnimationEnd(Animator animator)
    {
        if (CashReceiverView.c(d))
        {
            return;
        }
        if (a + b < 0.0F)
        {
            CashReceiverView.a(d, ostDirection.a);
            return;
        }
        if (a + b + (float)CashReceiverView.b(d).getMeasuredWidth() > (float)d.getMeasuredWidth())
        {
            CashReceiverView.a(d, ostDirection.b);
            return;
        } else
        {
            CashReceiverView.a(d, c);
            return;
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    ostDirection(CashReceiverView cashreceiverview, float f, float f1, ostDirection ostdirection)
    {
        d = cashreceiverview;
        a = f;
        b = f1;
        c = ostdirection;
        super();
    }
}
