// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.animation.ValueAnimator;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements android.animation.torUpdateListener
{

    final View a;
    final StoriesFragment b;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        int i = ((Integer)valueanimator.getAnimatedValue()).intValue();
        android.view.ams ams = a.getLayoutParams();
        ams.height = i;
        a.setLayoutParams(ams);
    }

    (StoriesFragment storiesfragment, View view)
    {
        b = storiesfragment;
        a = view;
        super();
    }
}
