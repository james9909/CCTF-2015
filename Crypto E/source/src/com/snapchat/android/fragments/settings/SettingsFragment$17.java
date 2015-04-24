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

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a
    implements android.view.
{

    final SettingsFragment a;

    public void onClick(View view)
    {
        android.app.OnClickListener onclicklistener = new android.app.<init>(a.getActivity());
        onclicklistener.setSingleChoiceItems(0x7f07000c, UserPrefs.h(), new android.content.DialogInterface.OnClickListener() {

            final SettingsFragment._cls17 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.a(SettingsFragment.PrivacyOptions.values()[UserPrefs.h()].toString(), SettingsFragment.PrivacyOptions.values()[i].toString());
                UserPrefs.c(i);
                SettingsFragment.b(a.a).setText(a.a.getResources().getStringArray(0x7f07000c)[i]);
                String as[] = new String[1];
                as[0] = Integer.toString(i);
                (new SettingsTask("updatePrivacy", as)).executeOnExecutor(ScExecutors.b, new String[0]);
                dialoginterface.dismiss();
            }

            
            {
                a = SettingsFragment._cls17.this;
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
