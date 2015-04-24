// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import android.util.Log;
import com.snapchat.videotranscoder.utils.Debug;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            MediaSource

public class ImageMediaSource extends MediaSource
{

    private final long a;

    public ImageMediaSource(String s, long l)
    {
        super(s);
        boolean flag;
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Debug.a(flag);
        Log.d("ImageMediaSource", (new StringBuilder()).append("Display Time (ms): ").append(l).toString());
        a = l;
    }

    public long a()
    {
        return a;
    }
}
