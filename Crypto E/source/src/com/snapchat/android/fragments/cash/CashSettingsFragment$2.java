// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.view.View;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment

class a
    implements android.view.CashSettingsFragment._cls2
{

    final CashSettingsFragment a;

    public void onClick(View view)
    {
        SQCardFormBlocker sqcardformblocker = new SQCardFormBlocker(true);
        sqcardformblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener() {

            final CashSettingsFragment._cls2 a;

            public void a(Blocker blocker)
            {
            }

            public void a(Blocker blocker, List list, boolean flag)
            {
                if (list != null)
                {
                    Iterator iterator = list.iterator();
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        Blocker blocker1 = (Blocker)iterator.next();
                        if (blocker1.d())
                        {
                            blocker1.a(null);
                        }
                    } while (true);
                }
                CashSettingsFragment.a(a.a, null);
            }

            public void b(Blocker blocker)
            {
            }

            public void b(Blocker blocker, List list, boolean flag)
            {
                CashSettingsFragment.a(a.a, Integer.valueOf(0x7f0c0104));
            }

            
            {
                a = CashSettingsFragment._cls2.this;
                super();
            }
        });
        sqcardformblocker.a(null);
    }

    _cls1.a(CashSettingsFragment cashsettingsfragment)
    {
        a = cashsettingsfragment;
        super();
    }
}
