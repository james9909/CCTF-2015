// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.view.View;
import com.snapchat.android.api2.cash.CashProviderManager;
import com.snapchat.android.api2.cash.ICashProvider;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment

class a
    implements android.view.CashSettingsFragment._cls6
{

    final CashSettingsFragment a;

    public void onClick(View view)
    {
        if (a.a.b("SQUARE"))
        {
            a.a.a("SQUARE").a(a.getActivity(), a.getString(0x7f0c01c2));
            return;
        } else
        {
            CashProviderManager.a();
            return;
        }
    }

    (CashSettingsFragment cashsettingsfragment)
    {
        a = cashsettingsfragment;
        super();
    }
}
