// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import com.snapchat.android.util.animation.AnimatorEndListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapLoadingErrorViewHolder

class c extends AnimatorEndListener
{

    final boolean a;
    final DSnapLoadingErrorViewHolder b;
    private boolean c;

    public void onAnimationCancel(Animator animator)
    {
        c = true;
    }

    public void onAnimationEnd(Animator animator)
    {
        if (!a || !c)
        {
            b.c();
        }
    }

    (DSnapLoadingErrorViewHolder dsnaploadingerrorviewholder, boolean flag)
    {
        b = dsnaploadingerrorviewholder;
        a = flag;
        super();
        c = false;
    }
}
