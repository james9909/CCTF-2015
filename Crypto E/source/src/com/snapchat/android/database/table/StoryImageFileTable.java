// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.util.cache.Caches;

// Referenced classes of package com.snapchat.android.database.table:
//            BaseIdToFileTable

public class StoryImageFileTable extends BaseIdToFileTable
{

    private static final StoryImageFileTable a = new StoryImageFileTable();

    private StoryImageFileTable()
    {
        super("StoryImageFiles", Caches.c);
    }

    public static StoryImageFileTable b()
    {
        return a;
    }

}