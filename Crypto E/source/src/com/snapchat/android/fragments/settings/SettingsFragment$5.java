// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment, BetaSettingsFragment

class a
    implements android.view.r
{

    final SettingsFragment a;

    public void onClick(View view)
    {
        BusProvider.a().a(new StartFragmentEvent(new BetaSettingsFragment()));
    }

    t(SettingsFragment settingsfragment)
    {
        a = settingsfragment;
        super();
    }
}
