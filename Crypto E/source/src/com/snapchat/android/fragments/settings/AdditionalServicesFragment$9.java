// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.CheckBox;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            AdditionalServicesFragment

class a
    implements com.snapchat.android.location.ocationPermissionsDialogListener
{

    final AdditionalServicesFragment a;

    public void a(boolean flag)
    {
        if (!flag)
        {
            AdditionalServicesFragment.a(a).setChecked(false);
            return;
        } else
        {
            AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
            AdditionalServicesFragment.a(a, true);
            return;
        }
    }

    missionsDialogListener(AdditionalServicesFragment additionalservicesfragment)
    {
        a = additionalservicesfragment;
        super();
    }
}
