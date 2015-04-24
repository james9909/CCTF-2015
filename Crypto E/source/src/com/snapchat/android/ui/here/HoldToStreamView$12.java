// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView

class a extends AnimatorListenerAdapter
{

    final HoldToStreamView a;

    public void onAnimationEnd(Animator animator)
    {
        if (a.g.getVisibility() != 4)
        {
            HoldToStreamView.g(a);
        }
    }

    (HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
