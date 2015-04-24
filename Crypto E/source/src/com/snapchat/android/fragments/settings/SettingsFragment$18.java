// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment, CustomStoryPrivacyFragment

class a
    implements android.view.
{

    final SettingsFragment a;

    public void onClick(View view)
    {
        android.app.OnClickListener onclicklistener = new android.app.<init>(a.getActivity());
        onclicklistener.setSingleChoiceItems(0x7f07000d, UserPrefs.i(), new android.content.DialogInterface.OnClickListener() {

            final SettingsFragment._cls18 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.a(SettingsFragment.PrivacyOptions.values()[UserPrefs.i()].toString(), SettingsFragment.PrivacyOptions.values()[i].toString());
                UserPrefs.d(i);
                SettingsFragment.c(a.a).setText(a.a.getResources().getStringArray(0x7f07000d)[i]);
                String s = SettingsFragment.PrivacyOptions.values()[i].toString();
                if (s.equals("CUSTOM"))
                {
                    BusProvider.a().a(new StartFragmentEvent(new CustomStoryPrivacyFragment()));
                } else
                {
                    (new SettingsTask("updateStoryPrivacy", new String[] {
                        s
                    })).executeOnExecutor(ScExecutors.b, new String[0]);
                }
                dialoginterface.dismiss();
            }

            
            {
                a = SettingsFragment._cls18.this;
                super();
            }
        });
        onclicklistener.show();
    }

    _cls1.a(SettingsFragment settingsfragment)
    {
        a = settingsfragment;
        super();
    }
}
