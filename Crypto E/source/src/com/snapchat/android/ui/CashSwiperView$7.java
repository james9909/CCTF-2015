// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.view.View;
import java.util.List;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class imationEndListener extends imationEndListener
{

    final View a;
    final CashSwiperView b;

    public void onAnimationEnd(Animator animator)
    {
        CashSwiperView.f(b).remove(a);
        CashSwiperView.a(b, a);
    }

    imationEndListener(CashSwiperView cashswiperview, View view)
    {
        b = cashswiperview;
        a = view;
        super();
    }
}
