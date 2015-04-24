// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.snapchat:
//            PhoneNumberBlocker

class this._cls0
    implements com.snapchat.android.fragments.cash.Fragment.PhoneVerificationListener
{

    final PhoneNumberBlocker this$0;

    public void a()
    {
        Timber.b("PhoneNumberBlocker", "CASH-LOG: PhoneNumberBlocker VERIFICATION COMPLETE", new Object[0]);
        if (PhoneNumberBlocker.a(PhoneNumberBlocker.this))
        {
            AnalyticsEvents.N();
            return;
        } else
        {
            PhoneNumberBlocker.this.b(null, false);
            return;
        }
    }

    public void b()
    {
        AnalyticsEvents.O();
        PhoneNumberBlocker.this.a();
    }

    eVerificationListener()
    {
        this$0 = PhoneNumberBlocker.this;
        super();
    }
}
