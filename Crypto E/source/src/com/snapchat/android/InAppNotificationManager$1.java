// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.animation.Animator;

// Referenced classes of package com.snapchat.android:
//            InAppNotificationManager

class a
    implements android.animation.._cls1
{

    final InAppNotificationManager a;

    public void onAnimationCancel(Animator animator)
    {
        a.a(8);
    }

    public void onAnimationEnd(Animator animator)
    {
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
        a.a(0);
    }

    (InAppNotificationManager inappnotificationmanager)
    {
        a = inappnotificationmanager;
        super();
    }
}
