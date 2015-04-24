// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.GeofilterLoadedEvent;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.snapchat.android.location:
//            DownloadGeofilterTask

public class GeofilterImageManager
{

    private static GeofilterImageManager a;
    private final Cache b;
    private final Context c;
    private final Map d = new HashMap();
    private final ExecutorService e;
    private final Bus f;

    protected GeofilterImageManager(Context context, Cache cache, ExecutorService executorservice, Bus bus)
    {
        b = cache;
        c = context;
        e = executorservice;
        f = bus;
    }

    public static GeofilterImageManager a()
    {
        if (a == null)
        {
            a = new GeofilterImageManager(SnapchatApplication.e().getApplicationContext(), Caches.l, ScExecutors.b, BusProvider.a());
        }
        return a;
    }

    private void b(Geofilter geofilter)
    {
        this;
        JVM INSTR monitorenter ;
        String s = geofilter.b();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        Timber.c("GeofilterImageManager", "Geofilter did not have a valid URL", new Object[0]);
        Map map = d;
        map;
        JVM INSTR monitorenter ;
        if ((DownloadGeofilterTask)d.get(s) == null) goto _L2; else goto _L1
_L1:
        Timber.c("GeofilterImageManager", (new StringBuilder()).append("Geofilter request is pending for URL").append(s).toString(), new Object[0]);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DownloadGeofilterTask downloadgeofiltertask;
        downloadgeofiltertask = new DownloadGeofilterTask(c, s, geofilter, this, b);
        Timber.c("GeofilterImageManager", (new StringBuilder()).append("Downloading geofilter from ").append(s).toString(), new Object[0]);
        d.put(s, downloadgeofiltertask);
        map;
        JVM INSTR monitorexit ;
        downloadgeofiltertask.executeOnExecutor(e, new Void[0]);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        map;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private void c(Geofilter geofilter)
    {
        Timber.c("GeofilterImageManager", "Setting geofilter from cache", new Object[0]);
        geofilter.a(b.a(c, geofilter.b(), null));
        f.a(new GeofilterLoadedEvent());
    }

    private boolean d(Geofilter geofilter)
    {
        return b.e(geofilter.b());
    }

    public void a(Geofilter geofilter)
    {
        if (d(geofilter))
        {
            c(geofilter);
            return;
        } else
        {
            b(geofilter);
            return;
        }
    }

    public void a(String s)
    {
        Timber.c("GeofilterImageManager", (new StringBuilder()).append("Done downloading geofilter from: ").append(s).toString(), new Object[0]);
        synchronized (d)
        {
            d.remove(s);
        }
        f.a(new GeofilterLoadedEvent());
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a((Geofilter)iterator.next())) { }
    }
}
