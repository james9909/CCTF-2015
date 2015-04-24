// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.view.ViewPropertyAnimator;

// Referenced classes of package com.snapchat.android.ui.here:
//            HereTooltip

class a
    implements android.animation.torListener
{

    final ViewPropertyAnimator a;
    final HereTooltip b;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        a.setListener(null);
        a.alpha(0.0F);
        a.setDuration(1000L);
        a.setStartDelay(3000L);
        a.start();
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    (HereTooltip heretooltip, ViewPropertyAnimator viewpropertyanimator)
    {
        b = heretooltip;
        a = viewpropertyanimator;
        super();
    }
}
