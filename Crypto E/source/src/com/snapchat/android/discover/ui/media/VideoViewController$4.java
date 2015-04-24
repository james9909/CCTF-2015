// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;
import com.snapchat.android.Timber;
import com.snapchat.android.rendering.video.MediaPlayerCodeTranslator;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoViewController, DSnapMediaListener

class a
    implements android.media.tener
{

    final VideoViewController a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = MediaPlayerCodeTranslator.a(i);
        aobj[1] = Integer.valueOf(j);
        String s = String.format("Error=%s extra=%d", aobj);
        Timber.e("VideoViewController", s, new Object[0]);
        DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
        if (dsnapmedialistener != null)
        {
            dsnapmedialistener.a(s);
        }
        return true;
    }

    r(VideoViewController videoviewcontroller)
    {
        a = videoviewcontroller;
        super();
    }
}
