// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.ViewPropertyAnimator;

// Referenced classes of package com.snapchat.android.ui:
//            QuickSnapOnboardingOverlay

class a
    implements Runnable
{

    final QuickSnapOnboardingOverlay a;

    public void run()
    {
        QuickSnapOnboardingOverlay.a(a, erlayMode.a);
        ViewPropertyAnimator viewpropertyanimator = a.animate();
        viewpropertyanimator.alpha(0.0F);
        viewpropertyanimator.setDuration(2000L);
        viewpropertyanimator.start();
    }

    erlayMode(QuickSnapOnboardingOverlay quicksnaponboardingoverlay)
    {
        a = quicksnaponboardingoverlay;
        super();
    }
}
