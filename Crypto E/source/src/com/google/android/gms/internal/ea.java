// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            hk, he

public final class ea extends FrameLayout
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{
    static final class a
    {

        private final Runnable mp;
        private volatile boolean tg;

        static boolean a(a a1)
        {
            return a1.tg;
        }

        public void cA()
        {
            he.xO.postDelayed(mp, 250L);
        }

        public void cancel()
        {
            tg = true;
            he.xO.removeCallbacks(mp);
        }

        public a(ea ea1)
        {
            tg = false;
            mp = new _cls1(this, ea1);
        }
    }


    private final hk mj;
    private final MediaController tb;
    private final a tc = new a(this);
    private final VideoView td;
    private long te;
    private String tf;

    public ea(Context context, hk hk1)
    {
        super(context);
        mj = hk1;
        td = new VideoView(context);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1, 17);
        addView(td, layoutparams);
        tb = new MediaController(context);
        tc.cA();
        td.setOnCompletionListener(this);
        td.setOnPreparedListener(this);
        td.setOnErrorListener(this);
    }

    private static void a(hk hk1, String s)
    {
        a(hk1, s, ((Map) (new HashMap(1))));
    }

    public static void a(hk hk1, String s, String s1)
    {
        boolean flag;
        byte byte0;
        HashMap hashmap;
        if (s1 == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            byte0 = 2;
        } else
        {
            byte0 = 3;
        }
        hashmap = new HashMap(byte0);
        hashmap.put("what", s);
        if (!flag)
        {
            hashmap.put("extra", s1);
        }
        a(hk1, "error", ((Map) (hashmap)));
    }

    private static void a(hk hk1, String s, String s1, String s2)
    {
        HashMap hashmap = new HashMap(2);
        hashmap.put(s1, s2);
        a(hk1, s, ((Map) (hashmap)));
    }

    private static void a(hk hk1, String s, Map map)
    {
        map.put("event", s);
        hk1.a("onVideoEvent", map);
    }

    public void G(String s)
    {
        tf = s;
    }

    public void b(MotionEvent motionevent)
    {
        td.dispatchTouchEvent(motionevent);
    }

    public void cy()
    {
        if (!TextUtils.isEmpty(tf))
        {
            td.setVideoPath(tf);
            return;
        } else
        {
            a(mj, "no_src", ((String) (null)));
            return;
        }
    }

    public void cz()
    {
        long l = td.getCurrentPosition();
        if (te != l)
        {
            float f = (float)l / 1000F;
            a(mj, "timeupdate", "time", String.valueOf(f));
            te = l;
        }
    }

    public void destroy()
    {
        tc.cancel();
        td.stopPlayback();
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        a(mj, "ended");
    }

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        a(mj, String.valueOf(i), String.valueOf(j));
        return true;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        float f = (float)td.getDuration() / 1000F;
        a(mj, "canplaythrough", "duration", String.valueOf(f));
    }

    public void pause()
    {
        td.pause();
    }

    public void play()
    {
        td.start();
    }

    public void seekTo(int i)
    {
        td.seekTo(i);
    }

    public void t(boolean flag)
    {
        if (flag)
        {
            td.setMediaController(tb);
            return;
        } else
        {
            tb.hide();
            td.setMediaController(null);
            return;
        }
    }

    // Unreferenced inner class com/google/android/gms/internal/ea$a$1

/* anonymous class */
    class a._cls1
        implements Runnable
    {

        private final WeakReference th;
        final ea ti;
        final a tj;

        public void run()
        {
            ea ea1 = (ea)th.get();
            if (!a.a(tj) && ea1 != null)
            {
                ea1.cz();
                tj.cA();
            }
        }

            
            {
                tj = a1;
                ti = ea1;
                super();
                th = new WeakReference(ti);
            }
    }

}
