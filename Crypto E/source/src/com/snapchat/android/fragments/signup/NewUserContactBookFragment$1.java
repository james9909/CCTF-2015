// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.widget.AbsListView;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            NewUserContactBookFragment

class a
    implements android.widget.rContactBookFragment._cls1
{

    final NewUserContactBookFragment a;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (i == 0)
        {
            AnalyticsEvents.I();
        }
    }

    (NewUserContactBookFragment newusercontactbookfragment)
    {
        a = newusercontactbookfragment;
        super();
    }
}
