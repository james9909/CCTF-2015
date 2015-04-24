// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.operation;

import android.view.View;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageStore;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage.operation:
//            FilterPageOperation

public class FilterPageOperationQueue
{

    private final ArrayList a = new ArrayList(11);
    private final SwipeImageView b;
    private final FilterPageStore c;

    public FilterPageOperationQueue(SwipeImageView swipeimageview, FilterPageStore filterpagestore)
    {
        b = swipeimageview;
        c = filterpagestore;
    }

    public void a()
    {
        for (; !a.isEmpty(); ((FilterPageOperation)a.remove(0)).a(b, c)) { }
        b();
    }

    public void a(FilterPageOperation filterpageoperation)
    {
        a.add(filterpageoperation);
    }

    public void b()
    {
        for (int i = 0; i < c.b(); i++)
        {
            FilterPage filterpage = c.a(i);
            if (filterpage.b() == FilterPageType.c)
            {
                filterpage.d().bringToFront();
            }
        }

    }

    public void b(FilterPageOperation filterpageoperation)
    {
        filterpageoperation.a(b, c);
    }

    public void c()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((FilterPageOperation)iterator.next()).a()) { }
    }

    public void d()
    {
        a.clear();
    }
}
