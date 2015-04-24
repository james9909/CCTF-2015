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

class c
    implements android.view.animation.Listener._cls1
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
            translateanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final FeedSwipeListViewTouchListener._cls1 a;

                public void onAnimationEnd(Animation animation1)
                {
                    if (!FeedSwipeListViewTouchListener.b(a.d))
                    {
                        a.d.a(a.b, -1 + a.a);
                    }
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                a = FeedSwipeListViewTouchListener._cls1.this;
                super();
            }
            });
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

    _cls1.a(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, int i, View view, View view1)
    {
        d = feedswipelistviewtouchlistener;
        a = i;
        b = view;
        c = view1;
        super();
    }
}
