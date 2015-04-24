// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.AdapterView;
import com.snapchat.android.database.SharedPreferenceKey;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

class a
    implements android.widget.tener
{

    final SharedPreferences a;
    final DeveloperSettingsFragment b;

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        android.content.operSettingsFragment._cls25 _lcls25 = a.edit();
        _lcls25.nt(SharedPreferenceKey.au.a(), i);
        _lcls25.y();
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    (DeveloperSettingsFragment developersettingsfragment, SharedPreferences sharedpreferences)
    {
        b = developersettingsfragment;
        a = sharedpreferences;
        super();
    }
}
