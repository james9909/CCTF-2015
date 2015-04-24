// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.widget.CompoundButton;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            SettingsPhoneVerificationFragment

class a
    implements android.widget.er
{

    final SettingsPhoneVerificationFragment a;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        String as[] = new String[1];
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        as[0] = s;
        (new SettingsTask("updateSearchableByPhoneNumber", as)).executeOnExecutor(ScExecutors.b, new String[0]);
        AnalyticsEvents.b(flag);
    }

    (SettingsPhoneVerificationFragment settingsphoneverificationfragment)
    {
        a = settingsphoneverificationfragment;
        super();
    }
}
