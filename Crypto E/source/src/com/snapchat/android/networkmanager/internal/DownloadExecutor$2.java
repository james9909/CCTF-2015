// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import com.snapchat.android.networkmanager.DownloadRequest;

// Referenced classes of package com.snapchat.android.networkmanager.internal:
//            DownloadExecutor

class c
    implements Runnable
{

    final DownloadRequest a;
    final llback b;
    final Object c;
    final DownloadExecutor d;

    public void run()
    {
        com.snapchat.android.api2.framework.NetworkResult networkresult = d.a(a);
        b.a(d, a, DownloadExecutor.a(d), networkresult, c);
    }

    llback(DownloadExecutor downloadexecutor, DownloadRequest downloadrequest, llback llback, Object obj)
    {
        d = downloadexecutor;
        a = downloadrequest;
        b = llback;
        c = obj;
        super();
    }
}
