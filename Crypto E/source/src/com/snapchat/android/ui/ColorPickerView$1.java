// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

// Referenced classes of package com.snapchat.android.ui:
//            ColorPickerView

class a
    implements Runnable
{

    final ColorPickerView a;

    public void run()
    {
        if (!ColorPickerView.a(a) && ColorPickerView.b(a))
        {
            ColorPickerView.d(a).startAnimation(ColorPickerView.c(a));
            ColorPickerView.f(a).startAnimation(ColorPickerView.e(a));
            ColorPickerView.g(a).setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final ColorPickerView._cls1 a;

                public void onAnimationEnd(Animation animation)
                {
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                    AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
                    alphaanimation.setDuration(140L);
                    alphaanimation.setFillAfter(true);
                    a.a.findViewById(0x7f0a031a).startAnimation(alphaanimation);
                    a.a.findViewById(0x7f0a0319).startAnimation(alphaanimation);
                }

            
            {
                a = ColorPickerView._cls1.this;
                super();
            }
            });
            ColorPickerView.h(a).startAnimation(ColorPickerView.g(a));
            ColorPickerView.a(a, true);
        }
    }

    _cls1.a(ColorPickerView colorpickerview)
    {
        a = colorpickerview;
        super();
    }
}
