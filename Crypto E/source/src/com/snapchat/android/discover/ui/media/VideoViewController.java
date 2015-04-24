// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.graphics.Bitmap;
import android.media.MediaPlayer;
import com.snapchat.android.Timber;
import com.snapchat.android.rendering.video.MediaPlayerCodeTranslator;
import com.snapchat.android.ui.TextureVideoView;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            DSnapMediaListener

public class VideoViewController
{

    protected android.media.MediaPlayer.OnCompletionListener a = new android.media.MediaPlayer.OnCompletionListener() {

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

            
            {
                a = VideoViewController.this;
                super();
            }
    };
    protected android.media.MediaPlayer.OnPreparedListener b = new android.media.MediaPlayer.OnPreparedListener() {

        final VideoViewController a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
            if (dsnapmedialistener != null)
            {
                if (!VideoViewController.d(a))
                {
                    VideoViewController.c(a).postDelayed(new Runnable(this, dsnapmedialistener) {

                        final DSnapMediaListener a;
                        final _cls2 b;

                        public void run()
                        {
                            a.b();
                        }

            
            {
                b = _pcls2;
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

            
            {
                a = VideoViewController.this;
                super();
            }
    };
    protected android.media.MediaPlayer.OnInfoListener c = new android.media.MediaPlayer.OnInfoListener() {

        final VideoViewController a;

        public boolean onInfo(MediaPlayer mediaplayer, int k, int l)
        {
            DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
            if (dsnapmedialistener != null && VideoViewController.d(a) && k == 3)
            {
                dsnapmedialistener.b();
            }
            return false;
        }

            
            {
                a = VideoViewController.this;
                super();
            }
    };
    protected android.media.MediaPlayer.OnErrorListener d = new android.media.MediaPlayer.OnErrorListener() {

        final VideoViewController a;

        public boolean onError(MediaPlayer mediaplayer, int k, int l)
        {
            Object aobj[] = new Object[2];
            aobj[0] = MediaPlayerCodeTranslator.a(k);
            aobj[1] = Integer.valueOf(l);
            String s = String.format("Error=%s extra=%d", aobj);
            Timber.e("VideoViewController", s, new Object[0]);
            DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
            if (dsnapmedialistener != null)
            {
                dsnapmedialistener.a(s);
            }
            return true;
        }

            
            {
                a = VideoViewController.this;
                super();
            }
    };
    private final boolean e;
    private TextureVideoView f;
    private String g;
    private boolean h;
    private DSnapMediaListener i;
    private int j;

    public VideoViewController(boolean flag)
    {
        boolean flag1;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        this(flag, flag1);
    }

    protected VideoViewController(boolean flag, boolean flag1)
    {
        j = 0;
        h = flag;
        e = flag1;
    }

    static DSnapMediaListener a(VideoViewController videoviewcontroller)
    {
        return videoviewcontroller.i;
    }

    static boolean b(VideoViewController videoviewcontroller)
    {
        return videoviewcontroller.h;
    }

    static TextureVideoView c(VideoViewController videoviewcontroller)
    {
        return videoviewcontroller.f;
    }

    static boolean d(VideoViewController videoviewcontroller)
    {
        return videoviewcontroller.e;
    }

    public void a()
    {
        f.pause();
    }

    public void a(DSnapMediaListener dsnapmedialistener)
    {
        i = dsnapmedialistener;
    }

    public void a(TextureVideoView texturevideoview, String s)
    {
        a(texturevideoview, s, h);
    }

    public void a(TextureVideoView texturevideoview, String s, boolean flag)
    {
        g = s;
        f = texturevideoview;
        h = flag;
        f.setOnPreparedListener(b);
        f.setOnCompletionListener(a);
        f.setOnInfoListener(c);
        f.setOnErrorListener(d);
    }

    public void a(boolean flag)
    {
        if (g == null)
        {
            Timber.e("VideoViewController", "Calling start on an uninitialized controller.", new Object[0]);
            return;
        }
        f.setVideoPath(g);
        if (flag && j != 0)
        {
            f.seekTo(j);
        }
        f.start();
    }

    public int b()
    {
        return f.getDuration();
    }

    public void b(boolean flag)
    {
        int k;
        if (flag)
        {
            k = f.getCurrentPosition();
        } else
        {
            k = 0;
        }
        j = k;
        f.a();
    }

    public Bitmap c()
    {
        return f.getBitmap();
    }
}
