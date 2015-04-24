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

public class FailedPostSnapbryoTable extends SnapbryoTable
{

    private static FailedPostSnapbryoTable a = new FailedPostSnapbryoTable();

    private FailedPostSnapbryoTable()
    {
    }

    public static FailedPostSnapbryoTable b()
    {
        return a;
    }

    public String a()
    {
        return "FailedPostSnapbryoTable";
    }

    public void a(User user)
    {
        SnapWomb.a().a(a(null, null));
    }

    protected Collection b(User user)
    {
        return new ArrayList(SnapWomb.a().e());
    }

}
