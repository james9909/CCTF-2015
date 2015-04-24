// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.filterpages;

import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.ui.smartfilters.WeatherView;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage.filterpages:
//            InfoFilterPage

public class WeatherFilterPage extends InfoFilterPage
{

    private final WeatherView b;

    public WeatherFilterPage(WeatherView weatherview)
    {
        b = weatherview;
    }

    public String a()
    {
        return "Weather";
    }

    public boolean a(MotionEvent motionevent)
    {
        return b.a(motionevent);
    }

    public View d()
    {
        return b;
    }
}
