// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            CashSwiperView

class a
    implements android.media.aredListener
{

    final CashSwiperView a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        CashSwiperView.k(a);
        CashSwiperView.l(a).start();
        if (CashSwiperView.b(a) != null)
        {
            CashSwiperView.b(a).start();
            if (CashSwiperView.b(a).getDuration() > 5000)
            {
                CashSwiperView.m(a);
            }
        }
    }

    er(CashSwiperView cashswiperview)
    {
        a = cashswiperview;
        super();
    }
}
