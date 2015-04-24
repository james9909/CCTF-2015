// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.location.Location;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.handledexceptions.GeofilterRequestException;
import com.snapchat.android.api2.GetLocationDataTask;
import com.snapchat.android.api2.framework.HyperRequestTaskExecutor;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.WeatherData;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.snapchat.android.location:
//            LocationProvider, GeofilterImageManager, GeofilterRequest

public class GeofilterManager
    implements com.snapchat.android.api2.GetLocationDataTask.GetLocationDataTaskCallback
{

    private static GeofilterManager c;
    protected GeofilterRequest a;
    protected GeofilterRequest b;
    private final LocationProvider d;
    private final StoryLibrary e;
    private final GeofilterImageManager f;
    private final HyperRequestTaskExecutor g;
    private final ExceptionReporter h;
    private boolean i;
    private WeatherData j;
    private PostToStory k;

    private GeofilterManager()
    {
        this(LocationProvider.a(), StoryLibrary.a(), GeofilterImageManager.a(), new HyperRequestTaskExecutor(), new ExceptionReporter());
    }

    protected GeofilterManager(LocationProvider locationprovider, StoryLibrary storylibrary, GeofilterImageManager geofilterimagemanager, HyperRequestTaskExecutor hyperrequesttaskexecutor, ExceptionReporter exceptionreporter)
    {
        i = false;
        j = null;
        k = null;
        d = locationprovider;
        e = storylibrary;
        f = geofilterimagemanager;
        g = hyperrequesttaskexecutor;
        h = exceptionreporter;
        c = this;
    }

    public static GeofilterManager a()
    {
        if (c == null)
        {
            new GeofilterManager();
        }
        return c;
    }

    private boolean a(Location location)
    {
        while (b == null || b.a.getAccuracy() > location.getAccuracy() || System.currentTimeMillis() - b.a.getTime() > 60000L) 
        {
            return true;
        }
        return false;
    }

    private boolean g()
    {
        while (a == null || System.currentTimeMillis() - a.b >= 5000L) 
        {
            return false;
        }
        return true;
    }

    public void a(PostToStory posttostory)
    {
        k = posttostory;
        e.a(posttostory);
    }

    public void a(WeatherData weatherdata)
    {
        j = weatherdata;
    }

    public void a(List list)
    {
        if (a == null)
        {
            Timber.c("GeofilterManager", "There should not be a respones here", new Object[0]);
            GeofilterRequestException geofilterrequestexception = new GeofilterRequestException("No pending request but processing a geofilter response");
            h.a(geofilterrequestexception);
        } else
        {
            Timber.c("GeofilterManager", (new StringBuilder()).append("Have new geofilters").append(list.toString()).toString(), new Object[0]);
            a.a(list);
            b = a;
            a = null;
            f.a(list);
            if (i)
            {
                c();
                return;
            }
        }
    }

    public List b()
    {
        ArrayList arraylist = new ArrayList();
        Timber.c("GeofilterManager", "Checking for current geofilters", new Object[0]);
        if (b == null)
        {
            Timber.c("GeofilterManager", "No current geofilters", new Object[0]);
            return arraylist;
        }
        if (System.currentTimeMillis() - b.b > 0x1d4c0L)
        {
            Timber.c("GeofilterManager", "geofilters are stale. Returning empty set", new Object[0]);
            return arraylist;
        } else
        {
            arraylist.addAll(b.a());
            Timber.c("GeofilterManager", (new StringBuilder()).append("have valid geofilters. Returning ").append(b.a().toString()).toString(), new Object[0]);
            return arraylist;
        }
    }

    public void c()
    {
        this;
        JVM INSTR monitorenter ;
        Location location;
        location = d.d();
        Timber.c("GeofilterManager", "App is requestion to update geofilters", new Object[0]);
        if (location != null) goto _L2; else goto _L1
_L1:
        Timber.c("GeofilterManager", "No location to update with", new Object[0]);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!g() || location.getAccuracy() >= a.a.getAccuracy())
        {
            break MISSING_BLOCK_LABEL_88;
        }
        i = true;
        Timber.c("GeofilterManager", "Pending request but have better location now", new Object[0]);
          goto _L3
        Exception exception;
        exception;
        throw exception;
label0:
        {
            if (!g())
            {
                break label0;
            }
            Timber.c("GeofilterManager", "Pending request", new Object[0]);
        }
          goto _L3
label1:
        {
            if (a(location))
            {
                break label1;
            }
            Timber.c("GeofilterManager", "New geofilters would not be better", new Object[0]);
        }
          goto _L3
        Timber.c("GeofilterManager", (new StringBuilder()).append("Creating request with location: ").append(location.toString()).toString(), new Object[0]);
        i = false;
        a = new GeofilterRequest(location, System.currentTimeMillis());
        GetLocationDataTask getlocationdatatask = new GetLocationDataTask(this, location);
        g.a(getlocationdatatask);
          goto _L3
    }

    public WeatherData d()
    {
        return j;
    }

    public boolean e()
    {
        return b().size() > 0;
    }

    public void f()
    {
        j = null;
        k = null;
        e.a(null);
        b = null;
    }
}
