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

class b
    implements com.snapchat.android.api2.cash.ueForwardListener
{

    final CashFeedItem a;
    final ChatConversation b;
    final SendingCashManager c;

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager INITIATED cash id[%s] successfully", aobj);
        SendingCashManager.a(c, b);
        AnalyticsEvents.p(a.h().j());
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to INITIATE cash id[%s]", aobj);
        SendingCashManager.a(c, b);
    }

    n(SendingCashManager sendingcashmanager, CashFeedItem cashfeeditem, ChatConversation chatconversation)
    {
        c = sendingcashmanager;
        a = cashfeeditem;
        b = chatconversation;
        super();
    }
}
