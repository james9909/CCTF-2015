// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.CompoundButton;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            AdditionalServicesFragment

class a
    implements android.widget.eListener
{

    final AdditionalServicesFragment a;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        AdditionalServicesFragment.a(a, true);
        UserPrefs.l(flag);
        AnalyticsEvents.a("TOGGLE_SETTING_REPLAY", flag);
    }

    (AdditionalServicesFragment additionalservicesfragment)
    {
        a = additionalservicesfragment;
        super();
    }
}
