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
    implements com.snapchat.android.api2.cash.blockers.
{

    final a a;

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

    ker(ker ker)
    {
        a = ker;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/cash/CashSettingsFragment$3

/* anonymous class */
    class CashSettingsFragment._cls3
        implements android.view.View.OnClickListener
    {

        final CashSettingsFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setTitle(0x7f0c021a);
            builder.setMessage(0x7f0c0219);
            builder.setCancelable(true);
            builder.setPositiveButton(0x7f0c022a, new CashSettingsFragment._cls3._cls1(this));
            builder.setNegativeButton(0x7f0c0130, null);
            a.b = builder.create();
            a.b.show();
        }

            
            {
                a = cashsettingsfragment;
                super();
            }
    }


    // Unreferenced inner class com/snapchat/android/fragments/cash/CashSettingsFragment$3$1

/* anonymous class */
    class CashSettingsFragment._cls3._cls1
        implements android.content.DialogInterface.OnClickListener
    {

        final CashSettingsFragment._cls3 a;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            CashSettingsFragment.a(a.a).setVisibility(0);
            CashSettingsFragment.b(a.a).setVisibility(8);
            SQUnlinkCardBlocker squnlinkcardblocker = a.a.d();
            squnlinkcardblocker.a(new CashSettingsFragment._cls3._cls1._cls1(this));
            squnlinkcardblocker.a(null);
        }

            
            {
                a = _pcls3;
                super();
            }
    }

}
