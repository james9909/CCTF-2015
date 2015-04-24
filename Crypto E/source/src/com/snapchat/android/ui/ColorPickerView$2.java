// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.ui:
//            ColorPickerView

class a
    implements android.view.er
{

    final ColorPickerView a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        switch (motionevent.getAction())
        {
        default:
            return true;

        case 0: // '\0'
            ColorPickerView.a(a, motionevent);
            ColorPickerView.b(a, true);
            ColorPickerView.j(a).postDelayed(ColorPickerView.i(a), 300L);
            return true;

        case 1: // '\001'
            ColorPickerView.b(a, false);
            ColorPickerView.j(a).removeCallbacks(ColorPickerView.i(a));
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(200L);
            alphaanimation.setFillAfter(true);
            alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final ColorPickerView._cls2 a;

                public void onAnimationEnd(Animation animation)
                {
                    ScaleAnimation scaleanimation = new ScaleAnimation(26F, 1.0F, 1.0F, 1.0F, 1, 1.0F, 1, 0.5F);
                    scaleanimation.setDuration(140L);
                    ColorPickerView.f(a.a).startAnimation(scaleanimation);
                    TranslateAnimation translateanimation = new TranslateAnimation((int)ViewUtils.a(-23.5F, a.a.getContext()), 0.0F, 0.0F, 0.0F);
                    translateanimation.setDuration(140L);
                    translateanimation.setFillAfter(true);
                    ColorPickerView.d(a.a).startAnimation(translateanimation);
                    ColorPickerView.HorizontalExpandAnimation horizontalexpandanimation = new ColorPickerView.HorizontalExpandAnimation(a.a, ColorPickerView.h(a.a).getWidth(), (int)ViewUtils.a(12F, a.a.getContext()), ColorPickerView.h(a.a));
                    horizontalexpandanimation.setDuration(140L);
                    ColorPickerView.h(a.a).startAnimation(horizontalexpandanimation);
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                a = ColorPickerView._cls2.this;
                super();
            }
            });
            if (ColorPickerView.a(a))
            {
                a.findViewById(0x7f0a031a).startAnimation(alphaanimation);
                a.findViewById(0x7f0a0319).startAnimation(alphaanimation);
            }
            ColorPickerView.a(a, false);
            return true;

        case 2: // '\002'
            ColorPickerView.a(a, motionevent);
            return true;

        case 3: // '\003'
            ColorPickerView.b(a, false);
            return true;
        }
    }

    _cls1.a(ColorPickerView colorpickerview)
    {
        a = colorpickerview;
        super();
    }
}
