// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.snapchat.LocalSQAcceptTermsBlocker;
import com.snapchat.android.api2.cash.blockers.snapchat.PhoneNumberBlocker;
import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            SettingsFragment

class a
    implements android.view.
{

    final SettingsFragment a;

    public void onClick(View view)
    {
        LocalSQAcceptTermsBlocker localsqaccepttermsblocker = new LocalSQAcceptTermsBlocker();
        PhoneNumberBlocker phonenumberblocker = new PhoneNumberBlocker();
        localsqaccepttermsblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener(phonenumberblocker) {

            final Blocker a;
            final SettingsFragment._cls12 b;

            public void a(Blocker blocker)
            {
            }

            public void a(Blocker blocker, List list, boolean flag)
            {
                a.a(null);
            }

            public void b(Blocker blocker)
            {
            }

            public void b(Blocker blocker, List list, boolean flag)
            {
            }

            
            {
                b = SettingsFragment._cls12.this;
                a = blocker;
                super();
            }
        });
        phonenumberblocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener() {

            final SettingsFragment._cls12 a;

            public void a(Blocker blocker)
            {
            }

            public void a(Blocker blocker, List list, boolean flag)
            {
                BusProvider.a().a(new StartFragmentEvent(new CashSettingsFragment()));
            }

            public void b(Blocker blocker)
            {
            }

            public void b(Blocker blocker, List list, boolean flag)
            {
            }

            
            {
                a = SettingsFragment._cls12.this;
                super();
            }
        });
        localsqaccepttermsblocker.a(null);
    }

    _cls2.a(SettingsFragment settingsfragment)
    {
        a = settingsfragment;
        super();
    }
}
