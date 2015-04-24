// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.networkmanager.internal.DownloadExecutor;
import com.snapchat.android.networkmanager.internal.DownloadRequestCallbackMap;
import com.snapchat.android.networkmanager.internal.DownloadRequestQueue;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import com.snapchat.android.util.memory.ResourcePool;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.snapchat.android.networkmanager:
//            DownloadRequest

public class DownloadManager
{
    public static interface Callback
    {

        public abstract void a(DownloadRequest downloadrequest);

        public abstract void a(DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult);
    }

    public static class DownloadExecutionContext
    {

        private final Set a;

        public Set a()
        {
            return a;
        }

        public DownloadExecutionContext(Set set)
        {
            a = set;
        }
    }


    private static final DownloadManager b = new DownloadManager();
    protected final com.snapchat.android.networkmanager.internal.DownloadExecutor.Callback a;
    private final Object c;
    private final ResourcePool d;
    private final DownloadRequestCallbackMap e;
    private final DownloadRequestQueue f;

    private DownloadManager()
    {
        this(new ResourcePool(DownloadExecutor.a, 3), new DownloadRequestCallbackMap(), new DownloadRequestQueue());
    }

    protected DownloadManager(ResourcePool resourcepool, DownloadRequestCallbackMap downloadrequestcallbackmap, DownloadRequestQueue downloadrequestqueue)
    {
        c = new Object();
        a = new com.snapchat.android.networkmanager.internal.DownloadExecutor.Callback() {

            final DownloadManager a;

            public void a(DownloadExecutor downloadexecutor, DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult, Object obj)
            {
                DownloadManager.a(a, downloadexecutor, downloadrequest, dynamicbytebuffer, networkresult, (DownloadExecutionContext)obj);
            }

            
            {
                a = DownloadManager.this;
                super();
            }
        };
        d = resourcepool;
        e = downloadrequestcallbackmap;
        f = downloadrequestqueue;
    }

    public static DownloadManager a()
    {
        return b;
    }

    static void a(DownloadManager downloadmanager, DownloadExecutor downloadexecutor, DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult, DownloadExecutionContext downloadexecutioncontext)
    {
        downloadmanager.a(downloadexecutor, downloadrequest, dynamicbytebuffer, networkresult, downloadexecutioncontext);
    }

    private void a(DownloadExecutor downloadexecutor, DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult, DownloadExecutionContext downloadexecutioncontext)
    {
        for (Iterator iterator = downloadexecutioncontext.a().iterator(); iterator.hasNext(); ((Callback)iterator.next()).a(downloadrequest, dynamicbytebuffer, networkresult)) { }
        synchronized (c)
        {
            d.a(downloadexecutor);
            Object aobj[] = new Object[4];
            aobj[0] = downloadrequest;
            aobj[1] = Integer.valueOf(d.b());
            aobj[2] = Integer.valueOf(d.a());
            aobj[3] = Integer.valueOf(f.a());
            Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s completed. Download executor pool size now %d/%d, queue size now %d", aobj);
        }
        c();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void c()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        DownloadExecutor downloadexecutor = (DownloadExecutor)d.c();
        if (downloadexecutor == null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        DownloadRequest downloadrequest = f.b();
        if (downloadrequest == null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        Object aobj[] = new Object[4];
        aobj[0] = downloadrequest;
        aobj[1] = Integer.valueOf(d.b());
        aobj[2] = Integer.valueOf(d.a());
        aobj[3] = Integer.valueOf(f.a());
        Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s starting. Download executor pool size now %d/%d, queue size now %d", aobj);
        DownloadExecutionContext downloadexecutioncontext = new DownloadExecutionContext(e.a(downloadrequest));
        downloadexecutor.a(downloadrequest, a, downloadexecutioncontext);
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        d.a(downloadexecutor);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(DownloadRequest downloadrequest, Callback callback)
    {
        synchronized (c)
        {
            f.a(downloadrequest);
            e.a(downloadrequest, callback);
            Object aobj[] = new Object[2];
            aobj[0] = downloadrequest;
            aobj[1] = Integer.valueOf(f.a());
            Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s queued. Queue size now %d", aobj);
        }
        c();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(String s)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        DownloadRequest downloadrequest;
        Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Attempting to cancel request for key %s", new Object[] {
            s
        });
        downloadrequest = f.a(s);
        if (downloadrequest == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        for (Iterator iterator = e.a(downloadrequest).iterator(); iterator.hasNext(); ((Callback)iterator.next()).a(downloadrequest)) { }
        break MISSING_BLOCK_LABEL_88;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Object aobj[] = new Object[2];
        aobj[0] = downloadrequest;
        aobj[1] = Integer.valueOf(f.a());
        Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s canceled. Queue size now %d", aobj);
        obj;
        JVM INSTR monitorexit ;
        return true;
        Timber.c("DownloadManager", "DOWNLOAD-MANAGER: No request to cancel for key %s", new Object[] {
            s
        });
        obj;
        JVM INSTR monitorexit ;
        return false;
    }

    public void b()
    {
        synchronized (c)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(f.a());
            Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Signaling context changed with %d queued requests", aobj);
            f.c();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
