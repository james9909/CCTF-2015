// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;

// Referenced classes of package com.snapchat.android.discover.ui:
//            OpenChannelAnimationView

class imatorEndListener extends imatorEndListener
{

    final imationEndCall a;
    final OpenChannelAnimationView b;

    public void onAnimationEnd(Animator animator)
    {
        OpenChannelAnimationView.a(b, false);
        if (a != null)
        {
            a.a();
        }
    }

    imationEndCall(OpenChannelAnimationView openchannelanimationview, imationEndCall imationendcall)
    {
        b = openchannelanimationview;
        a = imationendcall;
        super(openchannelanimationview, null);
    }
}
