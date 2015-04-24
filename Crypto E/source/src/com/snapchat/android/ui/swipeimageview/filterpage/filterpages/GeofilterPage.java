// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.filterpages;

import android.view.View;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.ui.smartfilters.GeofilterView;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public class GeofilterPage extends FilterPage
{

    private final Geofilter b;
    private final GeofilterView c;

    public GeofilterPage(Geofilter geofilter, GeofilterView geofilterview)
    {
        b = geofilter;
        c = geofilterview;
    }

    public String a()
    {
        return (new StringBuilder()).append("Geofilter~").append(b.a()).toString();
    }

    public FilterPageType b()
    {
        return FilterPageType.b;
    }

    public View d()
    {
        return c;
    }

    public Geofilter f()
    {
        return b;
    }
}
