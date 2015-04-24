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

public class FailedChatMediaSnapbryoTable extends SnapbryoTable
{

    private static FailedChatMediaSnapbryoTable a;

    private FailedChatMediaSnapbryoTable()
    {
    }

    public static FailedChatMediaSnapbryoTable b()
    {
        com/snapchat/android/database/table/FailedChatMediaSnapbryoTable;
        JVM INSTR monitorenter ;
        FailedChatMediaSnapbryoTable failedchatmediasnapbryotable;
        if (a == null)
        {
            a = new FailedChatMediaSnapbryoTable();
        }
        failedchatmediasnapbryotable = a;
        com/snapchat/android/database/table/FailedChatMediaSnapbryoTable;
        JVM INSTR monitorexit ;
        return failedchatmediasnapbryotable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "FailedChatMediaSnapbryoTable";
    }

    public void a(User user)
    {
        SnapWomb.a().c(a(null, null));
    }

    protected Collection b(User user)
    {
        return new ArrayList(SnapWomb.a().j());
    }
}
