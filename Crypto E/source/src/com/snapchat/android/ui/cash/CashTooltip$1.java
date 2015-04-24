// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.cash;

import android.animation.Animator;
import android.view.ViewPropertyAnimator;

// Referenced classes of package com.snapchat.android.ui.cash:
//            CashTooltip

class a
    implements android.animation.torListener
{

    final ViewPropertyAnimator a;
    final CashTooltip b;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        a.setListener(null);
        a.alpha(0.0F).setDuration(1000L).setStartDelay(3000L).start();
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    (CashTooltip cashtooltip, ViewPropertyAnimator viewpropertyanimator)
    {
        b = cashtooltip;
        a = viewpropertyanimator;
        super();
    }
}
