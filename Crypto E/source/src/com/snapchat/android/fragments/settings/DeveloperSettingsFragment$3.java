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

class b
    implements android.widget.geListener
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
            AlertDialogUtils.a(c.getActivity(), null, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?", new com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener(compoundbutton) {

                final CompoundButton a;
                final DeveloperSettingsFragment._cls3 b;

                public void a(com.snapchat.android.util.AlertDialogUtils.YesNoOption yesnooption)
                {
                    if (yesnooption == com.snapchat.android.util.AlertDialogUtils.YesNoOption.a)
                    {
                        DevUtils.a(true);
                        DevUtils.a(b.a, "https://cash-dot-feelinsonice-hrd.appspot.com");
                        b.b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
                        UserPrefs.S();
                        b.c.a.a(null);
                        b.c.b.b();
                        return;
                    } else
                    {
                        a.setTag(Boolean.valueOf(true));
                        a.setChecked(false);
                        return;
                    }
                }

            
            {
                b = DeveloperSettingsFragment._cls3.this;
                a = compoundbutton;
                super();
            }
            });
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

    _cls1.a(DeveloperSettingsFragment developersettingsfragment, SharedPreferences sharedpreferences, TextView textview)
    {
        c = developersettingsfragment;
        a = sharedpreferences;
        b = textview;
        super();
    }
}
