// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            FeedSwipeListViewTouchListener

class c
    implements android.animation.TouchListener._cls3
{

    boolean a;
    final com.snapchat.android.fragments.feed.com.sna_81_ b;
    final ChatConversation c;
    final FeedSwipeListViewTouchListener d;

    public void onAnimationCancel(Animator animator)
    {
        a = true;
    }

    public void onAnimationEnd(Animator animator)
    {
        if (!a)
        {
            b.snaq();
            Animator animator1 = FeedSwipeListViewTouchListener.a(d, b, c);
            b.snaq = animator1;
            animator1.start();
        } else
        if (b.snaq)
        {
            b.snaq();
            return;
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
        b.sna_81_.setGravity(16);
    }

    (FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, com.snapchat.android.fragments.feed. , ChatConversation chatconversation)
    {
        d = feedswipelistviewtouchlistener;
        b = ;
        c = chatconversation;
        super();
    }
}
