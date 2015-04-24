// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.util:
//            FriendSectionizer

public static class  extends FriendSectionizer
{

    public  a(Friend friend, int i)
    {
        if (i == 0)
        {
            return ;
        }
        if (friend.P() == com.snapchat.android.model.)
        {
            return DED_ME;
        }
        if (friend.Q() == K)
        {
            return K;
        }
        if (friend.P() == com.snapchat.android.model. || friend.P() == com.snapchat.android.model.)
        {
            return K;
        } else
        {
            return K;
        }
    }

    public volatile K a(Object obj, int i)
    {
        return a((Friend)obj, i);
    }

    public ()
    {
    }
}
