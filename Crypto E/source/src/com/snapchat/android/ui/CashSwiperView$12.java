// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class mationEndListener extends mationEndListener
{

    final CashSwiperView a;

    public void onAnimationEnd(Animator animator)
    {
        if (CashSwiperView.b(a) != null && CashSwiperView.n(a))
        {
            CashSwiperView.b(a).stop();
            CashSwiperView.b(a).release();
            CashSwiperView.a(a, null);
        }
        CashSwiperView.b(a, false);
    }

    mationEndListener(CashSwiperView cashswiperview)
    {
        a = cashswiperview;
        super();
    }
}
