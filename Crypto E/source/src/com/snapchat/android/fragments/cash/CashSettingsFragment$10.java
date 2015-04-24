// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment

class e
    implements Runnable
{

    final boolean a;
    final CompoundButton b;
    final ProgressBar c;
    final View d;
    final String e;
    final CashSettingsFragment f;

    public void run()
    {
        if (a != b.isChecked())
        {
            b.setTag(Boolean.valueOf(true));
        }
        b.setChecked(a);
        b.setVisibility(0);
        c.setVisibility(8);
        d.setEnabled(true);
        if (e != null)
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.pe.a, e));
        }
    }

    e(CashSettingsFragment cashsettingsfragment, boolean flag, CompoundButton compoundbutton, ProgressBar progressbar, View view, String s)
    {
        f = cashsettingsfragment;
        a = flag;
        b = compoundbutton;
        c = progressbar;
        d = view;
        e = s;
        super();
    }
}
