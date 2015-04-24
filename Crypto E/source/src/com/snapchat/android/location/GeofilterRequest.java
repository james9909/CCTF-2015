// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.location.Location;
import java.util.ArrayList;
import java.util.List;

public class GeofilterRequest
{

    public final Location a;
    public final long b;
    private List c;

    public GeofilterRequest(Location location, long l)
    {
        c = new ArrayList();
        a = location;
        b = l;
    }

    public List a()
    {
        return c;
    }

    public void a(List list)
    {
        c = list;
    }
}
