// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.util.crypto.CbcSlightlySecurePreferences;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeys;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            StorySnapTable

public class FriendStorySnapTable extends StorySnapTable
{

    private static FriendStorySnapTable a;

    protected FriendStorySnapTable()
    {
    }

    public static FriendStorySnapTable b()
    {
        com/snapchat/android/database/table/FriendStorySnapTable;
        JVM INSTR monitorenter ;
        FriendStorySnapTable friendstorysnaptable;
        if (a == null)
        {
            a = new FriendStorySnapTable();
        }
        friendstorysnaptable = a;
        com/snapchat/android/database/table/FriendStorySnapTable;
        JVM INSTR monitorexit ;
        return friendstorysnaptable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "FriendStorySnapTable";
    }

    public void a(User user)
    {
        java.util.List list = a(null, null);
        if (!(new CbcSlightlySecurePreferences()).a(list, SlightlySecurePreferencesKeys.d))
        {
            return;
        } else
        {
            StoryLibrary.a().c(list);
            return;
        }
    }

    protected Collection b(User user)
    {
        java.util.List list = StoryLibrary.a().p();
        (new CbcSlightlySecurePreferences()).b(list, SlightlySecurePreferencesKeys.d);
        return list;
    }
}
