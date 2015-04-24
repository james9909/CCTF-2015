// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.media;

import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.networkmanager.DownloadRequest;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import java.util.concurrent.CountDownLatch;

public abstract class MediaDownload
{

    protected final com.snapchat.android.networkmanager.DownloadManager.Callback a = new com.snapchat.android.networkmanager.DownloadManager.Callback() {

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

            
            {
                a = MediaDownload.this;
                super();
            }
    };
    private final CountDownLatch b = new CountDownLatch(1);
    private final DownloadManager c;
    private volatile boolean d;

    protected MediaDownload(DownloadManager downloadmanager)
    {
        d = false;
        c = downloadmanager;
    }

    static CountDownLatch a(MediaDownload mediadownload)
    {
        return mediadownload.b;
    }

    static boolean a(MediaDownload mediadownload, boolean flag)
    {
        mediadownload.d = flag;
        return flag;
    }

    protected abstract boolean a(DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult);

    protected boolean b(String s, Bundle bundle, DownloadPriority downloadpriority, DownloadPriority downloadpriority1)
    {
        DownloadRequest downloadrequest = (new com.snapchat.android.networkmanager.DownloadRequest.Builder()).a(downloadpriority).b(downloadpriority1).a(s).a(bundle).a();
        c.a(downloadrequest, a);
        try
        {
            b.await();
        }
        catch (InterruptedException interruptedexception)
        {
            Timber.e("MediaDownload", "Interrupt while waiting for latch!", new Object[0]);
        }
        return d;
    }
}
