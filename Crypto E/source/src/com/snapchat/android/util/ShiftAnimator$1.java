// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.animation.ValueAnimator;
import android.view.View;

// Referenced classes of package com.snapchat.android.util:
//            ShiftAnimator

class a
    implements android.animation.imatorUpdateListener
{

    final ShiftAnimator a;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        ShiftAnimator.a(a, ((Integer)valueanimator.getAnimatedValue()).intValue());
        ShiftAnimator.b(a).setTranslationX(ShiftAnimator.a(a));
        if (ShiftAnimator.a(a) == 0)
        {
            ShiftAnimator.c(a).a();
        }
    }

    iftAnimatorInterface(ShiftAnimator shiftanimator)
    {
        a = shiftanimator;
        super();
    }
}
