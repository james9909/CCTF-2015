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
    implements android.content.kListener
{

    final sources a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AnalyticsEvents.a(cyOptions.values()[UserPrefs.h()].toString(), cyOptions.values()[i].toString());
        UserPrefs.c(i);
        SettingsFragment.b(a.a).setText(a.a.getResources().getStringArray(0x7f07000c)[i]);
        String as[] = new String[1];
        as[0] = Integer.toString(i);
        (new SettingsTask("updatePrivacy", as)).executeOnExecutor(ScExecutors.b, new String[0]);
        dialoginterface.dismiss();
    }

    cyOptions(cyOptions cyoptions)
    {
        a = cyoptions;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$17

/* anonymous class */
    class SettingsFragment._cls17
        implements android.view.View.OnClickListener
    {

        final SettingsFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setSingleChoiceItems(0x7f07000c, UserPrefs.h(), new SettingsFragment._cls17._cls1(this));
            builder.show();
        }

            
            {
                a = settingsfragment;
                super();
            }
    }

}
