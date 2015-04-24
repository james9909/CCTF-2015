// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.Timber;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.eventbus.RecentStoryReplyEvent;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

public class RecentStoryReplyAnalyticsManager
{

    private static final RecentStoryReplyAnalyticsManager INSTANCE;
    private static final String TAG = "RecentStoryReplyAnalyticsManager";
    private boolean mHasReplied;
    private RecentStoryReplyEvent mRecentStoryReplyEvent;
    private final Provider mUserProvider;

    protected RecentStoryReplyAnalyticsManager(Provider provider)
    {
        mHasReplied = false;
        mUserProvider = provider;
    }

    public static RecentStoryReplyAnalyticsManager a()
    {
        return INSTANCE;
    }

    public void a(RecentStoryReplyEvent recentstoryreplyevent)
    {
        Timber.a("RecentStoryReplyAnalyticsManager", (new StringBuilder()).append("startReplying to ").append(recentstoryreplyevent.a).toString(), new Object[0]);
        mRecentStoryReplyEvent = recentstoryreplyevent;
        mHasReplied = false;
    }

    public boolean b()
    {
        return mRecentStoryReplyEvent != null;
    }

    public void c()
    {
        if (mRecentStoryReplyEvent != null)
        {
            Timber.a("RecentStoryReplyAnalyticsManager", (new StringBuilder()).append("markHasReplied true ").append(mRecentStoryReplyEvent.a).toString(), new Object[0]);
            mHasReplied = true;
        }
    }

    public void d()
    {
        if (mRecentStoryReplyEvent == null)
        {
            Timber.a("RecentStoryReplyAnalyticsManager", "stopReplyingAndReport null event, nothing to do", new Object[0]);
            return;
        } else
        {
            Timber.a("RecentStoryReplyAnalyticsManager", (new StringBuilder()).append("stopReplyingAndReport REPORTING ").append(mHasReplied).toString(), new Object[0]);
            AnalyticsEvents.e(mHasReplied);
            mRecentStoryReplyEvent = null;
            mHasReplied = false;
            return;
        }
    }

    public Friend e()
    {
        if (mRecentStoryReplyEvent == null)
        {
            return null;
        } else
        {
            return FriendUtils.a(mRecentStoryReplyEvent.a, (User)mUserProvider.get());
        }
    }

    static 
    {
        INSTANCE = new RecentStoryReplyAnalyticsManager(User.UNSAFE_USER_PROVIDER);
    }
}
