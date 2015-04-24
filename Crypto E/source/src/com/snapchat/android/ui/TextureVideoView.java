// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import android.widget.VideoView;
import java.io.IOException;
import java.util.Map;

public class TextureVideoView extends TextureView
    implements android.widget.MediaController.MediaPlayerControl
{

    private android.media.MediaPlayer.OnErrorListener A = new android.media.MediaPlayer.OnErrorListener() {

        final TextureVideoView a;

        public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
        {
            TextureVideoView.c(a, -1);
            TextureVideoView.d(a, -1);
            if (TextureVideoView.e(a) != null)
            {
                TextureVideoView.e(a).hide();
            }
            if (TextureVideoView.j(a) != null)
            {
                if (!TextureVideoView.j(a).onError(TextureVideoView.d(a), i1, j1));
            }
            return true;
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnBufferingUpdateListener B = new android.media.MediaPlayer.OnBufferingUpdateListener() {

        final TextureVideoView a;

        public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
        {
            TextureVideoView.e(a, i1);
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };
    private android.view.TextureView.SurfaceTextureListener C = new android.view.TextureView.SurfaceTextureListener() {

        final TextureVideoView a;

        public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i1, int j1)
        {
            TextureVideoView.k(a);
        }

        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
        {
            if (TextureVideoView.e(a) != null)
            {
                TextureVideoView.e(a).hide();
            }
            TextureVideoView.d(a, true);
            return false;
        }

        public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i1, int j1)
        {
            boolean flag = true;
            TextureVideoView.f(a, i1);
            TextureVideoView.g(a, j1);
            boolean flag1;
            if (TextureVideoView.g(a) == 3)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (TextureVideoView.a(a) != i1 || TextureVideoView.b(a) != j1)
            {
                flag = false;
            }
            if (TextureVideoView.d(a) != null && flag1 && flag)
            {
                if (TextureVideoView.f(a) != 0)
                {
                    a.seekTo(TextureVideoView.f(a));
                }
                a.start();
            }
        }

        public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
        {
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };
    android.media.MediaPlayer.OnVideoSizeChangedListener a = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

        final TextureVideoView a;

        public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
        {
            TextureVideoView.a(a, mediaplayer.getVideoWidth());
            TextureVideoView.b(a, mediaplayer.getVideoHeight());
            if (TextureVideoView.a(a) != 0 && TextureVideoView.b(a) != 0)
            {
                a.requestLayout();
            }
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };
    android.media.MediaPlayer.OnPreparedListener b = new android.media.MediaPlayer.OnPreparedListener() {

        final TextureVideoView a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            int i1;
            TextureVideoView.c(a, 2);
            TextureVideoView.a(a, true);
            TextureVideoView.b(a, false);
            TextureVideoView.c(a, false);
            if (TextureVideoView.c(a) != null)
            {
                TextureVideoView.c(a).onPrepared(TextureVideoView.d(a));
            }
            if (TextureVideoView.e(a) != null)
            {
                TextureVideoView.e(a).setEnabled(true);
            }
            TextureVideoView.a(a, mediaplayer.getVideoWidth());
            TextureVideoView.b(a, mediaplayer.getVideoHeight());
            i1 = TextureVideoView.f(a);
            if (i1 != 0)
            {
                a.seekTo(i1);
            }
            if (TextureVideoView.a(a) == 0 || TextureVideoView.b(a) == 0) goto _L2; else goto _L1
_L1:
            if (TextureVideoView.g(a) != 3) goto _L4; else goto _L3
_L3:
            a.start();
            if (TextureVideoView.e(a) != null)
            {
                TextureVideoView.e(a).show();
            }
_L6:
            return;
_L4:
            if (!a.isPlaying() && (i1 != 0 || a.getCurrentPosition() > 0) && TextureVideoView.e(a) != null)
            {
                TextureVideoView.e(a).show(0);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (TextureVideoView.g(a) == 3)
            {
                a.start();
                return;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };
    private String c;
    private Uri d;
    private Map e;
    private int f;
    private int g;
    private MediaPlayer h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Surface n;
    private MediaController o;
    private android.media.MediaPlayer.OnCompletionListener p;
    private android.media.MediaPlayer.OnPreparedListener q;
    private int r;
    private android.media.MediaPlayer.OnErrorListener s;
    private android.media.MediaPlayer.OnInfoListener t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private android.media.MediaPlayer.OnCompletionListener y = new android.media.MediaPlayer.OnCompletionListener() {

        final TextureVideoView a;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            TextureVideoView.c(a, 5);
            TextureVideoView.d(a, 5);
            if (TextureVideoView.e(a) != null)
            {
                TextureVideoView.e(a).hide();
            }
            if (TextureVideoView.h(a) != null)
            {
                TextureVideoView.h(a).onCompletion(TextureVideoView.d(a));
            }
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnInfoListener z = new android.media.MediaPlayer.OnInfoListener() {

        final TextureVideoView a;

        public boolean onInfo(MediaPlayer mediaplayer, int i1, int j1)
        {
            if (TextureVideoView.i(a) != null)
            {
                TextureVideoView.i(a).onInfo(mediaplayer, i1, j1);
            }
            return true;
        }

            
            {
                a = TextureVideoView.this;
                super();
            }
    };

    public TextureVideoView(Context context)
    {
        super(context);
        c = "TextureVideoView";
        f = 0;
        g = 0;
        h = null;
        b();
    }

    public TextureVideoView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        b();
    }

    public TextureVideoView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = "TextureVideoView";
        f = 0;
        g = 0;
        h = null;
        b();
    }

    static int a(TextureVideoView texturevideoview)
    {
        return texturevideoview.j;
    }

    static int a(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.j = i1;
        return i1;
    }

    private void a(boolean flag)
    {
        if (h != null)
        {
            h.reset();
            h.release();
            h = null;
            f = 0;
            if (flag)
            {
                g = 0;
            }
        }
        if (n != null)
        {
            n.release();
            n = null;
        }
    }

    static boolean a(TextureVideoView texturevideoview, boolean flag)
    {
        texturevideoview.v = flag;
        return flag;
    }

    static int b(TextureVideoView texturevideoview)
    {
        return texturevideoview.k;
    }

    static int b(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.k = i1;
        return i1;
    }

    private void b()
    {
        j = 0;
        k = 0;
        setSurfaceTextureListener(C);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        f = 0;
        g = 0;
    }

    static boolean b(TextureVideoView texturevideoview, boolean flag)
    {
        texturevideoview.w = flag;
        return flag;
    }

    static int c(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.f = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnPreparedListener c(TextureVideoView texturevideoview)
    {
        return texturevideoview.q;
    }

    private void c()
    {
        if (d == null || getSurfaceTexture() == null)
        {
            return;
        }
        ((AudioManager)getContext().getSystemService("audio")).requestAudioFocus(null, 3, 1);
        a(false);
        h = new MediaPlayer();
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        h.setAudioSessionId(i);
_L1:
        IOException ioexception;
        h.setOnPreparedListener(b);
        h.setOnVideoSizeChangedListener(a);
        h.setOnCompletionListener(y);
        h.setOnErrorListener(A);
        h.setOnInfoListener(z);
        h.setOnBufferingUpdateListener(B);
        r = 0;
        h.setDataSource(getContext(), d, e);
        n = new Surface(getSurfaceTexture());
        h.setSurface(n);
        h.setAudioStreamType(3);
        h.setScreenOnWhilePlaying(true);
        h.prepareAsync();
        f = 1;
        d();
        return;
        try
        {
            i = h.getAudioSessionId();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            Log.w(c, (new StringBuilder()).append("Unable to open content: ").append(d).toString(), ioexception);
            f = -1;
            g = -1;
            A.onError(h, 1, 0);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.w(c, (new StringBuilder()).append("Unable to open content: ").append(d).toString(), illegalargumentexception);
            f = -1;
            g = -1;
            A.onError(h, 1, 0);
            return;
        }
          goto _L1
    }

    static boolean c(TextureVideoView texturevideoview, boolean flag)
    {
        texturevideoview.x = flag;
        return flag;
    }

    static int d(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.g = i1;
        return i1;
    }

    static MediaPlayer d(TextureVideoView texturevideoview)
    {
        return texturevideoview.h;
    }

    private void d()
    {
        if (h != null && o != null)
        {
            Object obj;
            if (getParent() instanceof View)
            {
                obj = (View)getParent();
            } else
            {
                obj = this;
            }
            o.setAnchorView(((View) (obj)));
            o.setEnabled(f());
        }
    }

    static void d(TextureVideoView texturevideoview, boolean flag)
    {
        texturevideoview.a(flag);
    }

    static int e(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.r = i1;
        return i1;
    }

    static MediaController e(TextureVideoView texturevideoview)
    {
        return texturevideoview.o;
    }

    private void e()
    {
        if (o.isShowing())
        {
            o.hide();
            return;
        } else
        {
            o.show();
            return;
        }
    }

    static int f(TextureVideoView texturevideoview)
    {
        return texturevideoview.u;
    }

    static int f(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.l = i1;
        return i1;
    }

    private boolean f()
    {
        return h != null && f != -1 && f != 0 && f != 1;
    }

    static int g(TextureVideoView texturevideoview)
    {
        return texturevideoview.g;
    }

    static int g(TextureVideoView texturevideoview, int i1)
    {
        texturevideoview.m = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnCompletionListener h(TextureVideoView texturevideoview)
    {
        return texturevideoview.p;
    }

    static android.media.MediaPlayer.OnInfoListener i(TextureVideoView texturevideoview)
    {
        return texturevideoview.t;
    }

    static android.media.MediaPlayer.OnErrorListener j(TextureVideoView texturevideoview)
    {
        return texturevideoview.s;
    }

    static void k(TextureVideoView texturevideoview)
    {
        texturevideoview.c();
    }

    public void a()
    {
        if (h != null)
        {
            h.stop();
            h.release();
            h = null;
            f = 0;
            g = 0;
        }
        if (n != null)
        {
            n.release();
            n = null;
        }
    }

    public boolean canPause()
    {
        return v;
    }

    public boolean canSeekBackward()
    {
        return w;
    }

    public boolean canSeekForward()
    {
        return x;
    }

    public int getAudioSessionId()
    {
        if (i == 0)
        {
            MediaPlayer mediaplayer = new MediaPlayer();
            i = mediaplayer.getAudioSessionId();
            mediaplayer.release();
        }
        return i;
    }

    public int getBufferPercentage()
    {
        if (h != null)
        {
            return r;
        } else
        {
            return 0;
        }
    }

    public int getCurrentPosition()
    {
        if (f())
        {
            return h.getCurrentPosition();
        } else
        {
            return 0;
        }
    }

    public int getDuration()
    {
        if (f())
        {
            return h.getDuration();
        } else
        {
            return -1;
        }
    }

    public Uri getVideoURI()
    {
        return d;
    }

    public boolean isPlaying()
    {
        return f() && h.isPlaying();
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(android/widget/VideoView.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(android/widget/VideoView.getName());
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag;
        if (i1 != 4 && i1 != 24 && i1 != 25 && i1 != 164 && i1 != 82 && i1 != 5 && i1 != 6)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!f() || !flag || o == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        if (i1 != 79 && i1 != 85) goto _L2; else goto _L1
_L1:
        if (!h.isPlaying()) goto _L4; else goto _L3
_L3:
        pause();
        o.show();
_L6:
        return true;
_L4:
        start();
        o.hide();
        return true;
_L2:
        if (i1 != 126)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!h.isPlaying())
        {
            start();
            o.hide();
            return true;
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (i1 != 86 && i1 != 127)
        {
            break; /* Loop/switch isn't completed */
        }
        if (h.isPlaying())
        {
            pause();
            o.show();
            return true;
        }
        if (true) goto _L6; else goto _L7
_L7:
        e();
        return super.onKeyDown(i1, keyevent);
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        k1 = getDefaultSize(j, i1);
        l1 = getDefaultSize(k, j1);
        if (j <= 0 || k <= 0) goto _L2; else goto _L1
_L1:
        int i2;
        int j2;
        int k2;
        i2 = android.view.View.MeasureSpec.getMode(i1);
        j2 = android.view.View.MeasureSpec.getSize(i1);
        k2 = android.view.View.MeasureSpec.getMode(j1);
        l1 = android.view.View.MeasureSpec.getSize(j1);
        if (i2 != 0x40000000 || k2 != 0x40000000) goto _L4; else goto _L3
_L3:
        if (l1 * j < j2 * k)
        {
            k1 = (l1 * j) / k;
        } else
        if (l1 * j > j2 * k)
        {
            l1 = (j2 * k) / j;
            k1 = j2;
        } else
        {
            k1 = j2;
        }
_L2:
        setMeasuredDimension(k1, Math.max(1, l1));
        return;
_L4:
        if (i2 == 0x40000000)
        {
            int j3 = (j2 * k) / j;
            int l2;
            int i3;
            if (k2 == 0x80000000 && j3 > l1)
            {
                k1 = j2;
            } else
            {
                l1 = j3;
                k1 = j2;
            }
        } else
        if (k2 == 0x40000000)
        {
            k1 = (l1 * j) / k;
            if (i2 == 0x80000000 && k1 > j2)
            {
                k1 = j2;
            }
        } else
        {
            l2 = j;
            i3 = k;
            if (k2 == 0x80000000 && i3 > l1)
            {
                k1 = (l1 * j) / k;
            } else
            {
                l1 = i3;
                k1 = l2;
            }
            if (i2 == 0x80000000 && k1 > j2)
            {
                l1 = (j2 * k) / j;
                k1 = j2;
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (f() && o != null)
        {
            e();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        if (f() && o != null)
        {
            e();
        }
        return false;
    }

    public void pause()
    {
        if (f() && h.isPlaying())
        {
            h.pause();
            f = 4;
        }
        g = 4;
    }

    public void seekTo(int i1)
    {
        if (f())
        {
            h.seekTo(i1);
            u = 0;
            return;
        } else
        {
            u = i1;
            return;
        }
    }

    public void setLooping(boolean flag)
    {
        if (h != null)
        {
            h.setLooping(flag);
        }
    }

    public void setMediaController(MediaController mediacontroller)
    {
        if (o != null)
        {
            o.hide();
        }
        o = mediacontroller;
        d();
    }

    public void setOnCompletionListener(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        p = oncompletionlistener;
    }

    public void setOnErrorListener(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        s = onerrorlistener;
    }

    public void setOnInfoListener(android.media.MediaPlayer.OnInfoListener oninfolistener)
    {
        t = oninfolistener;
    }

    public void setOnPreparedListener(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        q = onpreparedlistener;
    }

    public void setVideoPath(String s1)
    {
        if (s1 != null)
        {
            setVideoURI(Uri.parse(s1));
        }
    }

    public void setVideoURI(Uri uri)
    {
        setVideoURI(uri, null);
    }

    public void setVideoURI(Uri uri, Map map)
    {
        d = uri;
        e = map;
        u = 0;
        c();
        requestLayout();
        invalidate();
    }

    public void start()
    {
        if (f())
        {
            h.start();
            f = 3;
        }
        g = 3;
    }
}
