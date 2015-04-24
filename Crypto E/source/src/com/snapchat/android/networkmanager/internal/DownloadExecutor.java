// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import android.net.NetworkInfo;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.ApiTaskFactory;
import com.snapchat.android.api2.MediaDownloadTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.networkmanager.DownloadRequest;
import com.snapchat.android.networkmanager.NetworkStatusManager;
import com.snapchat.android.networkmanager.NetworkTypeDisallowedException;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.networkmanager.internal:
//            DownloadExecutorThreadFactory, BandwidthRecorder

public class DownloadExecutor
{
    public static interface Callback
    {

        public abstract void a(DownloadExecutor downloadexecutor, DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult, Object obj);
    }


    public static final Provider a = new Provider() {

        public DownloadExecutor a()
        {
            return new DownloadExecutor();
        }

        public Object get()
        {
            return a();
        }

    };
    private final NetworkStatusManager b;
    private final DynamicByteBuffer c;
    private final ApiTaskFactory d;
    private final ExecutorService e;
    private final BandwidthRecorder f;

    public DownloadExecutor()
    {
        this(new ApiTaskFactory(), new DynamicByteBuffer(0x3e800), Executors.newSingleThreadExecutor(DownloadExecutorThreadFactory.a()), NetworkStatusManager.a(), new BandwidthRecorder());
    }

    public DownloadExecutor(ApiTaskFactory apitaskfactory, DynamicByteBuffer dynamicbytebuffer, ExecutorService executorservice, NetworkStatusManager networkstatusmanager, BandwidthRecorder bandwidthrecorder)
    {
        b = networkstatusmanager;
        d = apitaskfactory;
        e = executorservice;
        c = dynamicbytebuffer;
        f = bandwidthrecorder;
    }

    static DynamicByteBuffer a(DownloadExecutor downloadexecutor)
    {
        return downloadexecutor.c;
    }

    protected NetworkResult a(DownloadRequest downloadrequest)
    {
        long l;
        String s;
        MediaDownloadTask mediadownloadtask;
        l = 0L;
        int i = 1;
        NetworkInfo networkinfo = b.b();
        if (networkinfo != null)
        {
            s = networkinfo.getTypeName();
        } else
        {
            s = "Unknown";
        }
        if (networkinfo != null && networkinfo.getType() != i)
        {
            i = 0;
        }
        if (!a())
        {
            IllegalStateException illegalstateexception = new IllegalStateException("Attempting to download media when user is logged out");
            return (new com.snapchat.android.api2.framework.NetworkResult.Builder(downloadrequest.d(), s)).a(illegalstateexception).a();
        }
        if (i == 0 && downloadrequest.c())
        {
            NetworkTypeDisallowedException networktypedisallowedexception = new NetworkTypeDisallowedException("Operation only allowed on wifi");
            return (new com.snapchat.android.api2.framework.NetworkResult.Builder(downloadrequest.d(), s)).a(networktypedisallowedexception).a();
        }
        mediadownloadtask = d.a(downloadrequest.d(), c);
        f.a();
        NetworkResult networkresult1 = mediadownloadtask.k();
        long l1;
        if (networkresult1 != null)
        {
            l1 = networkresult1.e();
        } else
        {
            l1 = l;
        }
        f.a(l1);
        return networkresult1;
        Exception exception1;
        exception1;
        NetworkResult networkresult;
        Timber.e("DownloadExecutor", "DOWNLOAD-MANAGER: Exception caught executing download request %s: %s", new Object[] {
            downloadrequest, exception1
        });
        networkresult = (new com.snapchat.android.api2.framework.NetworkResult.Builder(downloadrequest.d(), s)).a(exception1).a();
        if (networkresult != null)
        {
            l = networkresult.e();
        }
        f.a(l);
        return networkresult;
        Exception exception;
        exception;
        if (false)
        {
            l = null.e();
        }
        f.a(l);
        throw exception;
    }

    public void a(DownloadRequest downloadrequest, Callback callback, Object obj)
    {
        e.execute(new Runnable(downloadrequest, callback, obj) {

            final DownloadRequest a;
            final Callback b;
            final Object c;
            final DownloadExecutor d;

            public void run()
            {
                NetworkResult networkresult = d.a(a);
                b.a(d, a, DownloadExecutor.a(d), networkresult, c);
            }

            
            {
                d = DownloadExecutor.this;
                a = downloadrequest;
                b = callback;
                c = obj;
                super();
            }
        });
    }

    protected boolean a()
    {
        return UserPrefs.l();
    }

}
