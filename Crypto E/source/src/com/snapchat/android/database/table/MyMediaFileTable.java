// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.util.cache.Caches;

// Referenced classes of package com.snapchat.android.database.table:
//            BaseIdToFileTable

public class MyMediaFileTable extends BaseIdToFileTable
{

    private static final MyMediaFileTable a = new MyMediaFileTable();

    private MyMediaFileTable()
    {
        super("MyStoriesFiles", Caches.a);
    }

    public static MyMediaFileTable b()
    {
        return a;
    }

}
