// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.flurry.sdk:
//            dz, el

class it>
    implements LocationListener
{

    final dz a;

    public void onLocationChanged(Location location)
    {
        if (location != null)
        {
            dz.a(a, location);
        }
        el.a(4, dz.h(), "Location received");
        if (dz.a(a) >= 3)
        {
            el.a(4, dz.h(), "Max location reports reached, stopping");
            dz.b(a);
        }
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

    public ation(dz dz1)
    {
        a = dz1;
        super();
    }
}
