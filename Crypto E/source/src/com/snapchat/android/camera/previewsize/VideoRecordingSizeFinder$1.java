// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.previewsize;

import com.snapchat.android.util.Resolution;
import java.util.Comparator;

// Referenced classes of package com.snapchat.android.camera.previewsize:
//            VideoRecordingSizeFinder

class a
    implements Comparator
{

    final VideoRecordingSizeFinder a;

    public int a(Resolution resolution, Resolution resolution1)
    {
        return resolution1.d() - resolution.d();
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Resolution)obj, (Resolution)obj1);
    }

    (VideoRecordingSizeFinder videorecordingsizefinder)
    {
        a = videorecordingsizefinder;
        super();
    }
}
