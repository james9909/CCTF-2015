// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.snapchat.android.camera:
//            AutofocusCrosshair

class a
    implements android.view.animation.stener
{

    final AutofocusCrosshair a;

    public void onAnimationEnd(Animation animation)
    {
        AutofocusCrosshair.a(a).setBackgroundDrawable(null);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    r(AutofocusCrosshair autofocuscrosshair)
    {
        a = autofocuscrosshair;
        super();
    }
}
