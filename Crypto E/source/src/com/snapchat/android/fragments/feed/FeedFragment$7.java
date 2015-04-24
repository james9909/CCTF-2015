// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements Runnable
{

    final FeedFragment a;

    public void run()
    {
        if (FeedFragment.g(a) != null)
        {
            FeedFragment.h(a).a("PULL_TO_REFRESH");
            FeedFragment.i(a).b();
            UserPrefs.ak();
            SyncAllTask.a(FeedFragment.g(a), false, false, true);
        }
    }

    EasyMetric(FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
