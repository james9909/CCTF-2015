// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.location.Location;
import com.snapchat.android.model.server.ServerGeofence;

// Referenced classes of package com.snapchat.android.util:
//            PointD

public class Geofence
{

    private final String a;
    private final PointD b[];

    public Geofence(ServerGeofence servergeofence)
    {
        a = servergeofence.getId();
        b = new PointD[servergeofence.getCoordinates().length];
        for (int i = 0; i < b.length; i++)
        {
            com.snapchat.android.model.server.ServerGeofence.Coordinate coordinate = servergeofence.getCoordinates()[i];
            b[i] = new PointD(coordinate.getLatitude(), coordinate.getLongitude());
        }

    }

    private double a(PointD pointd, PointD pointd1)
    {
        double d = Math.atan2(pointd.b(), pointd.a());
        double d1 = (Math.atan2(pointd1.b(), pointd1.a()) - d) % 6.2831853071795862D;
        if (d1 >= 3.1415926535897931D)
        {
            d1 -= 6.2831853071795862D;
        } else
        if (d1 < -3.1415926535897931D)
        {
            return d1 + 6.2831853071795862D;
        }
        return d1;
    }

    public boolean a(Location location)
    {
        double d = 0.0D;
        for (int i = 0; i < b.length; i++)
        {
            PointD pointd = b[i];
            PointD pointd1 = b[(i + 1) % b.length];
            d += a(new PointD(pointd.a() - location.getLatitude(), pointd.b() - location.getLongitude()), new PointD(pointd1.a() - location.getLatitude(), pointd1.b() - location.getLongitude()));
        }

        int j = Math.abs(d) != 3.1415926535897931D;
        boolean flag = false;
        if (j >= 0)
        {
            flag = true;
        }
        return flag;
    }
}
