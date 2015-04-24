// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util.eventbus:
//            SnapEventBus

public final class BusProvider
{

    private static final Bus a = new SnapEventBus();

    private BusProvider()
    {
    }

    public static Bus a()
    {
        return a;
    }

}
