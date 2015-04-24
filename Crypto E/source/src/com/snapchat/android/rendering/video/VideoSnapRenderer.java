// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.content.Context;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.server.CaptionParameters;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.ui.SnapVideoView;
import com.snapchat.android.ui.WideTextView;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.bitmap.BitmapRecycling;
import com.snapchat.android.util.cache.FileUtils;
import com.snapchat.android.util.cache.Storage;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapResourceLoader, VideoSnapResources, MediaPlayerCodeTranslator

public class VideoSnapRenderer
    implements SnapMediaRenderer
{

    protected static final android.media.MediaPlayer.OnErrorListener e = new android.media.MediaPlayer.OnErrorListener() {

        public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
        {
            String s1 = VideoSnapRenderer.e();
            Object aobj[] = new Object[2];
            aobj[0] = MediaPlayerCodeTranslator.a(i1);
            aobj[1] = Integer.valueOf(j1);
            Timber.d(s1, "onError: %s extra=%d", aobj);
            return true;
        }

    };
    private static String f = "VideoSnapRenderer";
    protected final android.media.MediaPlayer.OnInfoListener a;
    protected final android.media.MediaPlayer.OnPreparedListener b;
    protected final android.media.MediaPlayer.OnCompletionListener c;
    protected final android.media.MediaPlayer.OnErrorListener d;
    private final Context g;
    private final LayoutInflater h;
    private final BitmapRecycling i;
    private final Bus j;
    private final FileUtils k;
    private final VideoSnapResourceLoader l;
    private ViewGroup m;
    private View n;
    private SnapVideoView o;
    private ImageView p;
    private WideTextView q;
    private com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener r;
    private MediaPlayer s;
    private boolean t;
    private ReceivedSnap u;

    public VideoSnapRenderer(Context context)
    {
        this(context, (LayoutInflater)context.getSystemService("layout_inflater"), new BitmapRecycling(), BusProvider.a(), new FileUtils(), new VideoSnapResourceLoader(context));
    }

    VideoSnapRenderer(Context context, LayoutInflater layoutinflater, BitmapRecycling bitmaprecycling, Bus bus, FileUtils fileutils, VideoSnapResourceLoader videosnapresourceloader)
    {
        a = new android.media.MediaPlayer.OnInfoListener() {

            final VideoSnapRenderer a;

            public boolean onInfo(MediaPlayer mediaplayer, int i1, int j1)
            {
                String s1 = VideoSnapRenderer.e();
                Object aobj[] = new Object[2];
                aobj[0] = MediaPlayerCodeTranslator.b(i1);
                aobj[1] = Integer.valueOf(j1);
                Timber.c(s1, "onInfo: %s extra=%d", aobj);
                if (i1 == 3)
                {
                    VideoSnapRenderer.a(a);
                }
                return false;
            }

            
            {
                a = VideoSnapRenderer.this;
                super();
            }
        };
        b = new android.media.MediaPlayer.OnPreparedListener() {

            final VideoSnapRenderer a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                String s1 = VideoSnapRenderer.e();
                Object aobj[] = new Object[4];
                aobj[0] = VideoSnapRenderer.b(a).d();
                aobj[1] = Integer.valueOf(mediaplayer.getDuration());
                aobj[2] = Integer.valueOf(mediaplayer.getVideoWidth());
                aobj[3] = Integer.valueOf(mediaplayer.getVideoHeight());
                Timber.c(s1, "Prepared %s, duration:%d width:%d height:%d", aobj);
                VideoSnapRenderer.a(a, mediaplayer);
                VideoSnapRenderer.d(a).setLooping(VideoSnapRenderer.c(a));
                if (VideoSnapRenderer.b(a).ao() == 2)
                {
                    VideoSnapRenderer.d(a).setVolume(0.0F, 0.0F);
                }
                Resolution resolution = new Resolution(mediaplayer.getVideoWidth(), mediaplayer.getVideoHeight());
                VideoSnapRenderer.a(a, resolution);
                VideoSnapRenderer.a(a, VideoSnapRenderer.b(a), resolution);
                VideoSnapRenderer.e(a).a(VideoSnapRenderer.d(a).getDuration(), VideoSnapRenderer.d(a).getVideoWidth(), VideoSnapRenderer.d(a).getVideoHeight());
                if (android.os.Build.VERSION.SDK_INT >= 17)
                {
                    VideoSnapRenderer.d(a).setOnInfoListener(a.a);
                    return;
                } else
                {
                    VideoSnapRenderer.a(a);
                    return;
                }
            }

            
            {
                a = VideoSnapRenderer.this;
                super();
            }
        };
        c = new android.media.MediaPlayer.OnCompletionListener() {

            final VideoSnapRenderer a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                String s1 = VideoSnapRenderer.e();
                Object aobj[] = new Object[1];
                aobj[0] = VideoSnapRenderer.b(a).d();
                Timber.c(s1, "Completed %s", aobj);
                VideoSnapRenderer.e(a).b();
            }

            
            {
                a = VideoSnapRenderer.this;
                super();
            }
        };
        d = new android.media.MediaPlayer.OnErrorListener() {

            final VideoSnapRenderer a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                String s1 = VideoSnapRenderer.e();
                Object aobj[] = new Object[2];
                aobj[0] = MediaPlayerCodeTranslator.a(i1);
                aobj[1] = Integer.valueOf(j1);
                Timber.e(s1, "onError: %s extra=%d", aobj);
                VideoSnapRenderer.e(a).a(com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode.c);
                AnalyticsEvents.b(i1, j1);
                return true;
            }

            
            {
                a = VideoSnapRenderer.this;
                super();
            }
        };
        g = context;
        h = layoutinflater;
        i = bitmaprecycling;
        j = bus;
        k = fileutils;
        l = videosnapresourceloader;
    }

    static MediaPlayer a(VideoSnapRenderer videosnaprenderer, MediaPlayer mediaplayer)
    {
        videosnaprenderer.s = mediaplayer;
        return mediaplayer;
    }

    static void a(VideoSnapRenderer videosnaprenderer)
    {
        videosnaprenderer.f();
    }

    static void a(VideoSnapRenderer videosnaprenderer, ReceivedSnap receivedsnap, Resolution resolution)
    {
        videosnaprenderer.b(receivedsnap, resolution);
    }

    static void a(VideoSnapRenderer videosnaprenderer, VideoSnapResources videosnapresources)
    {
        videosnaprenderer.a(videosnapresources);
    }

    static void a(VideoSnapRenderer videosnaprenderer, Resolution resolution)
    {
        videosnaprenderer.a(resolution);
    }

    private void a(VideoSnapResources videosnapresources)
    {
        if (videosnapresources.b() == null)
        {
            Timber.d(f, "getVideoUri() return null, the video is not available locally", new Object[0]);
            r.a(com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode.b);
        } else
        {
            o.setVideoPath(videosnapresources.b());
            o.setVisibility(0);
            if (videosnapresources.a().K())
            {
                o.seekTo(SnapUtils.b(videosnapresources.a()));
            }
            if (videosnapresources.c() != null)
            {
                p.setImageBitmap(videosnapresources.c());
                return;
            }
        }
    }

    private void a(Resolution resolution)
    {
        int i1 = m.getWidth();
        double d1 = resolution.c();
        int j1 = (int)((double)i1 / d1);
        o.setVideoAspect(i1, j1);
    }

    static ReceivedSnap b(VideoSnapRenderer videosnaprenderer)
    {
        return videosnaprenderer.u;
    }

    private void b(ReceivedSnap receivedsnap)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)q.getLayoutParams();
        layoutparams.topMargin = 0;
        q.setLayoutParams(layoutparams);
        DisplayMetrics displaymetrics = m.getResources().getDisplayMetrics();
        int i1 = Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        int j1 = Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        AnimationSet animationset = new AnimationSet(true);
        float f1;
        RotateAnimation rotateanimation;
        int k1;
        double d1;
        int l1;
        float f2;
        float f3;
        TranslateAnimation translateanimation;
        if (receivedsnap.ac() == 1L)
        {
            f1 = -90F;
        } else
        {
            f1 = 90F;
        }
        rotateanimation = new RotateAnimation(f1, f1, 1, 0.5F, 1, 0.5F);
        k1 = (i1 - j1) / 2;
        d1 = receivedsnap.ad();
        l1 = SnapCaptionView.d(g);
        f2 = (-k1 + j1 / 2) - l1 / 2 - (int)((1.0D - d1) * (double)(j1 - l1));
        f3 = i1 / 2 - l1 / 2;
        translateanimation = new TranslateAnimation(f2, f2, f3, f3);
        animationset.addAnimation(rotateanimation);
        animationset.addAnimation(translateanimation);
        animationset.setFillAfter(true);
        animationset.setDuration(0L);
        q.startAnimation(animationset);
    }

    private void b(ReceivedSnap receivedsnap, Resolution resolution)
    {
        q.setLandscapeMode(a(receivedsnap));
        if (receivedsnap instanceof StorySnap)
        {
            CaptionParameters captionparameters = ((StorySnap)receivedsnap).aD();
            String s1;
            DisplayMetrics displaymetrics;
            if (captionparameters != null)
            {
                s1 = captionparameters.getText();
            } else
            {
                s1 = null;
            }
        } else
        {
            s1 = receivedsnap.ab();
        }
        if (!receivedsnap.aa() || TextUtils.isEmpty(s1) || receivedsnap.k())
        {
            q.setText("");
            return;
        }
        q.setText(s1);
        displaymetrics = m.getResources().getDisplayMetrics();
        q.setTextSize((0.053125F * (float)displaymetrics.widthPixels) / displaymetrics.density);
        if (a(receivedsnap))
        {
            b(receivedsnap);
            return;
        } else
        {
            a(receivedsnap, resolution);
            return;
        }
    }

    static boolean c(VideoSnapRenderer videosnaprenderer)
    {
        return videosnaprenderer.t;
    }

    static MediaPlayer d(VideoSnapRenderer videosnaprenderer)
    {
        return videosnaprenderer.s;
    }

    static com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener e(VideoSnapRenderer videosnaprenderer)
    {
        return videosnaprenderer.r;
    }

    static String e()
    {
        return f;
    }

    private void f()
    {
        AnalyticsEvents.a(u instanceof StorySnap, true, null, null);
        r.a();
    }

    public void a()
    {
        String s1 = f;
        Object aobj[] = new Object[1];
        String s2;
        if (u == null)
        {
            s2 = "?";
        } else
        {
            s2 = u.d();
        }
        aobj[0] = s2;
        Timber.c(s1, "Start %s", aobj);
        if (u == null)
        {
            if (ReleaseManager.f())
            {
                throw new RuntimeException("Start called for null snap");
            }
        } else
        {
            n.bringToFront();
            p.setVisibility(0);
            o.setVisibility(0);
            o.start();
        }
    }

    public void a(ViewGroup viewgroup)
    {
        m = viewgroup;
        n = h.inflate(0x7f040083, m, false);
        o = (SnapVideoView)n.findViewById(0x7f0a02da);
        p = (ImageView)n.findViewById(0x7f0a02db);
        q = (WideTextView)n.findViewById(0x7f0a02dd);
        m.addView(n);
    }

    protected void a(ReceivedSnap receivedsnap, Resolution resolution)
    {
        float f1 = (float)m.getHeight() / 2.0F;
        float f2 = (float)resolution.b() / 2.0F;
        float f3 = (float)m.getResources().getDisplayMetrics().widthPixels / (float)resolution.a();
        float f4 = f1 - f2 * f3;
        float f5 = (f1 + f2 * f3) - f4;
        int i1 = (int)((double)f5 * receivedsnap.ad() + (double)f4);
        int j1;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (f5 >= (float)m.getHeight())
        {
            j1 = (int)((double)m.getHeight() * receivedsnap.ad());
        } else
        {
            j1 = i1;
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)q.getLayoutParams();
        if (j1 + 48 >= m.getHeight())
        {
            layoutparams.topMargin = (int)((float)m.getHeight() - ViewUtils.a(38F, g));
        } else
        {
            layoutparams.topMargin = j1;
        }
        if (receivedsnap.ac() == 1L || receivedsnap.ac() == 2L)
        {
            layoutparams.topMargin = o.getTop();
        }
        q.setLayoutParams(layoutparams);
    }

    public void a(ReceivedSnap receivedsnap, boolean flag, com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener snaprendererlistener)
    {
        Timber.c(f, (new StringBuilder()).append("Prepare ").append(receivedsnap.d()).toString(), new Object[0]);
        r = snaprendererlistener;
        u = receivedsnap;
        t = flag;
        if (!k.a())
        {
            r.a(com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode.a);
            return;
        }
        if (Storage.b() == null)
        {
            Storage.a(SnapchatApplication.e().getCacheDir(), SnapchatApplication.e().getExternalCacheDir());
        }
        j.a(new CameraStateEvent(false));
        m.setVisibility(0);
        if (o.getVisibility() == 8)
        {
            o.setVisibility(4);
        }
        o.setOnCompletionListener(c);
        o.setOnErrorListener(d);
        o.setOnPreparedListener(b);
        l.a(receivedsnap, new VideoSnapResourceLoader.Callback() {

            final VideoSnapRenderer a;

            public void a(VideoSnapResources videosnapresources)
            {
                String s1 = VideoSnapRenderer.e();
                Object aobj[] = new Object[1];
                aobj[0] = videosnapresources.a().d();
                Timber.c(s1, "Async loading complete for %s", aobj);
                VideoSnapRenderer.a(a, videosnapresources);
            }

            
            {
                a = VideoSnapRenderer.this;
                super();
            }
        });
    }

    protected boolean a(ReceivedSnap receivedsnap)
    {
        return receivedsnap.ac() == 1L || receivedsnap.ac() == 2L;
    }

    public void b()
    {
        String s1 = f;
        Object aobj[] = new Object[1];
        String s2;
        if (u == null)
        {
            s2 = "?";
        } else
        {
            s2 = u.d();
        }
        aobj[0] = s2;
        Timber.c(s1, "Stop %s", aobj);
        l.a();
        r = null;
        u = null;
        if (s != null)
        {
            s.setOnInfoListener(null);
            s = null;
        }
        o.setOnPreparedListener(null);
        o.setOnCompletionListener(null);
        o.setOnErrorListener(e);
        o.stopPlayback();
        p.setVisibility(8);
    }

    public void c()
    {
        String s1 = f;
        Object aobj[] = new Object[1];
        String s2;
        if (u == null)
        {
            s2 = "?";
        } else
        {
            s2 = u.d();
        }
        aobj[0] = s2;
        Timber.c(s1, "Show %s", aobj);
        p.setVisibility(0);
        o.setVisibility(0);
        if (q.getText().length() != 0)
        {
            q.setVisibility(0);
            return;
        } else
        {
            q.setVisibility(4);
            return;
        }
    }

    public void d()
    {
        String s1 = f;
        Object aobj[] = new Object[1];
        String s2;
        if (u == null)
        {
            s2 = "?";
        } else
        {
            s2 = u.d();
        }
        aobj[0] = s2;
        Timber.c(s1, "Hide %s", aobj);
        p.setVisibility(8);
        o.setVisibility(8);
        q.setVisibility(8);
        i.a(p);
    }

}
