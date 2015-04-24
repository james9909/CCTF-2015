// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import com.snapchat.android.networkmanager.DownloadRequest;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class DownloadRequestCallbackMap
{

    private final Object a = new Object();
    private final Map b = new HashMap();

    public DownloadRequestCallbackMap()
    {
    }

    public Set a(DownloadRequest downloadrequest)
    {
        Set set;
        synchronized (a)
        {
            set = (Set)b.remove(downloadrequest.e());
        }
        return set;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(DownloadRequest downloadrequest, com.snapchat.android.networkmanager.DownloadManager.Callback callback)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        Object obj1 = (Set)b.get(downloadrequest.e());
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        obj1 = new HashSet();
        b.put(downloadrequest.e(), obj1);
        ((Set) (obj1)).add(callback);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
