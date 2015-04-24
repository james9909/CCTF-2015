// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemArrowViewAdapterDecorator

class a extends com.snapchat.android.ui.orator._cls2
{

    final DSnapItemArrowViewAdapterDecorator a;

    public void onAnimationEnd(Animator animator)
    {
        if (DSnapItemArrowViewAdapterDecorator.a(a))
        {
            DSnapItemArrowViewAdapterDecorator.b(a).start();
            return;
        } else
        {
            DSnapItemArrowViewAdapterDecorator.d(a).setY(DSnapItemArrowViewAdapterDecorator.c(a));
            DSnapItemArrowViewAdapterDecorator.d(a).invalidate();
            return;
        }
    }

    (DSnapItemArrowViewAdapterDecorator dsnapitemarrowviewadapterdecorator)
    {
        a = dsnapitemarrowviewadapterdecorator;
        super();
    }
}
