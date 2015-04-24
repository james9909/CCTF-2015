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
    implements com.snapchat.android.api2.cash.blockers.ener
{

    final Blocker a;
    final a b;

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

    a(a a1, Blocker blocker)
    {
        b = a1;
        a = blocker;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$12

/* anonymous class */
    class SettingsFragment._cls12
        implements android.view.View.OnClickListener
    {

        final SettingsFragment a;

        public void onClick(View view)
        {
            LocalSQAcceptTermsBlocker localsqaccepttermsblocker = new LocalSQAcceptTermsBlocker();
            PhoneNumberBlocker phonenumberblocker = new PhoneNumberBlocker();
            localsqaccepttermsblocker.a(new SettingsFragment._cls12._cls1(this, phonenumberblocker));
            phonenumberblocker.a(new SettingsFragment._cls12._cls2());
            localsqaccepttermsblocker.a(null);
        }

            
            {
                a = settingsfragment;
                super();
            }

        // Unreferenced inner class com/snapchat/android/fragments/settings/SettingsFragment$12$2

/* anonymous class */
        class SettingsFragment._cls12._cls2
            implements com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener
        {

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
        }

    }

}
