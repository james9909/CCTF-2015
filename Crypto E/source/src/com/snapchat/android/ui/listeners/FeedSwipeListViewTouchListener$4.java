// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            FeedSwipeListViewTouchListener

class b
    implements android.animation.TouchListener._cls4
{

    final com.snapchat.android.fragments.feed.com.sna1 a;
    final String b;
    final FeedSwipeListViewTouchListener c;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
        a.sna1.setText(b);
    }

    (FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, com.snapchat.android.fragments.feed. , String s)
    {
        c = feedswipelistviewtouchlistener;
        a = ;
        b = s;
        super();
    }
}
