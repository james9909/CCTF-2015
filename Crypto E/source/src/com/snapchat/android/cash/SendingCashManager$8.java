// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.server.ServerCashTransaction;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

class b
    implements com.snapchat.android.api2.framework.back
{

    final ChatConversation a;
    final String b;
    final SendingCashManager c;

    public void a(ServerCashTransaction servercashtransaction, NetworkResult networkresult)
    {
        if (networkresult.h() && servercashtransaction != null)
        {
            com.snapchat.android.model.CashTransaction cashtransaction = com.snapchat.android.model.er.a(servercashtransaction);
            CashFeedItem cashfeeditem1 = a.e(b);
            CashFeedItem cashfeeditem2 = new CashFeedItem(cashtransaction);
            CashFeedItem cashfeeditem3 = CashUtils.a(a, cashfeeditem1, cashfeeditem2);
            if (cashfeeditem3 != null)
            {
                if (a.B() || CashUtils.a(a.b(), cashfeeditem3))
                {
                    c.b(a, ListUtils.a(cashfeeditem3));
                }
                CashFeedItemTable.a(SnapchatApplication.e(), ListUtils.a(cashfeeditem3));
            }
            BusProvider.a().a(new ChatUpdatedEvent(a.u()));
            BusProvider.a().a(new UpdateFeedEvent());
        } else
        if (networkresult.j() == 404)
        {
            CashFeedItem cashfeeditem = a.e(b);
            if (CashUtils.a(a, cashfeeditem, null) != null)
            {
                BusProvider.a().a(new ChatUpdatedEvent(a.u()));
                BusProvider.a().a(new UpdateFeedEvent());
                return;
            }
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ServerCashTransaction)obj, networkresult);
    }

    n(SendingCashManager sendingcashmanager, ChatConversation chatconversation, String s)
    {
        c = sendingcashmanager;
        a = chatconversation;
        b = s;
        super();
    }
}
