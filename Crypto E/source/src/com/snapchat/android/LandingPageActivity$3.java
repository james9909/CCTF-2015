// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.util.eventbus.GlobalLayoutEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements android.view.balLayoutListener
{

    final LandingPageActivity a;

    public void onGlobalLayout()
    {
        a.o.a(new GlobalLayoutEvent());
    }

    youtEvent(LandingPageActivity landingpageactivity)
    {
        a = landingpageactivity;
        super();
    }
}
