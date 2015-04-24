// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.CashFeedItem;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

class b
    implements com.snapchat.android.api2.cash.ueForwardListener
{

    final CashFeedItem a;
    final nfirmingCashCallback b;
    final SendingCashManager c;

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRMED cash id[%s]", aobj);
        b.a();
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRM CANCELED id[%s]", aobj);
        b.b();
    }

    nfirmingCashCallback(SendingCashManager sendingcashmanager, CashFeedItem cashfeeditem, nfirmingCashCallback nfirmingcashcallback)
    {
        c = sendingcashmanager;
        a = cashfeeditem;
        b = nfirmingcashcallback;
        super();
    }
}
