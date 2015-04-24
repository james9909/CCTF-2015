// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.Timber;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.cash:
//            ReceivingCashManager

class b
    implements com.snapchat.android.api2.cash.ForwardListener
{

    final CashFeedItem a;
    final solvingBlockersCallback b;
    final ReceivingCashManager c;

    public void a()
    {
        String s = ReceivingCashManager.b();
        Object aobj[] = new Object[3];
        aobj[0] = a.d();
        aobj[1] = a.l();
        aobj[2] = a.h().j();
        Timber.b(s, "CASH-LOG: ReceivingCashManager SUCCESS RESOLVED blockers id[%s], sender[%s] amount[%s]", aobj);
        c.a();
        BusProvider.a().a(new ChatUpdatedEvent(a.I(), a.d()));
        b.a();
    }

    public void b()
    {
        String s = ReceivingCashManager.b();
        Object aobj[] = new Object[3];
        aobj[0] = a.d();
        aobj[1] = a.l();
        aobj[2] = a.h().j();
        Timber.b(s, "CASH-LOG: ReceivingCashManager CANCELED RESOLVED blockers id[%s], sender[%s] amount[%s]", aobj);
        BusProvider.a().a(new ChatUpdatedEvent(a.I(), a.d()));
        b.b();
    }

    solvingBlockersCallback(ReceivingCashManager receivingcashmanager, CashFeedItem cashfeeditem, solvingBlockersCallback solvingblockerscallback)
    {
        c = receivingcashmanager;
        a = cashfeeditem;
        b = solvingblockerscallback;
        super();
    }
}
