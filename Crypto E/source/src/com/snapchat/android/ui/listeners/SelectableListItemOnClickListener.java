// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.ValueAnimator;
import android.view.View;
import com.snapchat.android.util.ViewUtils;

public class SelectableListItemOnClickListener
    implements android.view.View.OnClickListener
{
    public static interface SelectableListItemInterface
    {

        public abstract void a();

        public abstract boolean a(View view);

        public abstract View b();

        public abstract boolean c();
    }


    private View a;
    private SelectableListItemInterface b;
    private int c;
    private ValueAnimator d;

    public SelectableListItemOnClickListener(int i, SelectableListItemInterface selectablelistiteminterface)
    {
        c = -1;
        b = selectablelistiteminterface;
        c = i;
    }

    private void a(View view)
    {
        view.setVisibility(0);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        int i;
        if (c < 0)
        {
            i = a.getMeasuredHeight();
        } else
        {
            i = Math.min(a.getMeasuredHeight(), c);
        }
        c = i;
        d = ViewUtils.a(view, 0, c, 300);
        d.start();
    }

    public void onClick(View view)
    {
        if (a == null)
        {
            a = b.b();
        }
        if (b.c())
        {
            if (d == null || !d.isStarted())
            {
                if (a != null)
                {
                    d = ViewUtils.c(a);
                }
                b.a();
            }
        } else
        if ((d == null || !d.isStarted()) && b.a(a))
        {
            a(a);
            return;
        }
    }
}
