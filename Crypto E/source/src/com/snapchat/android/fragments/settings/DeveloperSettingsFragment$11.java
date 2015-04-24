// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.widget.SeekBar;
import android.widget.TextView;
import com.snapchat.android.database.SharedPreferenceKey;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class b
    implements android.widget.er
{

    final TextView a;
    final SharedPreferences b;
    final DeveloperSettingsFragment c;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        int j = i * 100;
        a.setText((new StringBuilder()).append(j).append("ms").toString());
        android.content.operSettingsFragment._cls11 _lcls11 = b.edit();
        _lcls11.nt(SharedPreferenceKey.as.a(), j);
        _lcls11.y();
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }

    (DeveloperSettingsFragment developersettingsfragment, TextView textview, SharedPreferences sharedpreferences)
    {
        c = developersettingsfragment;
        a = textview;
        b = sharedpreferences;
        super();
    }
}
