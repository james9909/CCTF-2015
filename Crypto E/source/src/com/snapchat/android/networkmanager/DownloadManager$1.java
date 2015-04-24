// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.networkmanager.internal.DownloadExecutor;
import com.snapchat.android.util.memory.DynamicByteBuffer;

// Referenced classes of package com.snapchat.android.networkmanager:
//            DownloadManager, DownloadRequest

class a
    implements com.snapchat.android.networkmanager.internal.allback
{

    final DownloadManager a;

    public void a(DownloadExecutor downloadexecutor, DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult, Object obj)
    {
        DownloadManager.a(a, downloadexecutor, downloadrequest, dynamicbytebuffer, networkresult, (wnloadExecutionContext)obj);
    }

    xecutor(DownloadManager downloadmanager)
    {
        a = downloadmanager;
        super();
    }
}
