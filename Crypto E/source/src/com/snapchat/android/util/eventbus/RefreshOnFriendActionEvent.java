// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

public class RefreshOnFriendActionEvent
{

    private Friend a;
    private FriendAction b;
    private int c;

    public RefreshOnFriendActionEvent(int i)
    {
        b = FriendAction.NONE;
        c = -1;
        c = i;
    }

    public RefreshOnFriendActionEvent(Friend friend, FriendAction friendaction)
    {
        b = FriendAction.NONE;
        c = -1;
        a = friend;
        b = friendaction;
    }

    public Friend a()
    {
        return a;
    }

    public FriendAction b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }
}
