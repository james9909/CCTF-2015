// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.List;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

class c
    implements com.snapchat.android.api2.cash.ueForwardListener
{

    final CashFeedItem a;
    final List b;
    final ChatConversation c;
    final SendingCashManager d;

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY SENT cash id[%s] successfully", aobj);
        AnalyticsEvents.p(a.h().j());
        if (b.isEmpty())
        {
            SendingCashManager.a(d, c);
            return;
        }
        String s = a.h().z();
        if (!TextUtils.isEmpty(s))
        {
            ((CashFeedItem)b.get(0)).h().g(s);
        }
        d.a(c, b);
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY FAILED to SEND cash id[%s]", aobj);
        a.a(com.snapchat.android.model.chat.SendReceiveStatus.FAILED);
        SendingCashManager.a(d, c);
    }

    n(SendingCashManager sendingcashmanager, CashFeedItem cashfeeditem, List list, ChatConversation chatconversation)
    {
        d = sendingcashmanager;
        a = cashfeeditem;
        b = list;
        c = chatconversation;
        super();
    }
}
