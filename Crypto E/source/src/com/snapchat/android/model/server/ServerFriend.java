// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class ServerFriend
{

    public static final int BLOCKED = 2;
    public static final int DELETED = 3;
    public static final int FRIEND = 0;
    public static final int PENDING = 1;
    public String direction;
    public String display;
    public String mAddSource;
    public String mAddSourceType;
    public boolean mCanSeeCustomStories;
    public long mExpirationTimestamp;
    public boolean mIsHidden;
    public boolean mIsIgnored;
    public boolean mIsLocalStory;
    public boolean mIsSharedStory;
    public int mPendingSnapsCount;
    public String mSharedStoryId;
    public boolean mShouldFetchCustomDescription;
    public Long ts;
    public int type;
    public String username;

    public ServerFriend()
    {
    }

    public String toString()
    {
        return (new StringBuilder()).append("ServerFriend{username='").append(username).append('\'').append(", type=").append(type).append(", display='").append(display).append('\'').append(", ts=").append(ts).append(", direction='").append(direction).append('\'').append(", mCanSeeCustomStories=").append(mCanSeeCustomStories).append(", mPendingSnapsCount=").append(mPendingSnapsCount).append(", mExpirationTimestamp=").append(mExpirationTimestamp).append(", mIsSharedStory=").append(mIsSharedStory).append(", mShouldFetchCustomDescription=").append(mShouldFetchCustomDescription).append(", mSharedStoryId='").append(mSharedStoryId).append('\'').append(", mIsIgnored='").append(mIsIgnored).append('\'').append(", mIsHidden='").append(mIsHidden).append('\'').append(", mAddSource='").append(mAddSource).append('\'').append(", mAddSourceType='").append(mAddSourceType).append('\'').append('}').toString();
    }
}
