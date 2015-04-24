// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.widget.ProgressBar;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment

class a
    implements Runnable
{

    final Integer a;
    final CashSettingsFragment b;

    public void run()
    {
        CashSettingsFragment.a(b).setVisibility(8);
        if (UserPrefs.aa())
        {
            CashSettingsFragment.f(b);
        } else
        {
            CashSettingsFragment.g(b);
        }
        CashSettingsFragment.h(b);
        if (a != null)
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.pe.a, a.intValue()));
        }
    }

    e(CashSettingsFragment cashsettingsfragment, Integer integer)
    {
        b = cashsettingsfragment;
        a = integer;
        super();
    }
}
