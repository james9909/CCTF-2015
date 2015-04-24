// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

class a
    implements lback
{

    final RecyclerView a;

    public int a()
    {
        return a.getChildCount();
    }

    public int a(View view)
    {
        return a.indexOfChild(view);
    }

    public void a(int i)
    {
        View view = a.getChildAt(i);
        if (view != null)
        {
            RecyclerView.b(a, view);
        }
        a.removeViewAt(i);
    }

    public void a(View view, int i)
    {
        a.addView(view, i);
        RecyclerView.a(a, view);
    }

    public void a(View view, int i, android.view.tParams tparams)
    {
        ewHolder ewholder = RecyclerView.b(view);
        if (ewholder != null)
        {
            if (!ewholder.q() && !ewholder.c())
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Called attach on a child which is not detached: ").append(ewholder).toString());
            }
            ewholder.k();
        }
        RecyclerView.a(a, view, i, tparams);
    }

    public ewHolder b(View view)
    {
        return RecyclerView.b(view);
    }

    public View b(int i)
    {
        return a.getChildAt(i);
    }

    public void b()
    {
        int i = a();
        for (int j = 0; j < i; j++)
        {
            RecyclerView.b(a, b(j));
        }

        a.removeAllViews();
    }

    public void c(int i)
    {
        View view = b(i);
        if (view != null)
        {
            ewHolder ewholder = RecyclerView.b(view);
            if (ewholder != null)
            {
                if (ewholder.q() && !ewholder.c())
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("called detach on an already detached child ").append(ewholder).toString());
                }
                ewholder.a(256);
            }
        }
        RecyclerView.a(a, i);
    }

    ewHolder(RecyclerView recyclerview)
    {
        a = recyclerview;
        super();
    }
}
