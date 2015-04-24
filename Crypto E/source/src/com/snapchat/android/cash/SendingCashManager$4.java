// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

class c
    implements com.snapchat.android.api2.cash.ueForwardListener
{

    final CashFeedItem a;
    final ndingCashCallback b;
    final ChatConversation c;
    final SendingCashManager d;

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FETCHED transaction and resolved blockers id[%s]", aobj);
        AnalyticsEvents.p(a.h().j());
        b.a();
        SendingCashManager.a(d, c);
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FAILED to fetch transaction and/or resolve blockers id[%s]", aobj);
        b.b();
        SendingCashManager.a(d, c);
    }

    n(SendingCashManager sendingcashmanager, CashFeedItem cashfeeditem, ndingCashCallback ndingcashcallback, ChatConversation chatconversation)
    {
        d = sendingcashmanager;
        a = cashfeeditem;
        b = ndingcashcallback;
        c = chatconversation;
        super();
    }
}
