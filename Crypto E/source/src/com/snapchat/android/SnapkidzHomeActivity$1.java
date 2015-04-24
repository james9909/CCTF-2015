// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.GlobalLayoutEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android:
//            SnapkidzHomeActivity

class a
    implements android.view.alLayoutListener
{

    final SnapkidzHomeActivity a;

    public void onGlobalLayout()
    {
        BusProvider.a().a(new GlobalLayoutEvent());
    }

    outEvent(SnapkidzHomeActivity snapkidzhomeactivity)
    {
        a = snapkidzhomeactivity;
        super();
    }
}
