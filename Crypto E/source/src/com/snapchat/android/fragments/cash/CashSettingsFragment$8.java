// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.widget.CompoundButton;
import com.snapchat.android.api2.cash.square.SquareRequestTask;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment, SecurityCodeFragment

class c
    implements curityCodeCallback
{

    final SecurityCodeFragment a;
    final CompoundButton b;
    final boolean c;
    final CashSettingsFragment d;

    public void a()
    {
        CashSettingsFragment cashsettingsfragment = d;
        android.widget.CheckBox checkbox = CashSettingsFragment.c(d);
        android.widget.RelativeLayout relativelayout = CashSettingsFragment.d(d);
        android.widget.ProgressBar progressbar = CashSettingsFragment.e(d);
        boolean flag;
        if (!c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag, null);
    }

    public void a(String s)
    {
        d.a(s, d.b(a, b, c)).g();
    }

    public void b()
    {
        CashSettingsFragment cashsettingsfragment = d;
        android.widget.CheckBox checkbox = CashSettingsFragment.c(d);
        android.widget.RelativeLayout relativelayout = CashSettingsFragment.d(d);
        android.widget.ProgressBar progressbar = CashSettingsFragment.e(d);
        boolean flag;
        if (!c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag, null);
    }

    curityCodeCallback(CashSettingsFragment cashsettingsfragment, SecurityCodeFragment securitycodefragment, CompoundButton compoundbutton, boolean flag)
    {
        d = cashsettingsfragment;
        a = securitycodefragment;
        b = compoundbutton;
        c = flag;
        super();
    }
}
