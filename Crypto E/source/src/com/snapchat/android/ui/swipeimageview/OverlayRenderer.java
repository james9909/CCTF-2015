// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview;

import android.util.DisplayMetrics;
import android.view.View;
import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageProvider;

public class OverlayRenderer
{

    public OverlayRenderer()
    {
    }

    private void a(View view, float f, float f1, float f2, float f3)
    {
        if (view != null)
        {
            view.setVisibility(0);
            view.layout((int)f, (int)f1, (int)f2, (int)f3);
        }
    }

    private void a(FilterPageProvider filterpageprovider, DisplayMetrics displaymetrics, float f, int i, int j)
    {
        View view = filterpageprovider.a(j).d();
        a(filterpageprovider.a(i).d(), f - (float)displaymetrics.widthPixels, 0.0F, f, displaymetrics.heightPixels);
        a(view, f, 0.0F, f + (float)displaymetrics.widthPixels, displaymetrics.heightPixels);
    }

    private void a(FilterPageProvider filterpageprovider, DisplayMetrics displaymetrics, int i)
    {
        a(filterpageprovider.a(i).d(), 0.0F, 0.0F, displaymetrics.widthPixels, displaymetrics.heightPixels);
    }

    public void a(SwipeViewState swipeviewstate, FilterPageProvider filterpageprovider, DisplayMetrics displaymetrics)
    {
        if (swipeviewstate.r())
        {
            if (swipeviewstate.s())
            {
                a(filterpageprovider, displaymetrics, swipeviewstate.g(), swipeviewstate.c(true), swipeviewstate.d(true));
            }
            if (swipeviewstate.t())
            {
                a(filterpageprovider, displaymetrics, swipeviewstate.g(), swipeviewstate.c(false), swipeviewstate.d(false));
            }
        } else
        {
            a(filterpageprovider, displaymetrics, swipeviewstate.c());
            if (swipeviewstate.b())
            {
                a(filterpageprovider, displaymetrics, swipeviewstate.d());
                return;
            }
        }
    }
}
