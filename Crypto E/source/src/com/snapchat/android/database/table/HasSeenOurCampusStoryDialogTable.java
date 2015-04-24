// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.HasSeenDialogLog;
import com.snapchat.android.database.HasSeenOurCampusStoryDialogLog;
import dagger.ObjectGraph;

// Referenced classes of package com.snapchat.android.database.table:
//            HasSeenDialogTable

public class HasSeenOurCampusStoryDialogTable extends HasSeenDialogTable
{

    private static HasSeenOurCampusStoryDialogTable a = new HasSeenOurCampusStoryDialogTable();

    private HasSeenOurCampusStoryDialogTable()
    {
        super("HasSeenOurCampusStoryDialog", (HasSeenDialogLog)SnapchatApplication.e().c().a(com/snapchat/android/database/HasSeenOurCampusStoryDialogLog));
    }

    public static HasSeenOurCampusStoryDialogTable b()
    {
        com/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;
        JVM INSTR monitorenter ;
        HasSeenOurCampusStoryDialogTable hasseenourcampusstorydialogtable = a;
        com/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;
        JVM INSTR monitorexit ;
        return hasseenourcampusstorydialogtable;
        Exception exception;
        exception;
        throw exception;
    }

}
