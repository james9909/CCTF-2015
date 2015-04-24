// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.table.BaseIdToFileTable;
import com.snapchat.android.discover.model.DiscoverCaches;

public class PublisherIconTable extends BaseIdToFileTable
{

    private static final PublisherIconTable a = new PublisherIconTable();

    private PublisherIconTable()
    {
        super("PublisherIconTable", DiscoverCaches.c);
    }

    public static PublisherIconTable b()
    {
        return a;
    }

    public boolean m()
    {
        return false;
    }

}
