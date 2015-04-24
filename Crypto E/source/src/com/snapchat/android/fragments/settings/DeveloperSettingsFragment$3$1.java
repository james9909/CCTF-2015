// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashCardManager;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.DevUtils;
import com.snapchat.android.util.network.EndpointManager;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class a
    implements com.snapchat.android.util.tener
{

    final CompoundButton a;
    final a b;

    public void a(com.snapchat.android.util.sFragment._cls3._cls1 _pcls1)
    {
        if (_pcls1 == com.snapchat.android.util.)
        {
            DevUtils.a(true);
            DevUtils.a(b.b, "https://cash-dot-feelinsonice-hrd.appspot.com");
            b.b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
            UserPrefs.S();
            b.b.a.a(null);
            b.b.b.b();
            return;
        } else
        {
            a.setTag(Boolean.valueOf(true));
            a.setChecked(false);
            return;
        }
    }

    ( , CompoundButton compoundbutton)
    {
        b = ;
        a = compoundbutton;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/DeveloperSettingsFragment$3

/* anonymous class */
    class DeveloperSettingsFragment._cls3
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        final SharedPreferences a;
        final TextView b;
        final DeveloperSettingsFragment c;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (compoundbutton.getTag() != null)
            {
                compoundbutton.setTag(null);
                return;
            }
            if (flag)
            {
                AlertDialogUtils.a(c.getActivity(), null, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?", new DeveloperSettingsFragment._cls3._cls1(this, compoundbutton));
                return;
            } else
            {
                DevUtils.a(false);
                DevUtils.a(a, null);
                b.setText(EndpointManager.a().b());
                UserPrefs.S();
                c.a.a(null);
                c.b.b();
                AlertDialogUtils.a(c.getActivity(), "The Snapchat endpoint has also been reset to default.");
                return;
            }
        }

            
            {
                c = developersettingsfragment;
                a = sharedpreferences;
                b = textview;
                super();
            }
    }

}
