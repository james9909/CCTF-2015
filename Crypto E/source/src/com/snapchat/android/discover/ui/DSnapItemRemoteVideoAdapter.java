// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.MediaController;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.view.BrightcoveTextureVideoView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.media.RemoteVideoViewController;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapter, RemoteVideoLoadingOverlayPresenter, BufferingEventListener, DSnapView

public class DSnapItemRemoteVideoAdapter extends DSnapItemViewAdapter
    implements BufferingEventListener.BufferingCallback
{

    protected final EventListener a;
    private final LayoutInflater c;
    private final MediaController d;
    private final RemoteVideoViewController e;
    private final DiscoverMediaManager f;
    private final RemoteVideoLoadingOverlayPresenter g;
    private final DiscoverPerformanceAnalytics h;
    private final BufferingEventListener i;
    private final Map j;
    private final DiscoverAnalytics k;
    private View l;
    private ViewGroup m;
    private FrameLayout n;
    private BrightcoveTextureVideoView o;
    private DSnapPage p;
    private MediaState q;
    private boolean r;
    private boolean s;
    private String t;

    public DSnapItemRemoteVideoAdapter(Context context)
    {
        this((LayoutInflater)context.getSystemService("layout_inflater"), new MediaController(context, false), new RemoteVideoViewController(), new RemoteVideoLoadingOverlayPresenter(), DiscoverMediaManager.a(), DiscoverPerformanceAnalytics.a(), new DiscoverAnalytics());
    }

    protected DSnapItemRemoteVideoAdapter(LayoutInflater layoutinflater, MediaController mediacontroller, RemoteVideoViewController remotevideoviewcontroller, RemoteVideoLoadingOverlayPresenter remotevideoloadingoverlaypresenter, DiscoverMediaManager discovermediamanager, DiscoverPerformanceAnalytics discoverperformanceanalytics, DiscoverAnalytics discoveranalytics)
    {
        i = new BufferingEventListener(this);
        j = new HashMap(2);
        p = null;
        q = MediaState.a;
        r = true;
        s = false;
        a = new EventListener() {

            final DSnapItemRemoteVideoAdapter a;

            public void processEvent(Event event)
            {
                String s1;
                byte byte0;
                if (TextUtils.equals(event.getType(), "progress"))
                {
                    Object aobj1[] = new Object[2];
                    aobj1[0] = DSnapItemRemoteVideoAdapter.c(a);
                    aobj1[1] = event.toString();
                    Timber.a("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", aobj1);
                } else
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = DSnapItemRemoteVideoAdapter.c(a);
                    aobj[1] = event.toString();
                    Timber.c("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", aobj);
                }
                s1 = event.getType();
                byte0 = -1;
                s1.hashCode();
                JVM INSTR lookupswitch 5: default 108
            //                           -1402931637: 245
            //                           -490757274: 215
            //                           96784904: 230
            //                           189811114: 200
            //                           1656958035: 185;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                byte0;
                JVM INSTR tableswitch 0 4: default 144
            //                           0 260
            //                           1 298
            //                           2 298
            //                           3 298
            //                           4 344;
                   goto _L7 _L8 _L9 _L9 _L9 _L10
_L7:
                DSnapItemRemoteVideoAdapter.g(a);
                return;
_L6:
                if (s1.equals("didPlay"))
                {
                    byte0 = 0;
                }
                  goto _L1
_L5:
                if (s1.equals("sourceNotFound"))
                {
                    byte0 = 1;
                }
                  goto _L1
_L3:
                if (s1.equals("sourceNotPlayable"))
                {
                    byte0 = 2;
                }
                  goto _L1
_L4:
                if (s1.equals("error"))
                {
                    byte0 = 3;
                }
                  goto _L1
_L2:
                if (s1.equals("completed"))
                {
                    byte0 = 4;
                }
                  goto _L1
_L8:
                DSnapItemRemoteVideoAdapter.a(a, false);
                DSnapItemRemoteVideoAdapter.d(a);
                DSnapItemRemoteVideoAdapter.f(a).a(DSnapItemRemoteVideoAdapter.e(a), false, true);
                  goto _L7
_L9:
                DSnapItemRemoteVideoAdapter.a(a, false);
                DSnapItemRemoteVideoAdapter.d(a);
                DSnapItemRemoteVideoAdapter.f(a).a(DSnapItemRemoteVideoAdapter.e(a), false, false);
                DSnapItemRemoteVideoAdapter.a(a, event);
                  goto _L7
_L10:
                DSnapItemRemoteVideoAdapter.d(a);
                  goto _L7
            }

            
            {
                a = DSnapItemRemoteVideoAdapter.this;
                super();
            }
        };
        c = layoutinflater;
        e = remotevideoviewcontroller;
        d = mediacontroller;
        g = remotevideoloadingoverlaypresenter;
        f = discovermediamanager;
        h = discoverperformanceanalytics;
        k = discoveranalytics;
    }

    static FrameLayout a(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        return dsnapitemremotevideoadapter.n;
    }

    private void a(Event event)
    {
        String s1;
        String s2;
        String s3;
        String s4;
        if (event.properties != null)
        {
            Video video = (Video)event.properties.get("video");
            String s5;
            Source source;
            String s6;
            String s7;
            if (video != null)
            {
                s5 = video.getId();
            } else
            {
                s5 = null;
            }
            source = (Source)event.properties.get("source");
            if (source != null)
            {
                s6 = source.getUrl();
            } else
            {
                s6 = null;
            }
            if (event.properties.containsKey("errorCode"))
            {
                s7 = event.properties.get("errorCode").toString();
            } else
            {
                s7 = null;
            }
            if (event.properties.containsKey("errorMessage"))
            {
                s4 = event.properties.get("errorMessage").toString();
                s3 = s7;
                s2 = s6;
                s1 = s5;
            } else
            {
                s3 = s7;
                s2 = s6;
                s1 = s5;
                s4 = null;
            }
        } else
        {
            s1 = null;
            s2 = null;
            s3 = null;
            s4 = null;
        }
        k.a(p.e(), p.a(), p.g(), s1, s2, event.getType(), s3, s4);
    }

    static void a(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter, Event event)
    {
        dsnapitemremotevideoadapter.a(event);
    }

    static boolean a(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter, boolean flag)
    {
        dsnapitemremotevideoadapter.r = flag;
        return flag;
    }

    static MediaController b(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        return dsnapitemremotevideoadapter.d;
    }

    static DSnapPage c(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        return dsnapitemremotevideoadapter.p;
    }

    static void d(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        dsnapitemremotevideoadapter.h();
    }

    static String e(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        return dsnapitemremotevideoadapter.t;
    }

    static DiscoverPerformanceAnalytics f(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        return dsnapitemremotevideoadapter.h;
    }

    static void g(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        dsnapitemremotevideoadapter.i();
    }

    private void h()
    {
        Object aobj[] = new Object[1];
        aobj[0] = p;
        Timber.a("DSnapItemRemoteVideoAdapter", "Showing media controller indefinitely for %s", aobj);
        if (s)
        {
            d.show(0);
        }
    }

    private void i()
    {
        g.a(q, r);
    }

    private void j()
    {
        d.setAnchorView(n);
        if (android.os.Build.VERSION.SDK_INT <= 17)
        {
            d.requestLayout();
            d.post(new Runnable() {

                final DSnapItemRemoteVideoAdapter a;

                public void run()
                {
                    android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)DSnapItemRemoteVideoAdapter.a(a).getLayoutParams();
                    layoutparams.bottomMargin = DSnapItemRemoteVideoAdapter.b(a).getMeasuredHeight();
                    DSnapItemRemoteVideoAdapter.a(a).setLayoutParams(layoutparams);
                }

            
            {
                a = DSnapItemRemoteVideoAdapter.this;
                super();
            }
            });
        }
    }

    public com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(long l1)
    {
        if (l1 >= (long)e.a())
        {
            return com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.b;
        } else
        {
            return com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.a;
        }
    }

    public void a()
    {
        r = true;
        i();
        h.b(t, p.e(), p.d(), p.a(), p.o().b());
    }

    public void a(int i1)
    {
        Timber.a("DSnapItemRemoteVideoAdapter", (new StringBuilder()).append("onRotate: ").append(i1).toString(), new Object[0]);
        d.hide();
    }

    public void a(DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        p = dsnappage;
        if (dsnappanel.e() != null && q != MediaState.f && dsnappanel.i() == MediaState.f)
        {
            e.a(dsnappanel.e());
        }
        q = dsnappanel.i();
        i();
    }

    public void a(String s1, DSnapPage dsnappage, View view)
    {
    }

    protected void a(boolean flag)
    {
        s = flag;
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        l = c.inflate(0x7f040047, null);
        m = (ViewGroup)l.findViewById(0x7f0a01b6);
        n = (FrameLayout)l.findViewById(0x7f0a01b8);
        j();
        g.a(l);
        p = dsnappage;
        i();
        return true;
    }

    public void b()
    {
        r = false;
        i();
        h.b(t, false, true);
    }

    public void c()
    {
    }

    public View d()
    {
        return l;
    }

    public com.snapchat.android.discover.model.DSnapPanel.MediaType e()
    {
        return com.snapchat.android.discover.model.DSnapPanel.MediaType.d;
    }

    public void f()
    {
        Timber.a("DSnapItemRemoteVideoAdapter", "Remote video scrolled - hiding controller.", new Object[0]);
        d.hide();
    }

    public boolean g()
    {
        return true;
    }

    public void n_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = p;
        Timber.c("DSnapItemRemoteVideoAdapter", "Entering view for %s", aobj);
        if (s)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = p;
            Timber.e("DSnapItemRemoteVideoAdapter", "View already entered for %s", aobj1);
            if (ReleaseManager.e())
            {
                Object aobj2[] = new Object[1];
                aobj2[0] = p;
                throw new IllegalStateException(String.format("View for %s is already entered!", aobj2));
            }
        } else
        {
            a(true);
            if (q.b() || q == MediaState.a)
            {
                Timber.c("DSnapItemRemoteVideoAdapter", "User entered view for a failed long form video - attempting to acquire urls again.", new Object[0]);
                f.a(p.d());
            }
            c.inflate(0x7f040009, m);
            o = (BrightcoveTextureVideoView)m.findViewById(0x7f0a006f);
            d.setMediaPlayer(o);
            j();
            o.setMediaController(d, n, null);
            EventEmitter eventemitter = o.getEventEmitter();
            j.put(Integer.valueOf(eventemitter.on("*", a)), "*");
            j.put(Integer.valueOf(eventemitter.on("progress", i)), "progress");
            e.a(o);
            r = true;
            e.a(false);
            i();
            h();
            t = UUID.randomUUID().toString();
            h.a(t, p.e(), p.a(), p.d(), p.o().b());
            f.d();
            super.n_();
        }
    }

    public void o_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = p;
        Timber.c("DSnapItemRemoteVideoAdapter", "Leaving view for %s", aobj);
        if (!s)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = p;
            Timber.e("DSnapItemRemoteVideoAdapter", "View was entered for %s", aobj1);
            if (ReleaseManager.e())
            {
                Object aobj2[] = new Object[1];
                aobj2[0] = p;
                throw new IllegalStateException(String.format("View for %s not entered.", aobj2));
            }
        } else
        {
            e.b(false);
            d.hide();
            h.a(p.e(), p.d(), p.o().b(), e.b());
            if (o != null)
            {
                int i1;
                for (Iterator iterator = j.keySet().iterator(); iterator.hasNext(); o.getEventEmitter().off((String)j.get(Integer.valueOf(i1)), i1))
                {
                    i1 = ((Integer)iterator.next()).intValue();
                }

                j.clear();
                o.setMediaController(null);
                o = null;
            }
            m.removeAllViews();
            f.e();
            if (r)
            {
                h.a(t, true, false);
                h.b(t, true, false);
            }
            t = null;
            a(false);
            super.o_();
        }
    }
}
