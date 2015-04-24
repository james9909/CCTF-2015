// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            FeedSwipeListViewTouchListener

class d
    implements android.animation.TouchListener._cls6
{

    boolean a;
    final AnimatorSet b;
    final com.snapchat.android.fragments.feed.TouchInterface.b c;
    final ChatConversation d;
    final FeedSwipeListViewTouchListener e;

    public void onAnimationCancel(Animator animator)
    {
        a = true;
    }

    public void onAnimationEnd(Animator animator)
    {
        if (a) goto _L2; else goto _L1
_L1:
        if (!b.getChildAnimations().isEmpty()) goto _L4; else goto _L3
_L3:
        if (!FeedSwipeListViewTouchListener.d(e).b()) goto _L6; else goto _L5
_L5:
        c.b.setAlpha(1.0F);
        c.b.setText(d.c());
_L8:
        return;
_L6:
        c.b();
        return;
_L4:
        c.b = b;
        b.start();
        return;
_L2:
        if (c.b)
        {
            c.b();
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    edTouchInterface(FeedSwipeListViewTouchListener feedswipelistviewtouchlistener, AnimatorSet animatorset, com.snapchat.android.fragments.feed.TouchInterface touchinterface, ChatConversation chatconversation)
    {
        e = feedswipelistviewtouchlistener;
        b = animatorset;
        c = touchinterface;
        d = chatconversation;
        super();
    }
}
