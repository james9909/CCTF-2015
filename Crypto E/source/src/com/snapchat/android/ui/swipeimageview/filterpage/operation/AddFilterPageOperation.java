// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.operation;

import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.DefaultPageInitializationStrategy;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageInitializationStrategy;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageStore;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage.operation:
//            FilterPageOperation

public class AddFilterPageOperation extends FilterPageOperation
{

    private final FilterPage a;
    private final FilterPageInitializationStrategy b;

    public AddFilterPageOperation(FilterPage filterpage)
    {
        this(filterpage, ((FilterPageInitializationStrategy) (new DefaultPageInitializationStrategy())));
    }

    public AddFilterPageOperation(FilterPage filterpage, FilterPageInitializationStrategy filterpageinitializationstrategy)
    {
        a = filterpage;
        b = filterpageinitializationstrategy;
    }

    public void a()
    {
        a.e();
    }

    public void a(SwipeImageView swipeimageview, FilterPageStore filterpagestore)
    {
        filterpagestore.a(a);
        b.a(a);
        swipeimageview.a(a);
    }
}
