// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.UpdateFeatureSettingsTask;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements com.snapchat.android.location.essor.LocationPermissionsDialogListener
{

    final LandingPageActivity a;

    public void a(boolean flag)
    {
        if (flag)
        {
            AnalyticsEvents.g();
            (new UpdateFeatureSettingsTask()).executeOnExecutor(ScExecutors.b, new String[0]);
        }
    }

    ngsTask(LandingPageActivity landingpageactivity)
    {
        a = landingpageactivity;
        super();
    }
}
