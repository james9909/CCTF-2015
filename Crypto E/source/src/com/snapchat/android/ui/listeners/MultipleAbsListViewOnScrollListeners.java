// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.widget.AbsListView;
import java.util.Iterator;
import java.util.List;

public class MultipleAbsListViewOnScrollListeners
    implements android.widget.AbsListView.OnScrollListener
{

    private List a;

    public MultipleAbsListViewOnScrollListeners(List list)
    {
        a = list;
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((android.widget.AbsListView.OnScrollListener)iterator.next()).onScroll(abslistview, i, j, k)) { }
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((android.widget.AbsListView.OnScrollListener)iterator.next()).onScrollStateChanged(abslistview, i)) { }
    }
}
