// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.MotionEvent;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class <init> extends android.view.orListener
{

    final CashSwiperView a;

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        if (ViewUtils.b(f1, a.getContext()) < -1500F)
        {
            CashSwiperView.b(a, f1);
        }
        return true;
    }

    private (CashSwiperView cashswiperview)
    {
        a = cashswiperview;
        super();
    }

    a(CashSwiperView cashswiperview, a a1)
    {
        this(cashswiperview);
    }
}
