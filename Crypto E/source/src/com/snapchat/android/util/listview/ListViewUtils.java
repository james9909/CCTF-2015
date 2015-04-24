// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.listview;

import android.view.View;
import android.widget.ListView;

public final class ListViewUtils
{

    private ListViewUtils()
    {
    }

    public static boolean a(ListView listview)
    {
        if (listview.getChildCount() != 0)
        {
            if (listview.getFirstVisiblePosition() != 0)
            {
                return false;
            }
            View view = listview.getChildAt(0);
            if (view == null || view.getTop() != 0)
            {
                return false;
            }
        }
        return true;
    }

    public static boolean b(ListView listview)
    {
        if (listview.getChildCount() != 0)
        {
            if (listview.getLastVisiblePosition() != -1 + listview.getCount())
            {
                return false;
            }
            View view = listview.getChildAt(-1 + listview.getChildCount());
            if (view == null || view.getBottom() > listview.getHeight())
            {
                return false;
            }
        }
        return true;
    }
}
