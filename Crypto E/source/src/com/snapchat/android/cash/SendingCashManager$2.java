// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.Timber;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

class c
    implements com.snapchat.android.api2.cash.ueForwardListener
{

    final CashFeedItem a;
    final ChatConversation b;
    final ndingCashCallback c;
    final SendingCashManager d;

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager PRE-INITIATED cash id[%s]", aobj);
        a.a(com.snapchat.android.model.chat.SendReceiveStatus.SENDING);
        b.a(a);
        b.K();
        FeedIconManager.a().a(b, false);
        b.k(false);
        c.a();
        d.a(b, a, true);
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SEND CANCELED id[%s]", aobj);
        c.b();
        SendingCashManager.a(d, b);
    }

    ndingCashCallback(SendingCashManager sendingcashmanager, CashFeedItem cashfeeditem, ChatConversation chatconversation, ndingCashCallback ndingcashcallback)
    {
        d = sendingcashmanager;
        a = cashfeeditem;
        b = chatconversation;
        c = ndingcashcallback;
        super();
    }
}
