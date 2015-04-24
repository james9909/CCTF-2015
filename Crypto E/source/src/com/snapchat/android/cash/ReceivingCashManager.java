// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.BlockerManager;
import com.snapchat.android.api2.cash.CashProviderManager;
import com.snapchat.android.api2.cash.ICashProvider;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

public class ReceivingCashManager
{
    public static interface ResolvingBlockersCallback
    {

        public abstract void a();

        public abstract void b();
    }


    private static final String c = com/snapchat/android/cash/ReceivingCashManager.getSimpleName();
    protected CashProviderManager a;
    protected BlockerManager b;

    public ReceivingCashManager()
    {
    }

    static String b()
    {
        return c;
    }

    protected void a()
    {
        CashFeedItem cashfeeditem;
        for (Iterator iterator = ConversationUtils.d().iterator(); iterator.hasNext(); b.f(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem) {

        final CashFeedItem a;
        final ReceivingCashManager b;

        public void a()
        {
            BusProvider.a().a(new ChatUpdatedEvent(a.I()));
        }

        public void b()
        {
            BusProvider.a().a(new ChatUpdatedEvent(a.I()));
        }

            
            {
                b = ReceivingCashManager.this;
                a = cashfeeditem;
                super();
            }
    }))
        {
            cashfeeditem = (CashFeedItem)iterator.next();
            String s = c;
            Object aobj[] = new Object[3];
            aobj[0] = cashfeeditem.d();
            aobj[1] = cashfeeditem.l();
            aobj[2] = cashfeeditem.h().j();
            Timber.b(s, "CASH-LOG: UPDATING pending received cash id[%s] sender[%s] amount[%s]", aobj);
        }

    }

    public void a(CashFeedItem cashfeeditem, ResolvingBlockersCallback resolvingblockerscallback)
    {
        if (cashfeeditem.h().o() != com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT && cashfeeditem.h().o() != com.snapchat.android.model.CashTransaction.TransactionStatus.INITIATED)
        {
            throw new RuntimeException("ReceivingCashManager resolveBlockers should only be called on INITIATED or WAITING_ON_RECIPIENT CashFeedItems!");
        } else
        {
            String s = c;
            Object aobj[] = new Object[3];
            aobj[0] = cashfeeditem.d();
            aobj[1] = cashfeeditem.l();
            aobj[2] = cashfeeditem.h().j();
            Timber.b(s, "CASH-LOG: ReceivingCashManager RESOLVE blockers id[%s] sender[%s] amount[%s]", aobj);
            cashfeeditem.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.RECEIVING);
            BusProvider.a().a(new ChatUpdatedEvent(cashfeeditem.I(), cashfeeditem.d()));
            b.e(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, resolvingblockerscallback) {

                final CashFeedItem a;
                final ResolvingBlockersCallback b;
                final ReceivingCashManager c;

                public void a()
                {
                    String s1 = ReceivingCashManager.b();
                    Object aobj1[] = new Object[3];
                    aobj1[0] = a.d();
                    aobj1[1] = a.l();
                    aobj1[2] = a.h().j();
                    Timber.b(s1, "CASH-LOG: ReceivingCashManager SUCCESS RESOLVED blockers id[%s], sender[%s] amount[%s]", aobj1);
                    c.a();
                    BusProvider.a().a(new ChatUpdatedEvent(a.I(), a.d()));
                    b.a();
                }

                public void b()
                {
                    String s1 = ReceivingCashManager.b();
                    Object aobj1[] = new Object[3];
                    aobj1[0] = a.d();
                    aobj1[1] = a.l();
                    aobj1[2] = a.h().j();
                    Timber.b(s1, "CASH-LOG: ReceivingCashManager CANCELED RESOLVED blockers id[%s], sender[%s] amount[%s]", aobj1);
                    BusProvider.a().a(new ChatUpdatedEvent(a.I(), a.d()));
                    b.b();
                }

            
            {
                c = ReceivingCashManager.this;
                a = cashfeeditem;
                b = resolvingblockerscallback;
                super();
            }
            });
            return;
        }
    }

    public void a(List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            CashFeedItem cashfeeditem = (CashFeedItem)iterator.next();
            if (cashfeeditem.K() == com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.RECEIVED && cashfeeditem.h().o() == com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT && a.b(cashfeeditem.g()))
            {
                String s = c;
                Object aobj[] = new Object[3];
                aobj[0] = cashfeeditem.d();
                aobj[1] = cashfeeditem.l();
                aobj[2] = cashfeeditem.h().j();
                Timber.b(s, "CASH-LOG: DELETING pending received cash id[%s] sender[%s] amount[%s]", aobj);
                ICashProvider icashprovider = a.a(cashfeeditem.g());
                if (icashprovider != null)
                {
                    icashprovider.a(cashfeeditem);
                }
            }
        } while (true);
    }

}
