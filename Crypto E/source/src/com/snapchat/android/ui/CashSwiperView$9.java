// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class imationEndListener extends imationEndListener
{

    final CashSwiperView a;

    public void onAnimationEnd(Animator animator)
    {
        a.setVisibility(8);
        a.a();
        CashSwiperView.j(a).s();
    }

    shSwiperListener(CashSwiperView cashswiperview)
    {
        a = cashswiperview;
        super();
    }
}
