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

public class FailedSendSnapbryoTable extends SnapbryoTable
{

    private static FailedSendSnapbryoTable a;

    private FailedSendSnapbryoTable()
    {
    }

    public static FailedSendSnapbryoTable b()
    {
        com/snapchat/android/database/table/FailedSendSnapbryoTable;
        JVM INSTR monitorenter ;
        FailedSendSnapbryoTable failedsendsnapbryotable;
        if (a == null)
        {
            a = new FailedSendSnapbryoTable();
        }
        failedsendsnapbryotable = a;
        com/snapchat/android/database/table/FailedSendSnapbryoTable;
        JVM INSTR monitorexit ;
        return failedsendsnapbryotable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "FailedSendSnapbryoTable";
    }

    public void a(User user)
    {
        SnapWomb.a().b(a(null, null));
    }

    protected Collection b(User user)
    {
        return new ArrayList(SnapWomb.a().h());
    }
}
