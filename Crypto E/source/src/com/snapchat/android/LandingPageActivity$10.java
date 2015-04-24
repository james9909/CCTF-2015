// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.DialogInterface;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.ForceVerificationEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements android.content.Listener
{

    final ForceVerificationEvent a;
    final LandingPageActivity b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        PhoneVerificationAnalytics.a(false, UserPrefs.g());
        b.o.a(new StartFragmentEvent(new SettingsPhoneVerificationFragment(a)));
    }

    ficationEvent(LandingPageActivity landingpageactivity, ForceVerificationEvent forceverificationevent)
    {
        b = landingpageactivity;
        a = forceverificationevent;
        super();
    }
}
