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
    implements android.animation.TouchListener._cls5
{

    boolean a;
    final com.snapchat.android.fragments.feed.TouchInterface.b b;
    final ChatConversation c;
    final FeedSwipeListViewTouchListener d;

    public void onAnimationCancel(Animator animator)
    {
        a = true;
    }

    public void onAnimationEnd(Animator animator)
    {
        if (a) goto _L2; else goto _L1
_L1:
        if (!FeedSwipeListViewTouchListener.d(d).b()) goto _L4; else goto _L3
_L3:
        b.b.setAlpha(1.0F);
        b.b.setText(c.c());
_L6:
        return;
_L4:
        b.b();
        return;
_L2:
        if (b.b)
        {
            b.b();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    edTouchInterface(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, com.snapchat.android.fragments.feed.TouchInterface touchinterface, ChatConversation chatconversation)
    {
        d = feedswipelistviewtouchlistener;
        b = touchinterface;
        c = chatconversation;
        super();
    }
}
