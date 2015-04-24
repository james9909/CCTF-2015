// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;
import com.snapchat.android.ui.TextureVideoView;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            DSnapMediaListener, VideoViewController

class a
    implements Runnable
{

    final DSnapMediaListener a;
    final a b;

    public void run()
    {
        a.b();
    }

    ( , DSnapMediaListener dsnapmedialistener)
    {
        b = ;
        a = dsnapmedialistener;
        super();
    }

    // Unreferenced inner class com/snapchat/android/discover/ui/media/VideoViewController$2

/* anonymous class */
    class VideoViewController._cls2
        implements android.media.MediaPlayer.OnPreparedListener
    {

        final VideoViewController a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
            if (dsnapmedialistener != null)
            {
                if (!VideoViewController.d(a))
                {
                    VideoViewController.c(a).postDelayed(new VideoViewController._cls2._cls1(this, dsnapmedialistener), 250L);
                }
                return;
            } else
            {
                mediaplayer.setLooping(VideoViewController.b(a));
                return;
            }
        }

            
            {
                a = videoviewcontroller;
                super();
            }
    }

}
