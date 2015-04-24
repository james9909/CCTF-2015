// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.NotificationManager;
import android.content.SharedPreferences;
import android.support.v4.app.FragmentActivity;
import android.widget.CompoundButton;
import com.snapchat.android.chat.ChatConnectionMonitor;
import com.snapchat.android.database.SharedPreferenceKey;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class a
    implements android.widget.geListener
{

    final SharedPreferences a;
    final DeveloperSettingsFragment b;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        android.content.loperSettingsFragment lopersettingsfragment;
        if (flag)
        {
            if (DeveloperSettingsFragment.a(b).f())
            {
                ((NotificationManager)b.getActivity().getSystemService("notification")).notify(1337, (new android.support.v4.app.init>(b.getActivity())).etSmallIcon(0x7f02015a).etContentTitle("Snapchat Chat").etContentText("TCP connection established").etOngoing(true).uild());
            }
        } else
        {
            ((NotificationManager)DeveloperSettingsFragment.a(b, "notification")).cancel(1337);
        }
        lopersettingsfragment = a.edit();
        lopersettingsfragment.Boolean(SharedPreferenceKey.ao.a(), flag);
        lopersettingsfragment.ly();
    }

    I(DeveloperSettingsFragment developersettingsfragment, SharedPreferences sharedpreferences)
    {
        b = developersettingsfragment;
        a = sharedpreferences;
        super();
    }
}
