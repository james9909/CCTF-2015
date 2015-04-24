// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.stories.ui.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;

public abstract class StoriesSecondaryTextAnimation
    implements android.animation.Animator.AnimatorListener
{

    private final AnimatorSet a = new AnimatorSet();
    private boolean b;
    protected final View c;
    public final View d;

    public StoriesSecondaryTextAnimation(View view, View view1, long l)
    {
        c = view;
        d = view1;
        a.setStartDelay(l);
        a.setDuration(300L);
        a.addListener(this);
        a.play(b()).with(c());
    }

    public AnimatorSet a()
    {
        return a;
    }

    public abstract ObjectAnimator b();

    protected abstract ObjectAnimator c();

    public boolean d()
    {
        return b;
    }

    public void e()
    {
        b = true;
        a.cancel();
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }
}
