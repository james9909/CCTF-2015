// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageProvider;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeViewState

public class SwipePageController
{

    private final FilterPageProvider a;
    private final SwipeViewState b;

    SwipePageController(FilterPageProvider filterpageprovider, SwipeViewState swipeviewstate)
    {
        a = filterpageprovider;
        b = swipeviewstate;
    }

    public int a()
    {
        return b.c();
    }

    public int a(int i, boolean flag)
    {
        int j = a.b();
        if (j > 0)
        {
            int k;
            int l;
            FilterPageType filterpagetype;
            if (flag)
            {
                k = 1;
            } else
            {
                k = -1;
            }
            if (b.a())
            {
                filterpagetype = a.b(b.c());
                l = i;
            } else
            {
                l = i;
                filterpagetype = null;
            }
            do
            {
                l = (k + (l + j)) % j;
            } while (a.b(l) == filterpagetype && l != i);
            return l;
        } else
        {
            return i;
        }
    }

    public void a(int i)
    {
        b.a(i);
        b.d(i);
    }

    public void a(boolean flag)
    {
        b.b(flag);
        if (b.b() && !flag)
        {
            b.c(0);
            b.d(0);
            return;
        }
        if (flag)
        {
            int j = a(b.d(), b.n());
            b.c(j);
            return;
        } else
        {
            int i = a(b.c(), b.n());
            b.d(i);
            return;
        }
    }

    public int b()
    {
        return b.d();
    }

    public void b(int i)
    {
        b.b(i);
        b.c(i);
    }

    public void b(boolean flag)
    {
        if (flag)
        {
            b.d(b.c());
            b.c(b.d());
            return;
        } else
        {
            b.a(b.e());
            b.b(b.f());
            b.a(b.a());
            return;
        }
    }

    public boolean c()
    {
        return a.b(b.c()) == FilterPageType.a;
    }
}
