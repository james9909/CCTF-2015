// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

public class a extends AlphaAnimation
{

    final CaptionEditText a;

    _cls1.b(CaptionEditText captionedittext, boolean flag)
    {
        float f = 1.0F;
        a = captionedittext;
        float f1;
        if (flag)
        {
            f1 = 0.0F;
        } else
        {
            f1 = f;
        }
        if (!flag)
        {
            f = 0.0F;
        }
        super(f1, f);
        setDuration(410L);
        setFillAfter(true);
        setAnimationListener(new android.view.animation.Animation.AnimationListener(captionedittext, flag) {

            final CaptionEditText a;
            final boolean b;
            final CaptionEditText.FadeAnimation c;

            public void onAnimationEnd(Animation animation)
            {
                if (b)
                {
                    c.a.setVisibility(0);
                    c.a.setAlpha(1.0F);
                    c.a.setCursorVisible(true);
                } else
                {
                    c.a.setVisibility(4);
                    c.a.setAlpha(0.0F);
                }
                c.a.invalidate();
                c.a.clearAnimation();
                c.a.e = false;
                c.a.d = false;
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                c.a.d = true;
            }

            
            {
                c = CaptionEditText.FadeAnimation.this;
                a = captionedittext;
                b = flag;
                super();
            }
        });
    }
}
