// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.networkmanager.DownloadRequest;
import java.util.Comparator;

class DownloadRequestComparator
    implements Comparator
{

    DownloadRequestComparator()
    {
    }

    public int a(DownloadRequest downloadrequest, DownloadRequest downloadrequest1)
    {
        int i = downloadrequest.a().compareTo(downloadrequest1.a());
        if (i != 0)
        {
            return i;
        }
        if (downloadrequest.f() < downloadrequest1.f())
        {
            return 1;
        }
        return downloadrequest.f() <= downloadrequest1.f() ? 0 : -1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((DownloadRequest)obj, (DownloadRequest)obj1);
    }
}
