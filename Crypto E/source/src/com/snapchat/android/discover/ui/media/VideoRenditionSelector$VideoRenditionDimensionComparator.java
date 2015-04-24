// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import com.snapchat.data.gson.discover.VideoRendition;
import java.util.Comparator;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoRenditionSelector

public static final class 
    implements Comparator
{

    public int a(VideoRendition videorendition, VideoRendition videorendition1)
    {
        int i = Math.max(videorendition.b().intValue(), videorendition.c().intValue());
        int j = Math.min(videorendition.b().intValue(), videorendition.c().intValue());
        int k = Math.max(videorendition1.b().intValue(), videorendition1.c().intValue());
        int l = Math.min(videorendition1.b().intValue(), videorendition1.c().intValue());
        if (i != k)
        {
            return i - k;
        } else
        {
            return j - l;
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((VideoRendition)obj, (VideoRendition)obj1);
    }

    protected ()
    {
    }
}
