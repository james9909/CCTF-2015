// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            FeedSwipeListViewTouchListener

class a
    implements android.view.animation.Listener._cls2
{

    final View a;
    final FeedSwipeListViewTouchListener b;

    public void onAnimationEnd(Animation animation)
    {
        TranslateAnimation translateanimation = new TranslateAnimation(FeedSwipeListViewTouchListener.a(b), 0.0F, 0.0F, 0.0F);
        translateanimation.setInterpolator(new BounceInterpolator());
        translateanimation.setDuration(400L);
        a.startAnimation(translateanimation);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    (FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, View view)
    {
        b = feedswipelistviewtouchlistener;
        a = view;
        super();
    }
}
