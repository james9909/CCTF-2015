// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.table.BaseIdToFileTable;
import com.snapchat.android.discover.model.DiscoverCaches;

public class EditionChunkFileTable extends BaseIdToFileTable
{

    private static final EditionChunkFileTable a = new EditionChunkFileTable();

    private EditionChunkFileTable()
    {
        super("EditionChunkFileTable", DiscoverCaches.b);
    }

    public static EditionChunkFileTable b()
    {
        return a;
    }

    public boolean m()
    {
        return false;
    }

}
