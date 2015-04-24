// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;

import com.snapchat.android.controller.countdown.SnapCountdownListener;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.util.eventbus.TimerFinishEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.snapview:
//            SnapViewSession, SnapViewSessionStopReason

class a
    implements SnapCountdownListener
{

    final SnapViewSession a;

    public void a(ReceivedSnap receivedsnap)
    {
        SnapViewSession.o(a).a(new TimerFinishEvent(SnapViewSession.e(a) instanceof StorySnap));
        SnapViewSession.a(a, SnapViewSessionStopReason.d);
    }

    public void a(ReceivedSnap receivedsnap, long l)
    {
        SnapViewSession.a(a, l);
    }

    public void b(ReceivedSnap receivedsnap)
    {
    }

    public void c(ReceivedSnap receivedsnap)
    {
    }

    pReason(SnapViewSession snapviewsession)
    {
        a = snapviewsession;
        super();
    }
}
