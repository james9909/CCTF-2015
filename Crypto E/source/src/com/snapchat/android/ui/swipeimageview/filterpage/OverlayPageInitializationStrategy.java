// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage;

import android.view.View;
import com.snapchat.android.ui.swipefilters.FilterPage;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage:
//            FilterPageInitializationStrategy

public class OverlayPageInitializationStrategy
    implements FilterPageInitializationStrategy
{

    public OverlayPageInitializationStrategy()
    {
    }

    public void a(FilterPage filterpage)
    {
        View view = filterpage.d();
        if (view != null)
        {
            view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
            view.setVisibility(4);
        }
    }
}
