// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.User;
import java.util.ArrayList;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            SnapbryoTable

public class SendingSnapbryoTable extends SnapbryoTable
{

    private static SendingSnapbryoTable a;

    private SendingSnapbryoTable()
    {
    }

    public static SendingSnapbryoTable b()
    {
        com/snapchat/android/database/table/SendingSnapbryoTable;
        JVM INSTR monitorenter ;
        SendingSnapbryoTable sendingsnapbryotable;
        if (a == null)
        {
            a = new SendingSnapbryoTable();
        }
        sendingsnapbryotable = a;
        com/snapchat/android/database/table/SendingSnapbryoTable;
        JVM INSTR monitorexit ;
        return sendingsnapbryotable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "SendingSnapbryoTable";
    }

    public void a(User user)
    {
        SnapWomb.a().d(a(null, null));
    }

    protected Collection b(User user)
    {
        return new ArrayList(SnapWomb.a().k());
    }
}
