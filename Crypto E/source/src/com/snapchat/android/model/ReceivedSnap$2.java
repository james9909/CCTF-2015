// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FeedIconRefreshedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.model:
//            ReceivedSnap

class this._cls0
    implements Runnable
{

    final ReceivedSnap this$0;

    public void run()
    {
        BusProvider.a().a(new FeedIconRefreshedEvent());
    }

    nRefreshedEvent()
    {
        this$0 = ReceivedSnap.this;
        super();
    }
}
