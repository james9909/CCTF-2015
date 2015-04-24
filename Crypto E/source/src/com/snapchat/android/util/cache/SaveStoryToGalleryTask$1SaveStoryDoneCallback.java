// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;


// Referenced classes of package com.snapchat.android.util.cache:
//            SaveStoryToGalleryTask

class a
    implements com.snapchat.videotranscoder.task.X
{

    final Object a;
    final SaveStoryToGalleryTask b;

    public void a(com.snapchat.videotranscoder.task.X x)
    {
        synchronized (a)
        {
            a.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (SaveStoryToGalleryTask savestorytogallerytask, Object obj)
    {
        b = savestorytogallerytask;
        a = obj;
        super();
    }
}
