// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.media.MediaPlayer;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapRenderer, MediaPlayerCodeTranslator

class a
    implements android.media.istener
{

    final VideoSnapRenderer a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        String s = VideoSnapRenderer.e();
        Object aobj[] = new Object[2];
        aobj[0] = MediaPlayerCodeTranslator.a(i);
        aobj[1] = Integer.valueOf(j);
        Timber.e(s, "onError: %s extra=%d", aobj);
        VideoSnapRenderer.e(a).a(com.snapchat.android.rendering.rorCode.c);
        AnalyticsEvents.b(i, j);
        return true;
    }

    ererListener(VideoSnapRenderer videosnaprenderer)
    {
        a = videosnaprenderer;
        super();
    }
}
