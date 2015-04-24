// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.ActivityLauncher;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a extends AlertDialog
{

    final a a;

    a(a a1, Context context)
    {
        a = a1;
        super(context);
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$7

/* anonymous class */
    class SettingsFragment._cls7
        implements android.view.View.OnClickListener
    {

        final SettingsFragment a;

        public void onClick(View view)
        {
            SettingsFragment._cls7._cls1 _lcls1 = new SettingsFragment._cls7._cls1(this, a.getActivity());
            _lcls1.setTitle(0x7f0c01dd);
            _lcls1.setMessage(a.getString(0x7f0c01de));
            _lcls1.setButton(-1, a.getString(0x7f0c0142), new SettingsFragment._cls7._cls2());
            _lcls1.setButton(-2, a.getString(0x7f0c0136), new SettingsFragment._cls7._cls3());
            _lcls1.show();
        }

            
            {
                a = settingsfragment;
                super();
            }

        // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$7$2

/* anonymous class */
        class SettingsFragment._cls7._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final SettingsFragment._cls7 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.g(true);
                ActivityLauncher.a(a.a.getActivity());
            }

                    
                    {
                        a = SettingsFragment._cls7.this;
                        super();
                    }
        }


        // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$7$3

/* anonymous class */
        class SettingsFragment._cls7._cls3
            implements android.content.DialogInterface.OnClickListener
        {

            final SettingsFragment._cls7 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.g(false);
            }

                    
                    {
                        a = SettingsFragment._cls7.this;
                        super();
                    }
        }

    }

}
