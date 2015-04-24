// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.snapchat.android.ui:
//            CashReceiverView

class a
    implements android.animation.stener
{

    final View a;
    final CashReceiverView b;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        ViewGroup viewgroup = (ViewGroup)a.getParent();
        if (viewgroup != null)
        {
            viewgroup.removeView(a);
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    (CashReceiverView cashreceiverview, View view)
    {
        b = cashreceiverview;
        a = view;
        super();
    }
}
