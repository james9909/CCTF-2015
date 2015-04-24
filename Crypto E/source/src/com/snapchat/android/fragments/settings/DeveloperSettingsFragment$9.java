// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.widget.CompoundButton;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.chat.SecureChatService;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class b
    implements android.widget.geListener
{

    final SharedPreferences a;
    final SecureChatService b;
    final DeveloperSettingsFragment c;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
label0:
        {
            android.content.loperSettingsFragment._cls9 _lcls9 = a.edit();
            _lcls9.Boolean(SharedPreferenceKey.an.a(), flag);
            _lcls9.ly();
            if (b != null)
            {
                if (!flag)
                {
                    break label0;
                }
                b.c();
            }
            return;
        }
        b.b();
    }

    I(DeveloperSettingsFragment developersettingsfragment, SharedPreferences sharedpreferences, SecureChatService securechatservice)
    {
        c = developersettingsfragment;
        a = sharedpreferences;
        b = securechatservice;
        super();
    }
}
