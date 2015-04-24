// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.widget.AbsListView;

// Referenced classes of package com.snapchat.android.ui.listeners:
//            SwipeableListItemTouchListener

class a
    implements android.widget.temTouchListener._cls1
{

    final SwipeableListItemTouchListener a;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        boolean flag = true;
        SwipeableListItemTouchListener swipeablelistitemtouchlistener = a;
        if (i == flag)
        {
            flag = false;
        }
        swipeablelistitemtouchlistener.c(flag);
    }

    (SwipeableListItemTouchListener swipeablelistitemtouchlistener)
    {
        a = swipeablelistitemtouchlistener;
        super();
    }
}
