// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


public class StoryViewRecord
{

    private String mId;
    private int mScreenshotCount;
    private long mTimestamp;

    public StoryViewRecord()
    {
    }

    public StoryViewRecord(String s, long l, int i)
    {
        mId = s;
        mTimestamp = l;
        mScreenshotCount = i;
    }

    public String a()
    {
        return mId;
    }

    public long b()
    {
        return mTimestamp;
    }

    public int c()
    {
        return mScreenshotCount;
    }

    public String toString()
    {
        return (new StringBuilder()).append("StoryViewRecord timestamp ").append(mTimestamp).append(" screenshot ").append(mScreenshotCount).toString();
    }
}
