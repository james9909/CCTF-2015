// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.animation.Animator;
import com.snapchat.android.ui.CashReceiverView;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements android.animation.rListener
{

    final ChatFragment a;

    public void onAnimationCancel(Animator animator)
    {
        ChatFragment.e(a, true);
    }

    public void onAnimationEnd(Animator animator)
    {
        if (!ChatFragment.K(a))
        {
            ChatFragment.L(a).a();
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    _cls9(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
