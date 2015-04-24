// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.ValueAnimator;
import android.graphics.Paint;

// Referenced classes of package com.snapchat.android.ui.here:
//            LockToStreamView

class a
    implements android.animation.torUpdateListener
{

    final LockToStreamView a;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        int i = ((Integer)valueanimator.getAnimatedValue()).intValue();
        LockToStreamView.a(a).setAlpha(i);
        a.invalidate();
    }

    stener(LockToStreamView locktostreamview)
    {
        a = locktostreamview;
        super();
    }
}
