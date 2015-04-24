// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.service;

import android.os.SystemClock;
import com.snapchat.android.Timber;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.service:
//            SnapchatService, SnapchatServiceManager

class a
    implements Runnable
{

    final SnapchatService a;

    public void run()
    {
        Timber.c("SnapchatService", (new StringBuilder()).append("mStopRunnable mFutureList.size()=").append(SnapchatService.c(a).size()).append(" hasPendingIntents=").append(SnapchatService.b(a).e()).toString(), new Object[0]);
        if (SnapchatService.c(a).isEmpty() && !SnapchatService.b(a).e())
        {
            long l = SystemClock.elapsedRealtime() - SnapchatService.d(a);
            Object aobj[] = new Object[1];
            aobj[0] = Long.valueOf(l);
            Timber.c("SnapchatService", "Stop service which lived for %d ms", aobj);
            a.stopSelf();
        }
    }

    ager(SnapchatService snapchatservice)
    {
        a = snapchatservice;
        super();
    }
}
