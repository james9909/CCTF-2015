// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.cash.ReceivingCashManager;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.fragments.cash.CashPhoneVerificationFragment;
import com.snapchat.android.fragments.cash.IneligibleCashFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

public class PhoneNumberBlocker extends Blocker
{

    private static final String TAG = "PhoneNumberBlocker";
    protected ReceivingCashManager mReceivingCashManager;

    public PhoneNumberBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    static boolean a(PhoneNumberBlocker phonenumberblocker)
    {
        return phonenumberblocker.f();
    }

    private boolean f()
    {
        if (UserPrefs.Z() == com.snapchat.android.api2.cash.ScCashResponsePayload.Status.NON_US_USER)
        {
            b(null, false);
            BusProvider.a().a(new StartFragmentEvent(new IneligibleCashFragment()));
            mReceivingCashManager.a(ConversationUtils.d());
            return true;
        }
        if (UserPrefs.g())
        {
            a(null, true);
            return true;
        } else
        {
            return false;
        }
    }

    protected void a()
    {
        super.a();
    }

    public void a(CashTransaction cashtransaction)
    {
        if (f())
        {
            return;
        } else
        {
            CashPhoneVerificationFragment cashphoneverificationfragment = new CashPhoneVerificationFragment();
            cashphoneverificationfragment.a(e());
            BusProvider.a().a(new StartFragmentEvent(cashphoneverificationfragment));
            return;
        }
    }

    protected void a(List list, boolean flag)
    {
        super.a(list, flag);
    }

    protected void b(List list, boolean flag)
    {
        super.b(list, flag);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.PHONE_NUMBER_BLOCKER;
    }

    protected com.snapchat.android.fragments.cash.CashPhoneVerificationFragment.PhoneVerificationListener e()
    {
        return new com.snapchat.android.fragments.cash.CashPhoneVerificationFragment.PhoneVerificationListener() {

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

            
            {
                this$0 = PhoneNumberBlocker.this;
                super();
            }
        };
    }
}
