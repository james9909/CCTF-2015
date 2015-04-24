// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;

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

    // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$6

/* anonymous class */
    class SettingsFragment._cls6
        implements android.view.View.OnClickListener
    {

        final SettingsFragment a;

        public void onClick(View view)
        {
            SettingsFragment._cls6._cls1 _lcls1 = new SettingsFragment._cls6._cls1(this, a.getActivity());
            _lcls1.setTitle(0x7f0c01e6);
            _lcls1.setMessage(a.getString(0x7f0c01b6));
            _lcls1.setButton(-1, a.getString(0x7f0c00af), new SettingsFragment._cls6._cls2());
            _lcls1.setButton(-2, a.getString(0x7f0c0136), new SettingsFragment._cls6._cls3());
            _lcls1.show();
        }

            
            {
                a = settingsfragment;
                super();
            }

        // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$6$2

/* anonymous class */
        class SettingsFragment._cls6._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final SettingsFragment._cls6 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.f(true);
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.snapchat.com/beta"));
                a.a.startActivity(intent);
            }

                    
                    {
                        a = SettingsFragment._cls6.this;
                        super();
                    }
        }


        // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$6$3

/* anonymous class */
        class SettingsFragment._cls6._cls3
            implements android.content.DialogInterface.OnClickListener
        {

            final SettingsFragment._cls6 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.f(false);
            }

                    
                    {
                        a = SettingsFragment._cls6.this;
                        super();
                    }
        }

    }

}
