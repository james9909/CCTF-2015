// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

class LayoutState
{

    int a;
    int b;
    int c;
    int d;
    int e;

    LayoutState()
    {
        e = 0;
    }

    View a(RecyclerView.Recycler recycler)
    {
        View view = recycler.c(b);
        b = b + c;
        return view;
    }

    boolean a(RecyclerView.State state)
    {
        return b >= 0 && b < state.e();
    }
}
