// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.network.EndpointManager;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareProvider

class val.title
    implements com.snapchat.android.api2.cash.blockers.nListener
{

    final SquareProvider this$0;
    final String val$title;

    public void a(Blocker blocker)
    {
    }

    public void a(Blocker blocker, List list, boolean flag)
    {
        TransactionHistoryFragment transactionhistoryfragment = new TransactionHistoryFragment(val$title);
        String as[] = new String[2];
        as[0] = EndpointManager.a().l();
        as[1] = "cash/history";
        transactionhistoryfragment.a(StringUtils.a(Arrays.asList(as), "/"));
        BusProvider.a().a(new StartFragmentEvent(transactionhistoryfragment));
    }

    public void b(Blocker blocker)
    {
    }

    public void b(Blocker blocker, List list, boolean flag)
    {
        BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ialogType.a, 0x7f0c0104));
    }

    ogType()
    {
        this$0 = final_squareprovider;
        val$title = String.this;
        super();
    }
}
