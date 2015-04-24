// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.ValueAnimator;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class tionEndListener extends tionEndListener
{

    final a a;

    public void onAnimationEnd(Animator animator)
    {
        if (!CashSwiperView.n(a.a))
        {
            CashSwiperView.m(a.a);
            CashSwiperView.k(a.a);
            CashSwiperView.l(a.a).start();
        }
    }

    tionEndListener(tionEndListener tionendlistener)
    {
        a = tionendlistener;
        super();
    }

    // Unreferenced inner class com/snapchat/android/ui/CashSwiperView$11

/* anonymous class */
    class CashSwiperView._cls11
        implements Runnable
    {

        final CashSwiperView a;

        public void run()
        {
            if (!CashSwiperView.n(a))
            {
                CashSwiperView.o(a);
                CashSwiperView.l(a).start();
                CashSwiperView.l(a).addListener(new CashSwiperView._cls11._cls1(this));
            }
        }

            
            {
                a = cashswiperview;
                super();
            }
    }

}
