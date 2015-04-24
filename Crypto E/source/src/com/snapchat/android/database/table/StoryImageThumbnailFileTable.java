// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.util.cache.Caches;

// Referenced classes of package com.snapchat.android.database.table:
//            BaseIdToFileTable

public class StoryImageThumbnailFileTable extends BaseIdToFileTable
{

    private static final StoryImageThumbnailFileTable a = new StoryImageThumbnailFileTable();

    private StoryImageThumbnailFileTable()
    {
        super("StoryImageThumbnailFiles", Caches.b);
    }

    public static StoryImageThumbnailFileTable b()
    {
        return a;
    }

}
