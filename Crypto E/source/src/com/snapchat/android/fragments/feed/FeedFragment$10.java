// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.widget.AbsListView;
import com.snapchat.android.ui.listeners.FeedSwipeListViewTouchListener;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.AllowAccessToChatFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements android.widget.rollListener
{

    final android.widget.rollListener a;
    final FeedFragment b;
    private int c;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        a.onScroll(abslistview, i, j, k);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        a.onScrollStateChanged(abslistview, i);
        if (i == 0)
        {
            FeedFragment.m(b).c(true);
        } else
        {
            if (c == 0)
            {
                FeedFragment.m(b).c(false);
                FeedFragment.n(b).a(new AllowAccessToChatFragmentEvent(false));
            }
            ViewUtils.a(b.getActivity(), FeedFragment.o(b));
        }
        c = i;
        FeedFragment.e(b);
    }

    FragmentEvent(FeedFragment feedfragment, android.widget.rollListener rolllistener)
    {
        b = feedfragment;
        a = rolllistener;
        super();
    }
}
