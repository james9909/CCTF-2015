// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;
import com.snapchat.android.ui.TextureVideoView;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoViewController, DSnapMediaListener

class a
    implements android.media.Listener
{

    final VideoViewController a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
        if (dsnapmedialistener != null)
        {
            if (!VideoViewController.d(a))
            {
                VideoViewController.c(a).postDelayed(new Runnable(dsnapmedialistener) {

                    final DSnapMediaListener a;
                    final VideoViewController._cls2 b;

                    public void run()
                    {
                        a.b();
                    }

            
            {
                b = VideoViewController._cls2.this;
                a = dsnapmedialistener;
                super();
            }
                }, 250L);
            }
            return;
        } else
        {
            mediaplayer.setLooping(VideoViewController.b(a));
            return;
        }
    }

    _cls1.a(VideoViewController videoviewcontroller)
    {
        a = videoviewcontroller;
        super();
    }
}
