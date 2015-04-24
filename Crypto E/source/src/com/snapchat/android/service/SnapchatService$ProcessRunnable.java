// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.service;

import android.os.Handler;
import com.snapchat.android.operation.Operation;

// Referenced classes of package com.snapchat.android.service:
//            SnapchatService

class b
    implements Runnable
{

    final SnapchatService a;
    private final Operation b;

    public void run()
    {
        b.a(SnapchatService.a(a));
        SnapchatService.a().post(new ble(a, b));
    }

    public ble(SnapchatService snapchatservice, Operation operation)
    {
        a = snapchatservice;
        super();
        b = operation;
    }
}
