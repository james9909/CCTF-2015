// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;

// Referenced classes of package com.snapchat.android.discover.ui:
//            CloseChannelAnimationView

class <init>
    implements android.animation.imatorListener
{

    final CloseChannelAnimationView a;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        if (CloseChannelAnimationView.a(a) != null)
        {
            CloseChannelAnimationView.a(a).a();
        }
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    private (CloseChannelAnimationView closechannelanimationview)
    {
        a = closechannelanimationview;
        super();
    }

    a(CloseChannelAnimationView closechannelanimationview, a a1)
    {
        this(closechannelanimationview);
    }
}
