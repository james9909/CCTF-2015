// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.database.table.DbTable;

// Referenced classes of package com.snapchat.android.model:
//            User

class this._cls0
    implements Runnable
{

    final User this$0;

    public void run()
    {
        Object obj = User.K();
        obj;
        JVM INSTR monitorenter ;
        com.snapchat.android.database.table..DatabaseTable adatabasetable[];
        int i;
        adatabasetable = com.snapchat.android.database.table..DatabaseTable.values();
        i = adatabasetable.length;
        int j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        com.snapchat.android.database.table..DatabaseTable databasetable = adatabasetable[j];
        if (databasetable.a().m())
        {
            databasetable.a().l();
        }
        break MISSING_BLOCK_LABEL_60;
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    e.DbTable()
    {
        this$0 = User.this;
        super();
    }
}
