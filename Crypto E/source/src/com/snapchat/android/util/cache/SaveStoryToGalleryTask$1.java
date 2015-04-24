// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import com.snapchat.android.model.StorySnapLogbook;
import java.util.Comparator;

// Referenced classes of package com.snapchat.android.util.cache:
//            SaveStoryToGalleryTask

class a
    implements Comparator
{

    final SaveStoryToGalleryTask a;

    public int a(StorySnapLogbook storysnaplogbook, StorySnapLogbook storysnaplogbook1)
    {
        if (storysnaplogbook.j() < storysnaplogbook1.j())
        {
            return -1;
        }
        return storysnaplogbook.j() <= storysnaplogbook1.j() ? 0 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((StorySnapLogbook)obj, (StorySnapLogbook)obj1);
    }

    (SaveStoryToGalleryTask savestorytogallerytask)
    {
        a = savestorytogallerytask;
        super();
    }
}
