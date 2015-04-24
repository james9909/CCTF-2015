// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;


// Referenced classes of package com.snapchat.android.util.cache:
//            SaveStoryToGalleryTask

class a
    implements com.snapchat.videotranscoder.task.Y
{

    final SaveStoryToGalleryTask a;

    public void a(int i)
    {
        int j = SaveStoryToGalleryTask.a(a) + (i * SaveStoryToGalleryTask.b(a)) / 100;
        SaveStoryToGalleryTask savestorytogallerytask = a;
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(j);
        SaveStoryToGalleryTask.a(savestorytogallerytask, ainteger);
    }

    (SaveStoryToGalleryTask savestorytogallerytask)
    {
        a = savestorytogallerytask;
        super();
    }
}
