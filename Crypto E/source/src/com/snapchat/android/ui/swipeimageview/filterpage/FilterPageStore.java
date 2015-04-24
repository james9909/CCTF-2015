// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage;

import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage:
//            FilterPageProvider

public class FilterPageStore
    implements FilterPageProvider
{

    protected List a;

    public FilterPageStore()
    {
        a = new ArrayList();
    }

    private int c(int i)
    {
        int j = a.size();
        int k;
        if (j == 0)
        {
            k = 0;
        } else
        {
            k = i % j;
            if (k < 0)
            {
                return k + j;
            }
        }
        return k;
    }

    public FilterPage a(int i)
    {
        return (FilterPage)a.get(c(i));
    }

    public List a()
    {
        return a;
    }

    public void a(FilterPage filterpage)
    {
        a.add(filterpage);
    }

    public int b()
    {
        return a.size();
    }

    public FilterPageType b(int i)
    {
        return a(i).b();
    }

    public void b(FilterPage filterpage)
    {
        a.remove(filterpage);
    }

    public void c()
    {
        a.clear();
    }

    public void d()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((FilterPage)iterator.next()).e()) { }
    }
}
