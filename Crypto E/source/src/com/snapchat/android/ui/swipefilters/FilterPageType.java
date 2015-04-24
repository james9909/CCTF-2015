// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipefilters;


public final class FilterPageType extends Enum
{

    public static final FilterPageType a;
    public static final FilterPageType b;
    public static final FilterPageType c;
    public static final FilterPageType d;
    public static final FilterPageType e;
    private static final FilterPageType f[];

    private FilterPageType(String s, int i)
    {
        super(s, i);
    }

    public static FilterPageType valueOf(String s)
    {
        return (FilterPageType)Enum.valueOf(com/snapchat/android/ui/swipefilters/FilterPageType, s);
    }

    public static FilterPageType[] values()
    {
        return (FilterPageType[])f.clone();
    }

    static 
    {
        a = new FilterPageType("UNFILTERED", 0);
        b = new FilterPageType("GEOFILTER", 1);
        c = new FilterPageType("INFOFILTER", 2);
        d = new FilterPageType("BACKGROUNDFILTER", 3);
        e = new FilterPageType("TURN_ON_FILTERS_PAGE", 4);
        FilterPageType afilterpagetype[] = new FilterPageType[5];
        afilterpagetype[0] = a;
        afilterpagetype[1] = b;
        afilterpagetype[2] = c;
        afilterpagetype[3] = d;
        afilterpagetype[4] = e;
        f = afilterpagetype;
    }
}
