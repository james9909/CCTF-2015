// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.NoFilterEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util:
//            PhotoEffectTask

class a
    implements Runnable
{

    final PhotoEffectTask a;

    public void run()
    {
        BusProvider.a().a(new NoFilterEvent());
    }

    vent(PhotoEffectTask photoeffecttask)
    {
        a = photoeffecttask;
        super();
    }
}
