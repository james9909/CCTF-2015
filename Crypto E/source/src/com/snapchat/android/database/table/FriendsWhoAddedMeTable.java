// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.model.User;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            FriendTable

public class FriendsWhoAddedMeTable extends FriendTable
{

    private static FriendsWhoAddedMeTable a = new FriendsWhoAddedMeTable();

    private FriendsWhoAddedMeTable()
    {
    }

    public static FriendsWhoAddedMeTable b()
    {
        return a;
    }

    public String a()
    {
        return "FriendsWhoAddedMe";
    }

    public void a(User user)
    {
        user.e(a(null, h()));
    }

    protected Collection b(User user)
    {
        return user.w();
    }

}
