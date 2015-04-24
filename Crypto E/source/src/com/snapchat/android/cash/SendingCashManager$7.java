// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.chat.CashFeedItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

class a
    implements com.snapchat.android.api2.cash.wedTask.MarkTransactionsAsViewedTaskCallback
{

    final HashMap a;
    final SendingCashManager b;

    private void a()
    {
        Collection collection = a.values();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); ((CashFeedItem)iterator.next()).a(false)) { }
        CashFeedItemTable.a(SnapchatApplication.e(), collection);
    }

    public void a(int i)
    {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED marking all items as viewed", new Object[0]);
        a();
    }

    public void a(List list)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(list.size());
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SUCCESS marked as viewed %d items", aobj);
        ArrayList arraylist = new ArrayList();
        String s;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(a.remove(s)))
        {
            s = (String)iterator.next();
        }

        CashFeedItemTable.a(SnapchatApplication.e(), arraylist);
        a();
    }

    mTable(SendingCashManager sendingcashmanager, HashMap hashmap)
    {
        b = sendingcashmanager;
        a = hashmap;
        super();
    }
}
