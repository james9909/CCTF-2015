// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.animation.Animator;
import android.view.View;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.animation.AnimatorEndListener;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a extends AnimatorEndListener
{

    final int a;
    final a b;

    public void onAnimationEnd(Animator animator)
    {
        ViewUtils.a(ChatFragment.R(b.b), ChatFragment.S(b.b), b.b.getActivity());
        ChatFragment.Q(b.b).setTranslationY(0.0F);
        ChatFragment.C(b.b).setTranslationY(0.0F);
        ChatFragment.g(b.b).scrollBy(0, a);
    }

    ( , int i)
    {
        b = ;
        a = i;
        super();
    }
}
