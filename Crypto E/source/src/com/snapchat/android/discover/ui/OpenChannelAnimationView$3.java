// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.ValueAnimator;

// Referenced classes of package com.snapchat.android.discover.ui:
//            OpenChannelAnimationView

class a
    implements android.animation.eListener
{

    final OpenChannelAnimationView a;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        a.setBackgroundColor(((Integer)valueanimator.getAnimatedValue()).intValue());
    }

    A(OpenChannelAnimationView openchannelanimationview)
    {
        a = openchannelanimationview;
        super();
    }
}
