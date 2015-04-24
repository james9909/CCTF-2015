// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LocationListener
    implements android.location.LocationListener
{

    private final String a;
    private final LocationManager b;
    private Object c;
    private boolean d;
    private volatile boolean e;
    private List f;

    public LocationListener(String s, LocationManager locationmanager)
    {
        c = new Object();
        d = false;
        e = false;
        f = new ArrayList();
        a = s;
        b = locationmanager;
    }

    private boolean d()
    {
        boolean flag;
        try
        {
            flag = b.isProviderEnabled(a);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Timber.c("LocationListener", illegalargumentexception.getMessage(), new Object[0]);
            return false;
        }
        return flag;
    }

    private void e()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (d)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        flag = d();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        b.requestLocationUpdates(a, 1000L, 0.0F, this);
        d = true;
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Timber.e("LocationListener", illegalargumentexception.getMessage(), new Object[0]);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        Timber.e("LocationListener", exception1.getMessage(), new Object[0]);
          goto _L1
    }

    public Location a()
    {
        Location location;
        long l;
        location = null;
        l = System.currentTimeMillis();
        List list = f;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = f.iterator();
_L8:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Location location1 = (Location)iterator.next();
        if (l - location1.getTime() <= 60000L) goto _L4; else goto _L3
_L3:
        Timber.c("LocationListener", (new StringBuilder()).append(a).append(" removing location because it is stale ").append(location1.toString()).toString(), new Object[0]);
        iterator.remove();
        location1 = location;
        break MISSING_BLOCK_LABEL_246;
_L4:
        if (location == null) goto _L6; else goto _L5
_L5:
        if (location.getAccuracy() <= location1.getAccuracy()) goto _L7; else goto _L6
_L6:
        Timber.c("LocationListener", (new StringBuilder()).append(a).append(" new best location ").append(location1.toString()).toString(), new Object[0]);
        break MISSING_BLOCK_LABEL_246;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        list;
        JVM INSTR monitorexit ;
        StringBuilder stringbuilder = (new StringBuilder()).append(a).append(" has best location of ");
        String s;
        if (location == null)
        {
            s = "null";
        } else
        {
            s = location.toString();
        }
        Timber.c("LocationListener", stringbuilder.append(s).toString(), new Object[0]);
        return location;
_L7:
        location1 = location;
        location = location1;
          goto _L8
    }

    public void b()
    {
        e = false;
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (!d)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        flag = a.equals("passive");
        if (flag)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        b.removeUpdates(this);
        d = false;
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Timber.e("LocationListener", illegalargumentexception.getMessage(), new Object[0]);
        d = false;
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception2;
        exception2;
        Timber.e("LocationListener", exception2.getMessage(), new Object[0]);
        d = false;
          goto _L1
        Exception exception1;
        exception1;
        d = false;
        throw exception1;
    }

    public void c()
    {
        e = true;
        e();
    }

    public void onLocationChanged(Location location)
    {
        synchronized (f)
        {
            f.add(location);
            Timber.c("LocationListener", (new StringBuilder()).append("New location on: ").append(a).append(" location: ").append(location.toString()).toString(), new Object[0]);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onProviderDisabled(String s)
    {
        synchronized (c)
        {
            d = false;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onProviderEnabled(String s)
    {
        if (e)
        {
            c();
        }
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }
}
