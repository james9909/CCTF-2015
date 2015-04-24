// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.verification.URLVerificationFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

public class SQUrlBlocker extends Blocker
{

    private static final String TAG = "SQUrlBlocker";
    private final String mUrl;

    public SQUrlBlocker(String s)
    {
        mUrl = s;
    }

    static void a(SQUrlBlocker squrlblocker)
    {
        squrlblocker.a();
    }

    static void a(SQUrlBlocker squrlblocker, List list, boolean flag)
    {
        squrlblocker.a(list, flag);
    }

    public void a(CashTransaction cashtransaction)
    {
        Timber.b("SQUrlBlocker", "CASH-LOG: ATTEMPT resolve SQUrlBlocker", new Object[0]);
        URLVerificationFragment urlverificationfragment = new URLVerificationFragment();
        urlverificationfragment.a(mUrl);
        urlverificationfragment.a(new com.snapchat.android.fragments.verification.URLVerificationFragment.OnCompleteListener() {

            final SQUrlBlocker this$0;

            public void a()
            {
                SQUrlBlocker.a(SQUrlBlocker.this, null, false);
            }

            public void b()
            {
                SQUrlBlocker.a(SQUrlBlocker.this);
            }

            
            {
                this$0 = SQUrlBlocker.this;
                super();
            }
        });
        BusProvider.a().a(new StartFragmentEvent(urlverificationfragment));
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_URL_BLOCKER;
    }

    public String e()
    {
        return mUrl;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            if (!super.equals(obj))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return super.hashCode();
    }
}
