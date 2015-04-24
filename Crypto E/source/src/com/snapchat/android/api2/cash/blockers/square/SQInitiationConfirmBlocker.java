// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

public class SQInitiationConfirmBlocker extends Blocker
{

    private static final String TAG = "SQInitiationConfirmBlocker";

    public SQInitiationConfirmBlocker()
    {
    }

    static void a(SQInitiationConfirmBlocker sqinitiationconfirmblocker)
    {
        sqinitiationconfirmblocker.a();
    }

    static void a(SQInitiationConfirmBlocker sqinitiationconfirmblocker, List list, boolean flag)
    {
        sqinitiationconfirmblocker.a(list, flag);
    }

    static void b(SQInitiationConfirmBlocker sqinitiationconfirmblocker)
    {
        sqinitiationconfirmblocker.a();
    }

    protected com.snapchat.android.fragments.cash.SecurityCodeFragment.SecurityCodeCallback a(final SecurityCodeFragment fragment, final CashTransaction transaction)
    {
        return new com.snapchat.android.fragments.cash.SecurityCodeFragment.SecurityCodeCallback() {

            final SQInitiationConfirmBlocker this$0;
            final SecurityCodeFragment val$fragment;
            final CashTransaction val$transaction;

            public void a()
            {
                Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
                SQInitiationConfirmBlocker.a(SQInitiationConfirmBlocker.this);
            }

            public void a(String s)
            {
                Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker ENTERED security code", new Object[0]);
                transaction.g(s);
                fragment.d();
                SQInitiationConfirmBlocker.a(SQInitiationConfirmBlocker.this, null, true);
            }

            public void b()
            {
                Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment FAILED", new Object[0]);
                SQInitiationConfirmBlocker.b(SQInitiationConfirmBlocker.this);
            }

            
            {
                this$0 = SQInitiationConfirmBlocker.this;
                transaction = cashtransaction;
                fragment = securitycodefragment;
                super();
            }
        };
    }

    public void a(CashTransaction cashtransaction)
    {
        Object aobj[] = new Object[3];
        aobj[0] = cashtransaction.b();
        aobj[1] = cashtransaction.f();
        aobj[2] = cashtransaction.j();
        Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: ATTEMPT resolve SQInitiationConfirmBlocker transaction_id[%s] recipient[%s] amount [%s]", aobj);
        if (TextUtils.isEmpty(cashtransaction.z()))
        {
            SecurityCodeFragment securitycodefragment = new SecurityCodeFragment();
            securitycodefragment.a(a(securitycodefragment, cashtransaction));
            BusProvider.a().a(new StartFragmentEvent(securitycodefragment));
            return;
        } else
        {
            a(null, true);
            return;
        }
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_INITIATION_CONFIRM_BLOCKER;
    }
}
