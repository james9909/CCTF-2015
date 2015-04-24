// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.internal.og;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingEvent
{

    private final int anA;
    private final List anB;
    private final Location anC;
    private final int uq;

    private GeofencingEvent(int i, int j, List list, Location location)
    {
        uq = i;
        anA = j;
        anB = list;
        anC = location;
    }

    public static GeofencingEvent fromIntent(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return new GeofencingEvent(intent.getIntExtra("gms_error_code", -1), o(intent), p(intent), (Location)intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
        }
    }

    private static int o(Intent intent)
    {
        int i;
        for (i = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1); i == -1 || i != 1 && i != 2 && i != 4;)
        {
            return -1;
        }

        return i;
    }

    private static List p(Intent intent)
    {
        ArrayList arraylist = (ArrayList)intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arraylist == null)
        {
            return null;
        }
        ArrayList arraylist1 = new ArrayList(arraylist.size());
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); arraylist1.add(og.h((byte[])iterator.next()))) { }
        return arraylist1;
    }

    public int getErrorCode()
    {
        return uq;
    }

    public int getGeofenceTransition()
    {
        return anA;
    }

    public List getTriggeringGeofences()
    {
        return anB;
    }

    public Location getTriggeringLocation()
    {
        return anC;
    }

    public boolean hasError()
    {
        return uq != -1;
    }
}
