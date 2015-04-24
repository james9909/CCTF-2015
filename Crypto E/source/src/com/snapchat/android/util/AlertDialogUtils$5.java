// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.DialogInterface;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SnapSelectedForReplayEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils, SnapUtils

static final class c
    implements android.content.lickListener
{

    final ReceivedSnap a;
    final User b;
    final ChronologicalSnapProvider c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.x();
        b.C();
        if (c != null && (c instanceof ChatConversation))
        {
            ((ChatConversation)c).r();
        }
        SnapUtils.b();
        BusProvider.a().a(new SnapSelectedForReplayEvent());
        AnalyticsEvents.a(true, a, b);
    }

    rovider(ReceivedSnap receivedsnap, User user, ChronologicalSnapProvider chronologicalsnapprovider)
    {
        a = receivedsnap;
        b = user;
        c = chronologicalsnapprovider;
        super();
    }
}
