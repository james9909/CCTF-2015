// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.animation.Animator;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.fragments:
//            ScAcceptTermsFragment

class b
    implements android.animation.r
{

    final TextView a;
    final TextView b;
    final ScAcceptTermsFragment c;

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
        a.setVisibility(0);
        b.setVisibility(0);
    }

    (ScAcceptTermsFragment scaccepttermsfragment, TextView textview, TextView textview1)
    {
        c = scaccepttermsfragment;
        a = textview;
        b = textview1;
        super();
    }
}
