// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import com.snapchat.android.util.animation.AnimatorEndListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView

class ndListener extends AnimatorEndListener
{

    final DSnapView a;

    public void onAnimationEnd(Animator animator)
    {
        a.h();
    }

    ndListener(DSnapView dsnapview)
    {
        a = dsnapview;
        super();
    }
}
