// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.Button;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            LoginFragment

class a
    implements Runnable
{

    final LoginFragment a;

    public void run()
    {
        Drawable adrawable[] = new Drawable[2];
        adrawable[0] = new ColorDrawable(LoginFragment.h());
        adrawable[1] = new ColorDrawable(LoginFragment.i());
        TransitionDrawable transitiondrawable = new TransitionDrawable(adrawable);
        int i = LoginFragment.f(a).getPaddingBottom();
        LoginFragment.f(a).setBackgroundDrawable(transitiondrawable);
        LoginFragment.f(a).setPadding(i, i, i, i);
        transitiondrawable.startTransition(400);
    }

    (LoginFragment loginfragment)
    {
        a = loginfragment;
        super();
    }
}
