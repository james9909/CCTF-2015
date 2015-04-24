// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.media.MediaPlayer;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapRenderer, MediaPlayerCodeTranslator

static final class lator
    implements android.media.istener
{

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        String s = VideoSnapRenderer.e();
        Object aobj[] = new Object[2];
        aobj[0] = MediaPlayerCodeTranslator.a(i);
        aobj[1] = Integer.valueOf(j);
        Timber.d(s, "onError: %s extra=%d", aobj);
        return true;
    }

    lator()
    {
    }
}
