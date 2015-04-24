// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.util:
//            SnapListItemHandler

class b
    implements Runnable
{

    final SnapListItemHandler a;
    private ReceivedSnap b;

    public ReceivedSnap a()
    {
        return b;
    }

    public void run()
    {
        b.ah();
    }

    public (SnapListItemHandler snaplistitemhandler, ReceivedSnap receivedsnap)
    {
        a = snaplistitemhandler;
        super();
        b = receivedsnap;
    }
}
