// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

// Referenced classes of package com.snapchat.android.ui.here:
//            LockToStreamView

class  extends AnimatorListenerAdapter
{

    final LockToStreamView a;

    public void onAnimationEnd(Animator animator)
    {
        LockToStreamView.a(a, false);
        a.c();
    }

    (LockToStreamView locktostreamview)
    {
        a = locktostreamview;
        super();
    }
}
