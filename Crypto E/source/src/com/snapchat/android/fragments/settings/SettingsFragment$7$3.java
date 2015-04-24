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

class a
    implements android.content.ckListener
{

    final a a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AnalyticsEvents.g(false);
    }

    a(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$7

/* anonymous class */
    class SettingsFragment._cls7
        implements android.view.View.OnClickListener
    {

        final SettingsFragment a;

        public void onClick(View view)
        {
            AlertDialog alertdialog = new SettingsFragment._cls7._cls1(a.getActivity());
            alertdialog.setTitle(0x7f0c01dd);
            alertdialog.setMessage(a.getString(0x7f0c01de));
            alertdialog.setButton(-1, a.getString(0x7f0c0142), new SettingsFragment._cls7._cls2());
            alertdialog.setButton(-2, a.getString(0x7f0c0136), new SettingsFragment._cls7._cls3(this));
            alertdialog.show();
        }

            
            {
                a = settingsfragment;
                super();
            }

        // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$7$1

/* anonymous class */
        class SettingsFragment._cls7._cls1 extends AlertDialog
        {

            final SettingsFragment._cls7 a;

                    
                    {
                        a = SettingsFragment._cls7.this;
                        super(context);
                    }
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

    }

}
