// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.api2.FriendExistsTask;
import com.snapchat.android.model.Friend;
import java.util.HashMap;
import java.util.Map;

public class FriendExistsTaskCache
{

    private static final Map a = new HashMap();

    public FriendExistsTaskCache()
    {
    }

    public static Friend a(Friend friend)
    {
        FriendExistsTask friendexiststask = (FriendExistsTask)a.get(friend.a());
        if (friendexiststask == null)
        {
            FriendExistsTask friendexiststask1 = new FriendExistsTask(friend);
            a.put(friend.a(), friendexiststask1);
            friendexiststask1.g();
            return friend;
        } else
        {
            return friendexiststask.e();
        }
    }

    public static Friend b(Friend friend)
    {
        if (friend.a().length() >= 3)
        {
            return a(friend);
        } else
        {
            friend.a(com.snapchat.android.model.Friend.SuggestState.DOES_NOT_EXIST);
            return friend;
        }
    }

}
