// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapRenderer, VideoSnapResources

class a
    implements der.Callback
{

    final VideoSnapRenderer a;

    public void a(VideoSnapResources videosnapresources)
    {
        String s = VideoSnapRenderer.e();
        Object aobj[] = new Object[1];
        aobj[0] = videosnapresources.a().d();
        Timber.c(s, "Async loading complete for %s", aobj);
        VideoSnapRenderer.a(a, videosnapresources);
    }

    der.Callback(VideoSnapRenderer videosnaprenderer)
    {
        a = videosnaprenderer;
        super();
    }
}
