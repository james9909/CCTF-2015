// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.square.SQUnlinkCardBlocker;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment

class a
    implements android.view.CashSettingsFragment._cls3
{

    final CashSettingsFragment a;

    public void onClick(View view)
    {
        android.app.lickListener licklistener = new android.app.it>(a.getActivity());
        licklistener.Title(0x7f0c021a);
        licklistener.Message(0x7f0c0219);
        licklistener.Cancelable(true);
        licklistener.PositiveButton(0x7f0c022a, new android.content.DialogInterface.OnClickListener() {

            final CashSettingsFragment._cls3 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                CashSettingsFragment.a(a.a).setVisibility(0);
                CashSettingsFragment.b(a.a).setVisibility(8);
                SQUnlinkCardBlocker squnlinkcardblocker = a.a.d();
                squnlinkcardblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(this) {

                    final _cls1 a;

                    public void a(Blocker blocker)
                    {
                    }

                    public void a(Blocker blocker, List list, boolean flag)
                    {
                        CashSettingsFragment.a(a.a.a, null);
                    }

                    public void b(Blocker blocker)
                    {
                        CashSettingsFragment.a(a.a.a, Integer.valueOf(0x7f0c003f));
                    }

                    public void b(Blocker blocker, List list, boolean flag)
                    {
                        CashSettingsFragment.a(a.a.a, Integer.valueOf(0x7f0c003f));
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
                squnlinkcardblocker.a(null);
            }

            
            {
                a = CashSettingsFragment._cls3.this;
                super();
            }
        });
        licklistener.NegativeButton(0x7f0c0130, null);
        a.b = licklistener.ate();
        a.b.show();
    }

    _cls1.a(CashSettingsFragment cashsettingsfragment)
    {
        a = cashsettingsfragment;
        super();
    }
}
