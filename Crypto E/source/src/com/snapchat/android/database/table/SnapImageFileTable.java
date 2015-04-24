// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.util.cache.Caches;

// Referenced classes of package com.snapchat.android.database.table:
//            BaseIdToFileTable

public class SnapImageFileTable extends BaseIdToFileTable
{

    private static final SnapImageFileTable a = new SnapImageFileTable();

    private SnapImageFileTable()
    {
        super("SnapImageFiles", Caches.e);
    }

    public static SnapImageFileTable b()
    {
        return a;
    }

}
