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
    implements android.content.kListener
{

    final ment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AnalyticsEvents.a(cyOptions.values()[UserPrefs.i()].toString(), cyOptions.values()[i].toString());
        UserPrefs.d(i);
        SettingsFragment.c(a.a).setText(a.a.getResources().getStringArray(0x7f07000d)[i]);
        String s = cyOptions.values()[i].toString();
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

    ment(ment ment)
    {
        a = ment;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$18

/* anonymous class */
    class SettingsFragment._cls18
        implements android.view.View.OnClickListener
    {

        final SettingsFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setSingleChoiceItems(0x7f07000d, UserPrefs.i(), new SettingsFragment._cls18._cls1(this));
            builder.show();
        }

            
            {
                a = settingsfragment;
                super();
            }
    }

}
