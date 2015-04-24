// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.util.AttributeSet;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.model.Friend;

public class SearchContactsView extends StickyListHeadersListView
    implements AddFriendsAdapter.AddFriendsAdapterInterface
{

    private String a;

    public SearchContactsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setFastScrollAlwaysVisible(true);
        setTextFilterEnabled(true);
    }

    public boolean a(Friend friend)
    {
        return false;
    }

    public com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext getAnalyticsContext()
    {
        return com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.SEARCH;
    }

    public String getAnalyticsParent()
    {
        if (a == null)
        {
            return "UNKNOWN (parent not set)";
        } else
        {
            return a;
        }
    }

    public void setAnalyticsParent(String s)
    {
        a = s;
    }
}
