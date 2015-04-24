// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.og;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.location:
//            Geofence, GeofencingRequest

public static final class anE
{

    private final List anD = new ArrayList();
    private int anE;

    public static int fD(int i)
    {
        return i & 7;
    }

    public anE addGeofence(Geofence geofence)
    {
        s.b(geofence, "geofence can't be null.");
        s.b(geofence instanceof og, "Geofence must be created using Geofence.Builder.");
        anD.add((og)geofence);
        return this;
    }

    public anD addGeofences(List list)
    {
        if (list != null && !list.isEmpty())
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                Geofence geofence = (Geofence)iterator.next();
                if (geofence != null)
                {
                    addGeofence(geofence);
                }
            }
        }
        return this;
    }

    public GeofencingRequest build()
    {
        boolean flag;
        if (!anD.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, "No geofence has been added to this request.");
        return new GeofencingRequest(anD, anE, null);
    }

    public anE setInitialTrigger(int i)
    {
        anE = fD(i);
        return this;
    }

    public ()
    {
        anE = 5;
    }
}
