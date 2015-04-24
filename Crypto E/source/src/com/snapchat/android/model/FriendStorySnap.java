// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            StorySnap

public class FriendStorySnap
{

    private boolean mIsViewed;
    private StorySnap mStorySnap;

    public FriendStorySnap()
    {
    }

    public StorySnap a()
    {
        return mStorySnap;
    }

    public boolean b()
    {
        return mIsViewed;
    }

    public long c()
    {
        return mStorySnap.ae();
    }
}
