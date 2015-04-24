// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.model.User;
import java.util.Collection;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            FriendTable

public class ContactOnSnapchatTable extends FriendTable
{

    private static ContactOnSnapchatTable a;

    private ContactOnSnapchatTable()
    {
    }

    public static ContactOnSnapchatTable b()
    {
        com/snapchat/android/database/table/ContactOnSnapchatTable;
        JVM INSTR monitorenter ;
        ContactOnSnapchatTable contactonsnapchattable;
        if (a == null)
        {
            a = new ContactOnSnapchatTable();
        }
        contactonsnapchattable = a;
        com/snapchat/android/database/table/ContactOnSnapchatTable;
        JVM INSTR monitorexit ;
        return contactonsnapchattable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "ContactsOnSnapchat";
    }

    public void a(User user)
    {
        user.c(a(null, h()));
        user.p().clear();
        user.p().addAll(user.q());
    }

    protected Collection b(User user)
    {
        return user.r();
    }
}
