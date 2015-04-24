// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;
import com.snapchat.android.ui.TextureVideoView;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoViewController, DSnapMediaListener

class a
    implements android.media.onListener
{

    final VideoViewController a;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
        if (dsnapmedialistener != null)
        {
            dsnapmedialistener.a();
        }
        if (VideoViewController.b(a))
        {
            VideoViewController.c(a).start();
        }
    }

    (VideoViewController videoviewcontroller)
    {
        a = videoviewcontroller;
        super();
    }
}
