// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.CompoundButton;
import com.snapchat.android.database.SharedPreferenceKey;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            NotificationSettingsFragment

class a
    implements android.widget.istener
{

    final NotificationSettingsFragment a;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        NotificationSettingsFragment.a(a).lean(SharedPreferenceKey.az.a(), flag);
        NotificationSettingsFragment.a(a).a();
    }

    (NotificationSettingsFragment notificationsettingsfragment)
    {
        a = notificationsettingsfragment;
        super();
    }
}
