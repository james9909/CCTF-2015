// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsAdapter

public static class Q
{

    private Friend a;

    private void a()
    {
        a = null;
    }

    public boolean a(Friend friend)
    {
        return friend.equals(a);
    }

    public void b(Friend friend)
    {
        if (a(friend))
        {
            a();
            return;
        } else
        {
            a = friend;
            return;
        }
    }

    public Q()
    {
    }
}
