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
    implements android.widget.dChangeListener
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
            blocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(flag) {

                final boolean a;
                final CashSettingsFragment._cls5 b;

                public void a(Blocker blocker1)
                {
                }

                public void a(Blocker blocker1, List list, boolean flag1)
                {
                    boolean flag2 = true;
                    if (list == null || list.isEmpty())
                    {
                        if (!a)
                        {
                            SecurityCodeFragment securitycodefragment = b.a.h();
                            securitycodefragment.a(b.a.a(securitycodefragment, CashSettingsFragment.c(b.a), false));
                            BusProvider.a().a(new StartFragmentEvent(securitycodefragment));
                            return;
                        } else
                        {
                            b.a.a(b.a.b(null, CashSettingsFragment.c(b.a), flag2)).g();
                            return;
                        }
                    }
                    String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
                    CashSettingsFragment cashsettingsfragment = b.a;
                    CheckBox checkbox = CashSettingsFragment.c(b.a);
                    RelativeLayout relativelayout = CashSettingsFragment.d(b.a);
                    ProgressBar progressbar = CashSettingsFragment.e(b.a);
                    if (a)
                    {
                        flag2 = false;
                    }
                    CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag2, s);
                }

                public void b(Blocker blocker1)
                {
                }

                public void b(Blocker blocker1, List list, boolean flag1)
                {
                    String s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
                    CashSettingsFragment cashsettingsfragment = b.a;
                    CheckBox checkbox = CashSettingsFragment.c(b.a);
                    RelativeLayout relativelayout = CashSettingsFragment.d(b.a);
                    ProgressBar progressbar = CashSettingsFragment.e(b.a);
                    boolean flag2 = a;
                    boolean flag3 = false;
                    if (!flag2)
                    {
                        flag3 = true;
                    }
                    CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag3, s);
                }

            
            {
                b = CashSettingsFragment._cls5.this;
                a = flag;
                super();
            }
            });
            blocker.a(null);
            return;
        }
    }

    _cls1.a(CashSettingsFragment cashsettingsfragment)
    {
        a = cashsettingsfragment;
        super();
    }
}
