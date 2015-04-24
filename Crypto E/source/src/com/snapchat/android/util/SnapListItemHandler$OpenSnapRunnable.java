// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SnapMessageViewingEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util:
//            SnapListItemHandler, SnapUtils

class b
    implements Runnable
{

    ReceivedSnap a;
    ChronologicalSnapProvider b;
    final SnapListItemHandler c;

    public void run()
    {
        SnapListItemHandler.a(c).b();
        SnapListItemHandler.b(c).c("feed");
        if (a.F())
        {
            return;
        } else
        {
            SnapUtils.a(a);
            BusProvider.a().a(new SnapMessageViewingEvent(true));
            SnapListItemHandler.a(c, true);
            SnapListItemHandler.c(c).a(a, b);
            return;
        }
    }

    public (SnapListItemHandler snaplistitemhandler, ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider)
    {
        c = snaplistitemhandler;
        super();
        a = receivedsnap;
        b = chronologicalsnapprovider;
    }
}
