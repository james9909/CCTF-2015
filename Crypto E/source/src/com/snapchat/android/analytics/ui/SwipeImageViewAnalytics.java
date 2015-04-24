// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.ui;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.GeofilterPage;

public class SwipeImageViewAnalytics
{

    private int a;
    private int b;
    private int c;
    private int d;
    private String e;
    private String f;

    public SwipeImageViewAnalytics()
    {
        b = 0;
        c = 0;
        d = 0;
        e = "None";
    }

    public int a()
    {
        return b;
    }

    public void a(int i)
    {
        a = i;
    }

    public void a(FilterPage filterpage)
    {
        b = 1 + b;
        c(filterpage);
    }

    protected void a(String s, boolean flag, boolean flag1, String s1)
    {
        AnalyticsEvents.a(s, flag, flag1, s1);
    }

    public int b()
    {
        return c;
    }

    public void b(FilterPage filterpage)
    {
        c = 1 + c;
        c(filterpage);
    }

    public String c()
    {
        return e;
    }

    public void c(FilterPage filterpage)
    {
        boolean flag = true;
        d(filterpage);
        e = filterpage.a();
        String s = e;
        boolean flag1;
        if (f != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (a != 0)
        {
            flag = false;
        }
        a(s, flag1, flag, f);
    }

    public int d()
    {
        return d;
    }

    protected void d(FilterPage filterpage)
    {
        if (filterpage instanceof GeofilterPage)
        {
            d = 1 + d;
            f = ((GeofilterPage)filterpage).f().a();
            return;
        } else
        {
            f = null;
            return;
        }
    }

    public String e()
    {
        return f;
    }
}
