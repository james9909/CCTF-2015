// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.animation.Animator;

// Referenced classes of package com.snapchat.android:
//            InAppNotificationManager

class a
    implements android.animation.._cls2
{

    final InAppNotificationManager a;

    public void onAnimationCancel(Animator animator)
    {
        a.a(8);
    }

    public void onAnimationEnd(Animator animator)
    {
        a.a(8);
        InAppNotificationManager.a(a);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    (InAppNotificationManager inappnotificationmanager)
    {
        a = inappnotificationmanager;
        super();
    }
}
