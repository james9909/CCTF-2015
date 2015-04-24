// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.media.MediaPlayer;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapRenderer, MediaPlayerCodeTranslator

class a
    implements android.media.stener
{

    final VideoSnapRenderer a;

    public boolean onInfo(MediaPlayer mediaplayer, int i, int j)
    {
        String s = VideoSnapRenderer.e();
        Object aobj[] = new Object[2];
        aobj[0] = MediaPlayerCodeTranslator.b(i);
        aobj[1] = Integer.valueOf(j);
        Timber.c(s, "onInfo: %s extra=%d", aobj);
        if (i == 3)
        {
            VideoSnapRenderer.a(a);
        }
        return false;
    }

    lator(VideoSnapRenderer videosnaprenderer)
    {
        a = videosnaprenderer;
        super();
    }
}
