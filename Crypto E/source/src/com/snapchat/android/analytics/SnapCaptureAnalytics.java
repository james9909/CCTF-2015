// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.UserPrefs;

public class SnapCaptureAnalytics
{

    protected static final String SELECT_FRIEND_EVENT = "SELECT_FRIEND";
    protected static final String SNAP_CAPTURE_EVENT = "SNAP_CAPTURED_TO_PREVIEW";
    private static final SnapCaptureAnalytics sInstance = new SnapCaptureAnalytics();
    private DictionaryEasyMetric mDictionaryEasyMetric;
    private int mNumBestFriends;
    private int mNumJustAddedFriends;
    private int mNumOtherFriends;
    private int mNumRecentFriends;
    private int mNumSearchedFriends;
    private int mNumSelectFriendSession;
    private int mNumStories;
    private int mNumTotalActions;

    private SnapCaptureAnalytics()
    {
        this(DictionaryEasyMetric.a());
    }

    SnapCaptureAnalytics(DictionaryEasyMetric dictionaryeasymetric)
    {
        mDictionaryEasyMetric = dictionaryeasymetric;
    }

    public static SnapCaptureAnalytics a()
    {
        return sInstance;
    }

    private void c(String s)
    {
        mDictionaryEasyMetric.a("SELECT_FRIEND", "exit_reason", s).a("SELECT_FRIEND", "session_number", Integer.toString(mNumSelectFriendSession)).a("SELECT_FRIEND", "actions", Integer.toString(mNumTotalActions)).a("SELECT_FRIEND", "stories", Integer.toString(mNumStories)).a("SELECT_FRIEND", "just_added", Integer.toString(mNumJustAddedFriends)).a("SELECT_FRIEND", "recent_friends", Integer.toString(mNumRecentFriends)).a("SELECT_FRIEND", "best_friends", Integer.toString(mNumBestFriends)).a("SELECT_FRIEND", "other_friends", Integer.toString(mNumOtherFriends)).a("SELECT_FRIEND", "searched_friends", Integer.toString(mNumSearchedFriends));
        mDictionaryEasyMetric.b("SELECT_FRIEND", false);
    }

    private void h()
    {
        mNumSelectFriendSession = 0;
    }

    private void i()
    {
        mNumTotalActions = 0;
        mNumStories = 0;
        mNumJustAddedFriends = 0;
        mNumRecentFriends = 0;
        mNumBestFriends = 0;
        mNumOtherFriends = 0;
        mNumSearchedFriends = 0;
    }

    public void a(Friend friend, boolean flag)
    {
        mNumTotalActions = 1 + mNumTotalActions;
        if (flag)
        {
            mNumSearchedFriends = 1 + mNumSearchedFriends;
            return;
        }
        if (friend.v())
        {
            mNumBestFriends = 1 + mNumBestFriends;
            return;
        }
        if (friend.w())
        {
            mNumRecentFriends = 1 + mNumRecentFriends;
            return;
        }
        if (friend.F())
        {
            mNumJustAddedFriends = 1 + mNumJustAddedFriends;
            return;
        } else
        {
            mNumOtherFriends = 1 + mNumOtherFriends;
            return;
        }
    }

    public void a(String s)
    {
        mDictionaryEasyMetric.a("SNAP_CAPTURED_TO_PREVIEW", s);
    }

    public void a(boolean flag)
    {
        a(flag, UserPrefs.L());
    }

    protected void a(boolean flag, boolean flag1)
    {
        mDictionaryEasyMetric.a("SNAP_CAPTURED_TO_PREVIEW");
        DictionaryEasyMetric dictionaryeasymetric = mDictionaryEasyMetric;
        String s;
        if (flag)
        {
            s = "video";
        } else
        {
            s = "image";
        }
        dictionaryeasymetric.a("SNAP_CAPTURED_TO_PREVIEW", "type", s);
        mDictionaryEasyMetric.a("SNAP_CAPTURED_TO_PREVIEW", "filtersEnabled", Boolean.toString(flag1));
    }

    public void b()
    {
        h();
        i();
    }

    public void b(String s)
    {
        mDictionaryEasyMetric.b("SNAP_CAPTURED_TO_PREVIEW", s);
    }

    public void b(boolean flag)
    {
        DictionaryEasyMetric dictionaryeasymetric = mDictionaryEasyMetric;
        String s;
        if (flag)
        {
            s = "portrait";
        } else
        {
            s = "landscape";
        }
        dictionaryeasymetric.a("SNAP_CAPTURED_TO_PREVIEW", "orientation", s);
        mDictionaryEasyMetric.b("SNAP_CAPTURED_TO_PREVIEW", false);
        b();
    }

    public void c()
    {
        mDictionaryEasyMetric.a("SELECT_FRIEND");
        i();
        mNumSelectFriendSession = 1 + mNumSelectFriendSession;
    }

    public void d()
    {
        c("send");
        b();
    }

    public void e()
    {
        c("back_to_preview");
        i();
    }

    public void f()
    {
        c("add_friend");
        i();
    }

    public void g()
    {
        mNumTotalActions = 1 + mNumTotalActions;
        mNumStories = 1 + mNumStories;
    }

}
