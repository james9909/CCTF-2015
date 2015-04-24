// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.media.MediaPlayer;
import com.snapchat.android.util.MathUtils;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class a
    implements android.animation.matorUpdateListener
{

    final CashSwiperView a;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        float f = MathUtils.a(0.0F, 1.0F, (float)Math.log(((Float)valueanimator.getAnimatedValue()).floatValue()));
        if (CashSwiperView.b(a) != null)
        {
            CashSwiperView.b(a).setVolume(f, f);
        }
    }

    pdateListener(CashSwiperView cashswiperview)
    {
        a = cashswiperview;
        super();
    }
}
