// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.Timber;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.snapchat.android.util:
//            BuildPieSliceTask

class b
    implements Runnable
{

    final StorySnap a;
    final CountDownLatch b;
    final BuildPieSliceTask c;

    public void run()
    {
        if (!a.aw())
        {
            if (a.aA() != null)
            {
                try
                {
                    BuildPieSliceTask.a(c).a(a, a.aA());
                }
                catch (ExternalStorageUnavailableException externalstorageunavailableexception)
                {
                    throw new RuntimeException(externalstorageunavailableexception.getMessage());
                }
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = a.d();
                Timber.e("BuildPieSliceTask", "Thumbnail url for %s is null!", aobj);
            }
        }
        b.countDown();
    }

    eUnavailableException(BuildPieSliceTask buildpieslicetask, StorySnap storysnap, CountDownLatch countdownlatch)
    {
        c = buildpieslicetask;
        a = storysnap;
        b = countdownlatch;
        super();
    }
}
