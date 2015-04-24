// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller.countdown;

import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.controller.countdown:
//            SnapConsumptionRecorder, SnapCountdownItem, SnapCountdownController

public static class a
{

    private final SnapConsumptionRecorder a;

    public SnapCountdownItem a(ReceivedSnap receivedsnap, boolean flag)
    {
        SnapCountdownItem snapcountdownitem = new SnapCountdownItem(receivedsnap, flag);
        snapcountdownitem.a(a);
        return snapcountdownitem;
    }

    ()
    {
        this(new SnapConsumptionRecorder());
    }

    <init>(SnapConsumptionRecorder snapconsumptionrecorder)
    {
        a = snapconsumptionrecorder;
    }
}
