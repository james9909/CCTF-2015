// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.location:
//            FusedLocationProvider, LocationListener

public class LocationProvider
{

    private static LocationProvider a;
    private static Context b;
    private LocationManager c;
    private final List d;
    private final FusedLocationProvider e;

    protected LocationProvider(LocationManager locationmanager, FusedLocationProvider fusedlocationprovider)
    {
        this(locationmanager, fusedlocationprovider, ((List) (a(locationmanager))));
    }

    protected LocationProvider(LocationManager locationmanager, FusedLocationProvider fusedlocationprovider, List list)
    {
        c = locationmanager;
        d = list;
        e = fusedlocationprovider;
    }

    public static LocationProvider a()
    {
        if (b == null)
        {
            throw new IllegalStateException("Location manager has not been initialized");
        }
        if (a == null)
        {
            a = new LocationProvider((LocationManager)b.getSystemService("location"), new FusedLocationProvider(b));
        }
        return a;
    }

    protected static ArrayList a(LocationManager locationmanager)
    {
        ArrayList arraylist;
        arraylist = new ArrayList(3);
        String as[] = {
            "network", "gps"
        };
        int i;
        int j;
        String s;
        IllegalArgumentException illegalargumentexception;
        try
        {
            i = as.length;
        }
        catch (Exception exception)
        {
            Timber.e("LocationManager", exception.getMessage(), new Object[0]);
            return arraylist;
        }
        j = 0;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        s = as[j];
        if (locationmanager.getProvider(s) != null)
        {
            arraylist.add(new LocationListener(s, locationmanager));
        }
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_31;
        illegalargumentexception;
        Timber.e("LocationManager", illegalargumentexception.getMessage(), new Object[0]);
          goto _L3
        SecurityException securityexception;
        securityexception;
        Timber.e("LocationManager", securityexception.getMessage(), new Object[0]);
          goto _L3
_L1:
        LocationListener locationlistener = new LocationListener("passive", locationmanager);
        locationlistener.c();
        arraylist.add(locationlistener);
        return arraylist;
    }

    public static void a(Context context)
    {
        b = context;
    }

    public void b()
    {
        Timber.c("LocationManager", "Start tracking!", new Object[0]);
        for (Iterator iterator = d.iterator(); iterator.hasNext(); ((LocationListener)iterator.next()).c()) { }
    }

    public void c()
    {
        Timber.c("LocationManager", "Stop tracking!", new Object[0]);
        for (Iterator iterator = d.iterator(); iterator.hasNext(); ((LocationListener)iterator.next()).b()) { }
    }

    public Location d()
    {
        Location location = e.a();
        StringBuilder stringbuilder = (new StringBuilder()).append("Location from device is ");
        String s;
        Iterator iterator;
        if (location == null)
        {
            s = "Null";
        } else
        {
            s = location.toString();
        }
        Timber.c("LocationManager", stringbuilder.append(s).toString(), new Object[0]);
        iterator = d.iterator();
        while (iterator.hasNext()) 
        {
            Location location1 = ((LocationListener)iterator.next()).a();
            Location location2;
            if (location == null || location1 != null && location1.getAccuracy() < location.getAccuracy())
            {
                StringBuilder stringbuilder1 = (new StringBuilder()).append("Location has been updated to ");
                String s1;
                if (location1 == null)
                {
                    s1 = "Null";
                } else
                {
                    s1 = location1.toString();
                }
                Timber.c("LocationManager", stringbuilder1.append(s1).toString(), new Object[0]);
                location2 = location1;
            } else
            {
                location2 = location;
            }
            location = location2;
        }
        return location;
    }
}
