// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.DialogInterface;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements android.content.kListener
{

    final LandingPageActivity a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        PhoneVerificationAnalytics.a(true, UserPrefs.g());
        dialoginterface.cancel();
    }

    ationAnalytics(LandingPageActivity landingpageactivity)
    {
        a = landingpageactivity;
        super();
    }
}
