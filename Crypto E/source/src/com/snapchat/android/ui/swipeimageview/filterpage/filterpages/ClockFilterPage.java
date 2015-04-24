// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.filterpages;

import android.view.View;
import com.snapchat.android.ui.smartfilters.ClockView;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage.filterpages:
//            InfoFilterPage

public class ClockFilterPage extends InfoFilterPage
{

    private final ClockView b;

    public ClockFilterPage(ClockView clockview)
    {
        b = clockview;
    }

    public String a()
    {
        return "Time";
    }

    public View d()
    {
        return b;
    }
}
