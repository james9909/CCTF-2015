// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.util.FriendSectionizer;

// Referenced classes of package com.snapchat.android.model:
//            Friend, UserPrefs

public static class n extends FriendSectionizer
{

    public com.snapchat.android.util.on a(Friend friend, int i)
    {
        if (friend.v() && friend.G())
        {
            return com.snapchat.android.util.on.BEST_FRIEND;
        }
        if (friend.w() && friend.G())
        {
            return com.snapchat.android.util.on.RECENT;
        }
        if (friend.a().equals(UserPrefs.k()) && friend.G())
        {
            return com.snapchat.android.util.on.ME;
        }
        if (friend.G())
        {
            return com.snapchat.android.util.on.STORIES;
        }
        if (friend.F())
        {
            return com.snapchat.android.util.on.JUST_ADDED;
        }
        if (friend.E())
        {
            return com.snapchat.android.util.on.SUGGESTED;
        }
        if (friend.x())
        {
            return com.snapchat.android.util.on.BLOCKED;
        } else
        {
            return com.snapchat.android.util.on.ALPHABETICAL;
        }
    }

    public volatile com.snapchat.android.util.on a(Object obj, int i)
    {
        return a((Friend)obj, i);
    }

    public n()
    {
    }
}
