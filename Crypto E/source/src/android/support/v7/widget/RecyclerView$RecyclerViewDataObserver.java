// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.view.ViewCompat;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView, AdapterHelper

class <init> extends <init>
{

    final RecyclerView a;

    public void a()
    {
        a.a(null);
        if (RecyclerView.f(a).a())
        {
            a(a.f, true);
            RecyclerView.c(a, true);
        } else
        {
            a(a.f, true);
            RecyclerView.c(a, true);
        }
        if (!a.b.d())
        {
            a.requestLayout();
        }
    }

    public void a(int i, int j)
    {
        a.a(null);
        if (a.b.b(i, j))
        {
            b();
        }
    }

    void b()
    {
        if (RecyclerView.k(a) && RecyclerView.l(a) && RecyclerView.m(a))
        {
            ViewCompat.postOnAnimation(a, RecyclerView.n(a));
            return;
        } else
        {
            RecyclerView.d(a, true);
            a.requestLayout();
            return;
        }
    }

    private (RecyclerView recyclerview)
    {
        a = recyclerview;
        super();
    }

    >(RecyclerView recyclerview, > >)
    {
        this(recyclerview);
    }
}
