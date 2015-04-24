// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.media;

import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.networkmanager.DownloadRequest;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.snapchat.android.networkmanager.media:
//            MediaDownload

class a
    implements com.snapchat.android.networkmanager.Callback
{

    final MediaDownload a;

    public void a(DownloadRequest downloadrequest)
    {
        MediaDownload.a(a, false);
        MediaDownload.a(a).countDown();
    }

    public void a(DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult)
    {
        MediaDownload.a(a, a.a(dynamicbytebuffer, networkresult));
        MediaDownload.a(a).countDown();
        return;
        Exception exception;
        exception;
        MediaDownload.a(a).countDown();
        throw exception;
    }

    ck(MediaDownload mediadownload)
    {
        a = mediadownload;
        super();
    }
}
