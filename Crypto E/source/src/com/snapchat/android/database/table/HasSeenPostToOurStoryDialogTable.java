// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.HasSeenDialogLog;
import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import dagger.ObjectGraph;

// Referenced classes of package com.snapchat.android.database.table:
//            HasSeenDialogTable

public class HasSeenPostToOurStoryDialogTable extends HasSeenDialogTable
{

    private static HasSeenPostToOurStoryDialogTable a = new HasSeenPostToOurStoryDialogTable();

    private HasSeenPostToOurStoryDialogTable()
    {
        super("HasSeenPostToOurStoryDialog", (HasSeenDialogLog)SnapchatApplication.e().c().a(com/snapchat/android/database/HasSeenPostToOurStoryDialogLog));
    }

    public static HasSeenPostToOurStoryDialogTable b()
    {
        com/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;
        JVM INSTR monitorenter ;
        HasSeenPostToOurStoryDialogTable hasseenposttoourstorydialogtable = a;
        com/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;
        JVM INSTR monitorexit ;
        return hasseenposttoourstorydialogtable;
        Exception exception;
        exception;
        throw exception;
    }

}
