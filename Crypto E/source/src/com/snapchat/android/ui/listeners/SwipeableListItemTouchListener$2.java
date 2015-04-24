// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.ValueAnimator;
import android.view.View;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            SwipeableListItemTouchListener

class a
    implements android.animation.ner
{

    final View a;
    final SwipeableListItemTouchListener b;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        float f = 1.0F;
        SwipeableListItemTouchListener.a(b, ((Integer)valueanimator.getAnimatedValue()).intValue());
        int i = SwipeableListItemTouchListener.a(b).b(b.e);
        float f1 = -SwipeableListItemTouchListener.b(b) / (float)i;
        if (f1 < 0.0F)
        {
            f1 = 0.0F;
        }
        if (f1 <= f)
        {
            f = f1;
        }
        SwipeableListItemTouchListener.a(b).a(a, SwipeableListItemTouchListener.b(b), f, SwipeableListItemTouchListener.c(b), SwipeableListItemTouchListener.d(b));
    }

    ipeableListItemInterface(SwipeableListItemTouchListener swipeablelistitemtouchlistener, View view)
    {
        b = swipeablelistitemtouchlistener;
        a = view;
        super();
    }
}
