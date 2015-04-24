// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class imationEndListener extends imationEndListener
{

    final String a;
    final CashSwiperView b;

    public void onAnimationEnd(Animator animator)
    {
        CashSwiperView.d(b).setText(a);
    }

    imationEndListener(CashSwiperView cashswiperview, String s)
    {
        b = cashswiperview;
        a = s;
        super();
    }
}
