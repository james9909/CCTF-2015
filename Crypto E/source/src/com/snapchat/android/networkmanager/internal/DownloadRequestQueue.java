// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import com.snapchat.android.Timber;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.networkmanager.DownloadRequest;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.PriorityQueue;

// Referenced classes of package com.snapchat.android.networkmanager.internal:
//            DownloadRequestComparator

public class DownloadRequestQueue
{

    private static final Comparator a = Collections.reverseOrder(new DownloadRequestComparator());
    private PriorityQueue b;
    private final Map c = new HashMap();
    private final Object d = new Object();

    public DownloadRequestQueue()
    {
        b = new PriorityQueue(1, a);
    }

    public int a()
    {
        int i;
        synchronized (d)
        {
            i = c.size();
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public DownloadRequest a(String s)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        DownloadRequest downloadrequest = (DownloadRequest)c.get(s);
        if (downloadrequest == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        b.remove(downloadrequest);
        c.remove(downloadrequest.e());
        obj;
        JVM INSTR monitorexit ;
        return downloadrequest;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(DownloadRequest downloadrequest)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        DownloadRequest downloadrequest1 = (DownloadRequest)c.get(downloadrequest.e());
        if (downloadrequest1 == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        downloadrequest = downloadrequest1.a(downloadrequest);
        b.remove(downloadrequest1);
        c.remove(downloadrequest1.e());
        c.put(downloadrequest.e(), downloadrequest);
        b.offer(downloadrequest);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public DownloadRequest b()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        DownloadRequest downloadrequest = (DownloadRequest)b.poll();
        if (downloadrequest == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        c.remove(downloadrequest.e());
        obj;
        JVM INSTR monitorexit ;
        return downloadrequest;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        PriorityQueue priorityqueue = b;
        b = new PriorityQueue(Math.max(1, priorityqueue.size()), a);
        DownloadRequest downloadrequest1;
        for (Iterator iterator = priorityqueue.iterator(); iterator.hasNext(); b.add(downloadrequest1))
        {
            DownloadRequest downloadrequest = (DownloadRequest)iterator.next();
            downloadrequest1 = downloadrequest.g();
            if (!downloadrequest1.a().equals(downloadrequest.a()))
            {
                Object aobj[] = new Object[3];
                aobj[0] = downloadrequest;
                aobj[1] = downloadrequest.a().name();
                aobj[2] = downloadrequest1.a().name();
                Timber.c("DownloadRequestQueue", "DOWNLOAD-MANAGER: Degraded priority of %s from %s to %s", aobj);
                c.put(downloadrequest.e(), downloadrequest1);
            }
        }

        break MISSING_BLOCK_LABEL_165;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

}
