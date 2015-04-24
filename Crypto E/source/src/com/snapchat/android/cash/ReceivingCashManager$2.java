// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.cash:
//            ReceivingCashManager

class a
    implements com.snapchat.android.api2.cash.ForwardListener
{

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

    nt(ReceivingCashManager receivingcashmanager, CashFeedItem cashfeeditem)
    {
        b = receivingcashmanager;
        a = cashfeeditem;
        super();
    }
}
