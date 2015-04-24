// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.view.View;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            SwipeableListItemTouchListener

class b
    implements android.animation.TouchListener._cls3
{

    final View a;
    final boolean b;
    final SwipeableListItemTouchListener c;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        int i = c.a(a);
        if (SwipeableListItemTouchListener.a(c) != null && i != -1)
        {
            SwipeableListItemTouchListener.a(c).a(a, i, b);
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    ipeableListItemInterface(SwipeableListItemTouchListener swipeablelistitemtouchlistener, View view, boolean flag)
    {
        c = swipeablelistitemtouchlistener;
        a = view;
        b = flag;
        super();
    }
}
