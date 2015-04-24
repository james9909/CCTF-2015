// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.square.SquareRequestTask;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment, SecurityCodeFragment

class a
    implements com.snapchat.android.api2.cash.blockers.r
{

    final boolean a;
    final a b;

    public void a(Blocker blocker)
    {
    }

    public void a(Blocker blocker, List list, boolean flag)
    {
        boolean flag1 = true;
        if (list == null || list.isEmpty())
        {
            if (!a)
            {
                SecurityCodeFragment securitycodefragment = b.b.h();
                securitycodefragment.a(b.b.a(securitycodefragment, CashSettingsFragment.c(b.b), false));
                BusProvider.a().a(new StartFragmentEvent(securitycodefragment));
                return;
            } else
            {
                b.b.a(b.b.b(null, CashSettingsFragment.c(b.b), flag1)).g();
                return;
            }
        }
        String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
        CashSettingsFragment cashsettingsfragment = b.b;
        CheckBox checkbox = CashSettingsFragment.c(b.b);
        RelativeLayout relativelayout = CashSettingsFragment.d(b.b);
        ProgressBar progressbar = CashSettingsFragment.e(b.b);
        if (a)
        {
            flag1 = false;
        }
        CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag1, s);
    }

    public void b(Blocker blocker)
    {
    }

    public void b(Blocker blocker, List list, boolean flag)
    {
        String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
        CashSettingsFragment cashsettingsfragment = b.b;
        CheckBox checkbox = CashSettingsFragment.c(b.b);
        RelativeLayout relativelayout = CashSettingsFragment.d(b.b);
        ProgressBar progressbar = CashSettingsFragment.e(b.b);
        boolean flag1 = a;
        boolean flag2 = false;
        if (!flag1)
        {
            flag2 = true;
        }
        CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag2, s);
    }

    tener(tener tener, boolean flag)
    {
        b = tener;
        a = flag;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/cash/CashSettingsFragment$5

/* anonymous class */
    class CashSettingsFragment._cls5
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        final CashSettingsFragment a;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (compoundbutton.getTag() != null)
            {
                compoundbutton.setTag(null);
                return;
            } else
            {
                CashSettingsFragment.d(a).setEnabled(false);
                CashSettingsFragment.c(a).setVisibility(8);
                CashSettingsFragment.e(a).setVisibility(0);
                Blocker blocker = a.b();
                blocker.a(new CashSettingsFragment._cls5._cls1(this, flag));
                blocker.a(null);
                return;
            }
        }

            
            {
                a = cashsettingsfragment;
                super();
            }
    }

}
