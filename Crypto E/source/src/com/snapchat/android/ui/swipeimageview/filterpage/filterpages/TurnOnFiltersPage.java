// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.filterpages;

import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.ui.smartfilters.TurnOnFiltersView;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public class TurnOnFiltersPage extends FilterPage
{

    private final TurnOnFiltersView b;

    public TurnOnFiltersPage(TurnOnFiltersView turnonfiltersview)
    {
        b = turnonfiltersview;
    }

    public String a()
    {
        return "TurnOnSmartFilters";
    }

    public boolean a(MotionEvent motionevent)
    {
        return b.a(motionevent);
    }

    public FilterPageType b()
    {
        return FilterPageType.e;
    }

    public View d()
    {
        return b;
    }
}
