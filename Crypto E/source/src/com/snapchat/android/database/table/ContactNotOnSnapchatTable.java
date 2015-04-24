// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.model.User;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            FriendTable

public class ContactNotOnSnapchatTable extends FriendTable
{

    private static ContactNotOnSnapchatTable a;

    private ContactNotOnSnapchatTable()
    {
    }

    public static ContactNotOnSnapchatTable b()
    {
        com/snapchat/android/database/table/ContactNotOnSnapchatTable;
        JVM INSTR monitorenter ;
        ContactNotOnSnapchatTable contactnotonsnapchattable;
        if (a == null)
        {
            a = new ContactNotOnSnapchatTable();
        }
        contactnotonsnapchattable = a;
        com/snapchat/android/database/table/ContactNotOnSnapchatTable;
        JVM INSTR monitorexit ;
        return contactnotonsnapchattable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "ContactNotOnSnapchatTable";
    }

    public void a(User user)
    {
        user.b(a(null, h()));
    }

    protected Collection b(User user)
    {
        return user.o();
    }
}
