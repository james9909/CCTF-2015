// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils, SnapListItemHandler

class d
    implements Runnable
{

    final SnapListItemHandler a;
    private ReceivedSnap b;
    private Context c;
    private ChronologicalSnapProvider d;

    public void run()
    {
        User user = User.c();
        if (user.D())
        {
            AlertDialogUtils.a(c, b, d);
            AnalyticsEvents.b(b, user);
        }
    }

    public (SnapListItemHandler snaplistitemhandler, ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, Context context)
    {
        a = snaplistitemhandler;
        super();
        b = receivedsnap;
        c = context;
        d = chronologicalsnapprovider;
    }
}
