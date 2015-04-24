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
          = friend.Q();
        if ( == )
        {
            return ;
        }
        if (friend.P() == com.snapchat.android.model.)
        {
            return ED_ME;
        }
        if ( == )
        {
            return ;
        }
        if (friend.P() == com.snapchat.android.model.D_ME || friend.P() == com.snapchat.android.model.D_ME)
        {
            return ;
        } else
        {
            return ;
        }
    }

    public volatile  a(Object obj, int i)
    {
        return a((Friend)obj, i);
    }

    public ()
    {
    }
}
