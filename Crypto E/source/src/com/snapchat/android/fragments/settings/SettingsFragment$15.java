// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a
    implements android.view.
{

    final SettingsFragment a;

    public void onClick(View view)
    {
        android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
        (new firmLogoutDialog(a, fragmentactivity)).show();
    }

    firmLogoutDialog(SettingsFragment settingsfragment)
    {
        a = settingsfragment;
        super();
    }
}
