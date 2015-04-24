// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.widget.ImageView;

// Referenced classes of package com.snapchat.android.fragments:
//            ScAcceptTermsFragment

class b
    implements android.animation.
{

    final ImageView a;
    final AnimatorSet b;
    final ScAcceptTermsFragment c;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        b.start();
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
        a.setVisibility(0);
    }

    (ScAcceptTermsFragment scaccepttermsfragment, ImageView imageview, AnimatorSet animatorset)
    {
        c = scaccepttermsfragment;
        a = imageview;
        b = animatorset;
        super();
    }
}
