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
    implements android.view.animation.stener._cls1._cls1
{

    final a a;

    public void onAnimationEnd(Animation animation)
    {
        if (!FeedSwipeListViewTouchListener.b(a.a))
        {
            a.a.a(a.a, -1 + a.a);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1

/* anonymous class */
    class FeedSwipeListViewTouchListener._cls1
        implements android.view.animation.Animation.AnimationListener
    {

        final int a;
        final View b;
        final View c;
        final FeedSwipeListViewTouchListener d;

        public void onAnimationEnd(Animation animation)
        {
            TranslateAnimation translateanimation = new TranslateAnimation(FeedSwipeListViewTouchListener.a(d), 0.0F, 0.0F, 0.0F);
            translateanimation.setInterpolator(new BounceInterpolator());
            translateanimation.setDuration(400L);
            if (!FeedSwipeListViewTouchListener.b(d) && a > 0)
            {
                translateanimation.setAnimationListener(new FeedSwipeListViewTouchListener._cls1._cls1(this));
            } else
            {
                FeedSwipeListViewTouchListener.c(d);
            }
            c.startAnimation(translateanimation);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

            
            {
                d = feedswipelistviewtouchlistener;
                a = i;
                b = view;
                c = view1;
                super();
            }
    }

}
