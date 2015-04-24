// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

public class a extends TranslateAnimation
{

    final CaptionEditText a;

    _cls1.d(CaptionEditText captionedittext, int i, int j, int k, int l, boolean flag)
    {
        a = captionedittext;
        super(0, i, 0, j, 0, k, 0, l);
        setDuration(410L);
        setFillAfter(true);
        setInterpolator(new DecelerateInterpolator());
        captionedittext.a(0, 0);
        setAnimationListener(new android.view.animation.Animation.AnimationListener(captionedittext, flag, j, l) {

            final CaptionEditText a;
            final boolean b;
            final int c;
            final int d;
            final CaptionEditText.SlideAnimation e;

            public void onAnimationEnd(Animation animation)
            {
                if (b)
                {
                    e.a.setVisibility(0);
                    e.a.setAlpha(1.0F);
                    e.a.setCursorVisible(true);
                } else
                {
                    e.a.setVisibility(4);
                    e.a.setAlpha(0.0F);
                }
                e.a.invalidate();
                e.a.a(c, d);
                e.a.clearAnimation();
                e.a.e = false;
                e.a.d = false;
                CaptionEditText.a(e.a, false);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                e.a.d = true;
            }

            
            {
                e = CaptionEditText.SlideAnimation.this;
                a = captionedittext;
                b = flag;
                c = i;
                d = j;
                super();
            }
        });
    }
}
