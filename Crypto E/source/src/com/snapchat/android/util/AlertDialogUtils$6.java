// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.DialogInterface;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class b
    implements android.content.lickListener
{

    final ReceivedSnap a;
    final User b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AnalyticsEvents.a(false, a, b);
    }

    s(ReceivedSnap receivedsnap, User user)
    {
        a = receivedsnap;
        b = user;
        super();
    }
}
