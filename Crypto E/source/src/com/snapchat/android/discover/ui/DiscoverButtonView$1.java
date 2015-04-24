// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.snapchat.android.util.system.Clock;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DiscoverButtonView

class a
    implements Runnable
{

    final DiscoverButtonView a;

    public void run()
    {
        DiscoverButtonView.a(a, DiscoverButtonView.a(a).b());
        a.invalidate();
    }

    (DiscoverButtonView discoverbuttonview)
    {
        a = discoverbuttonview;
        super();
    }
}
