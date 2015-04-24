// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.controller.DiscoverScreenshotDetectionSession;
import com.snapchat.android.discover.controller.SeenDiscoverDSnapOnboardingController;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;
import com.snapchat.android.discover.util.eventbus.OnShareDSnapEvent;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.animation.AnimatorEndListener;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.DisplayInAppNotificationEvent;
import com.snapchat.android.util.eventbus.SoftNavigationBarEvent;
import com.snapchat.android.util.system.Clock;
import com.squareup.otto.Bus;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapterFactory, DSnapLoadingStatePresenter, DSnapItemViewAdapter

public class DSnapView extends FrameLayout
    implements com.snapchat.android.ui.VerticalSwipeLayout.OnScrolledListener
{
    public static interface OnAutoAdvanceListener
    {

        public abstract void a();
    }


    private OnAutoAdvanceListener A;
    private DSnapLoadingStatePresenter.OnTapToRetryListener B = new DSnapLoadingStatePresenter.OnTapToRetryListener() {

        final DSnapView a;

        public void a(MediaState mediastate)
        {
            DSnapView.a(a).c();
        }

            
            {
                a = DSnapView.this;
                super();
            }
    };
    private final DSnapItemViewAdapterFactory a;
    protected final Bus b;
    protected final DiscoverAnalytics c;
    protected final DiscoverPerformanceAnalytics d;
    protected ChannelPage e;
    protected DiscoverScreenshotDetectionSession f;
    protected final Clock g;
    protected long h;
    protected final DSnapMediaListener i;
    private final DiscoverMediaManager j;
    private final SeenDiscoverDSnapOnboardingController k;
    private final Map l;
    private final DSnapLoadingStatePresenter m;
    private final DiscoverViewTrackingManager n;
    private final ReleaseManager o;
    private final GestureDetector p;
    private DSnapPage q;
    private boolean r;
    private VerticalSwipeLayout s;
    private LinearLayout t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private MediaState y;
    private boolean z;

    public DSnapView(Context context, AttributeSet attributeset)
    {
        this(context, new Clock(), new DSnapItemViewAdapterFactory(), BusProvider.a(), DiscoverMediaManager.a(), new DSnapLoadingStatePresenter(context), new DiscoverAnalytics(), SeenDiscoverDSnapOnboardingController.a(), DiscoverPerformanceAnalytics.a(), DiscoverViewTrackingManager.a(), null, ReleaseManager.a());
    }

    DSnapView(Context context, Clock clock, DSnapItemViewAdapterFactory dsnapitemviewadapterfactory, Bus bus, DiscoverMediaManager discovermediamanager, DSnapLoadingStatePresenter dsnaploadingstatepresenter, DiscoverAnalytics discoveranalytics, 
            SeenDiscoverDSnapOnboardingController seendiscoverdsnaponboardingcontroller, DiscoverPerformanceAnalytics discoverperformanceanalytics, DiscoverViewTrackingManager discoverviewtrackingmanager, VerticalSwipeLayout verticalswipelayout, ReleaseManager releasemanager)
    {
        super(context, null);
        r = false;
        u = false;
        v = false;
        w = false;
        x = false;
        y = MediaState.a;
        h = 0L;
        z = false;
        i = new DSnapMediaListener() {

            final DSnapView a;

            public void a()
            {
                if (DSnapView.d(a) != null && DSnapView.b(a).q())
                {
                    DSnapView.d(a).a();
                }
            }

            public void a(String s1)
            {
                Object aobj[] = new Object[2];
                aobj[0] = DSnapView.b(a);
                aobj[1] = s1;
                Timber.d("DSnapView", "Auto-advancing DSnap %s since there was an error playing it (%s)", aobj);
                a.d.c(DSnapView.b(a).e(), DSnapView.b(a).d(), DSnapView.b(a).a(), DSnapView.b(a).g(), s1);
                if (DSnapView.d(a) != null)
                {
                    DSnapView.d(a).a();
                }
            }

            public void b()
            {
                if (!DSnapView.e(a).a())
                {
                    DSnapView.f(a).b();
                    DSnapView.g(a).setScrollable(true);
                }
            }

            
            {
                a = DSnapView.this;
                super();
            }
        };
        g = clock;
        a = dsnapitemviewadapterfactory;
        b = bus;
        j = discovermediamanager;
        k = seendiscoverdsnaponboardingcontroller;
        l = new HashMap();
        A = null;
        m = dsnaploadingstatepresenter;
        c = discoveranalytics;
        d = discoverperformanceanalytics;
        n = discoverviewtrackingmanager;
        s = verticalswipelayout;
        o = releasemanager;
        p = new GestureDetector(context, new android.view.GestureDetector.SimpleOnGestureListener(this) {

            final DSnapView a;
            final DSnapView b;

            public void onLongPress(MotionEvent motionevent)
            {
                if (DSnapView.b(b) != null && DSnapView.c(b).i())
                {
                    b.b.a(new OnShareDSnapEvent(a));
                }
            }

            
            {
                b = DSnapView.this;
                a = dsnapview1;
                super();
            }
        });
    }

    static DiscoverMediaManager a(DSnapView dsnapview)
    {
        return dsnapview.j;
    }

    static DSnapPage b(DSnapView dsnapview)
    {
        return dsnapview.q;
    }

    private void b(DSnapPage dsnappage, DSnapPanel dsnappanel, com.snapchat.android.discover.model.DSnapPage.Form form)
    {
        if (dsnappanel != null && y == MediaState.f)
        {
            DSnapItemViewAdapter dsnapitemviewadapter = a(form.b());
            if (dsnapitemviewadapter == null)
            {
                dsnapitemviewadapter = a(dsnappage, dsnappanel, form);
            }
            if (dsnapitemviewadapter != null)
            {
                dsnapitemviewadapter.a(dsnappage, dsnappanel);
                return;
            }
        }
    }

    private boolean b(List list, DSnapPage dsnappage, int i1)
    {
        if (i1 < -1 + list.size())
        {
            return ((DSnapPage)list.get(i1 + 1)).r();
        } else
        {
            return false;
        }
    }

    private MediaState c(List list, DSnapPage dsnappage, int i1)
    {
        if (b(list, dsnappage, i1))
        {
            DSnapPage dsnappage1 = (DSnapPage)list.get(i1 + 1);
            if (dsnappage1.k().a())
            {
                return dsnappage1.k();
            }
        }
        return dsnappage.k();
    }

    static ReleaseManager c(DSnapView dsnapview)
    {
        return dsnapview.o;
    }

    static OnAutoAdvanceListener d(DSnapView dsnapview)
    {
        return dsnapview.A;
    }

    private void d(int i1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = q;
        aobj[1] = Integer.valueOf(i1);
        Timber.c("DSnapView", "Enter %s panel %d", aobj);
        boolean flag;
        if (com.snapchat.android.discover.model.DSnapPage.Form.b.b() == i1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag && q.o().f() == com.snapchat.android.discover.model.DSnapPanel.MediaType.d)
        {
            b.a(new SoftNavigationBarEvent(true));
        } else
        {
            b.a(new SoftNavigationBarEvent(false));
        }
        if (i())
        {
            t.setVisibility(0);
            t.animate().alpha(1.0F).setDuration(300L);
        }
        if (!j())
        {
            m();
            if (y != MediaState.f)
            {
                Object aobj1[] = new Object[3];
                aobj1[0] = q;
                aobj1[1] = Integer.valueOf(i1);
                aobj1[2] = y.name();
                Timber.c("DSnapView", "Cannot enter %s panel %d yet, loading state is %s", aobj1);
                return;
            }
            if (!w)
            {
                DSnapItemViewAdapter dsnapitemviewadapter = a(i1);
                if (dsnapitemviewadapter != null)
                {
                    dsnapitemviewadapter.n_();
                    if (q.r())
                    {
                        c.a(q.a(), q.d(), q.e(), q.j());
                    }
                }
                h = g.b();
                w = true;
                ChannelPage channelpage = e;
                DSnapPage dsnappage = q;
                DSnapPanel dsnappanel;
                if (flag)
                {
                    dsnappanel = q.o();
                } else
                {
                    dsnappanel = q.n();
                }
                a(channelpage, dsnappage, dsnappanel);
                if (flag)
                {
                    z = true;
                    return;
                }
            }
        }
    }

    static MediaState e(DSnapView dsnapview)
    {
        return dsnapview.y;
    }

    private void e(int i1)
    {
        DSnapItemViewAdapter dsnapitemviewadapter;
        Object aobj[] = new Object[2];
        aobj[0] = q;
        aobj[1] = Integer.valueOf(i1);
        Timber.c("DSnapView", "Leaving %s panel %d", aobj);
        s.setScrollable(false);
        dsnapitemviewadapter = a(i1);
        if (dsnapitemviewadapter == null) goto _L2; else goto _L1
_L1:
        if (!w || h == 0L) goto _L4; else goto _L3
_L3:
        long l1 = g.b() - h;
        if (!q.r()) goto _L6; else goto _L5
_L5:
        c.a(l1, dsnapitemviewadapter.a(l1), q.s(), q.d(), q.e(), q.c().intValue(), n.f(q.d()), q.j(), n.g(q.d()));
_L4:
        dsnapitemviewadapter.o_();
        k();
_L2:
        h = 0L;
        w = false;
        return;
_L6:
        if (com.snapchat.android.discover.model.DSnapPage.Form.a.b() == i1)
        {
            c.a(l1, dsnapitemviewadapter.a(l1), q.a(), q.d(), q.e(), q.c().intValue(), n.f(q.d()));
        } else
        if (com.snapchat.android.discover.model.DSnapPage.Form.b.b() == i1)
        {
            c.a(l1, q.a(), q.d(), q.e(), dsnapitemviewadapter.e(), q.c().intValue(), n.f(q.d()));
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    static DSnapLoadingStatePresenter f(DSnapView dsnapview)
    {
        return dsnapview.m;
    }

    static VerticalSwipeLayout g(DSnapView dsnapview)
    {
        return dsnapview.s;
    }

    private void l()
    {
        s = (VerticalSwipeLayout)findViewById(0x7f0a01a8);
        s.setOnScrolledListener(this);
        s.setScrollable(false);
        m.a(this);
        m.a(B);
        t = (LinearLayout)findViewById(0x7f0a01ac);
    }

    private void m()
    {
        if (x) goto _L2; else goto _L1
_L1:
        if (!y.a()) goto _L4; else goto _L3
_L3:
        d.a(q.a(), q.e(), q.d(), q.a(), q.g(), r);
        x = true;
_L6:
        return;
_L4:
        if (!w)
        {
            d.a(q.a(), q.e(), q.d(), q.a(), q.g(), y, r);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (!y.a() && !w)
        {
            d.a(q.a(), false, y);
            x = false;
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected DSnapItemViewAdapter a(int i1)
    {
        return (DSnapItemViewAdapter)l.get(Integer.valueOf(i1));
    }

    protected DSnapItemViewAdapter a(DSnapPage dsnappage, DSnapPanel dsnappanel, com.snapchat.android.discover.model.DSnapPage.Form form)
    {
        DSnapItemViewAdapter dsnapitemviewadapter = a.a(getContext(), this, dsnappage, dsnappanel);
        if (dsnapitemviewadapter != null)
        {
            dsnapitemviewadapter.a(i);
            l.put(Integer.valueOf(form.b()), dsnapitemviewadapter);
            if (s.getChildCount() > form.b())
            {
                s.removeViewAt(form.b());
            }
            s.addView(dsnapitemviewadapter.d(), form.b());
        }
        return dsnapitemviewadapter;
    }

    public void a()
    {
        if (!v)
        {
            return;
        }
        int i1 = getCurrentPanel();
        Object aobj[] = new Object[2];
        aobj[0] = q;
        aobj[1] = Integer.valueOf(i1);
        Timber.c("DSnapView", "Exit page %s with current panel %d", aobj);
        if (!w && y.a())
        {
            d.a(q.a(), true, y);
        }
        e(i1);
        v = false;
    }

    public void a(int i1, int j1, int k1)
    {
        if (v)
        {
            if (i1 == 2 && j1 != k1)
            {
                e(j1);
                d(k1);
            } else
            if (i1 == 1)
            {
                DSnapItemViewAdapter dsnapitemviewadapter = a(j1);
                if (dsnapitemviewadapter != null)
                {
                    dsnapitemviewadapter.f();
                    return;
                }
            }
        }
    }

    protected void a(ChannelPage channelpage, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        k();
        f = new DiscoverScreenshotDetectionSession(channelpage, dsnappage, dsnappanel, getResources());
    }

    public void a(List list, DSnapPage dsnappage, int i1)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        MediaState mediastate;
        q = dsnappage;
        r = b(list, dsnappage, i1);
        m.a(q.h());
        mediastate = c(list, dsnappage, i1);
        Object aobj[] = new Object[3];
        aobj[0] = q.k();
        aobj[1] = mediastate;
        aobj[2] = q;
        Timber.c("DSnapView", "currentLoadingState: %s, adjusted: %s for %s", aobj);
        DSnapPanel dsnappanel;
        DSnapPanel dsnappanel1;
        if (y == MediaState.f || mediastate != MediaState.f)
        {
            flag = false;
        }
        y = mediastate;
        dsnappanel = q.n();
        b(q, dsnappanel, com.snapchat.android.discover.model.DSnapPage.Form.a);
        dsnappanel1 = q.o();
        b(q, dsnappanel1, com.snapchat.android.discover.model.DSnapPage.Form.b);
        if (v)
        {
            m.a(y);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        if (v)
        {
            d(getCurrentPanel());
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        if (v)
        {
            return;
        } else
        {
            v = true;
            j.a(e, q);
            int i1 = getCurrentPanel();
            Object aobj[] = new Object[2];
            aobj[0] = q;
            aobj[1] = Integer.valueOf(i1);
            Timber.c("DSnapView", "Enter page %s with initial panel %d", aobj);
            d(i1);
            return;
        }
    }

    public void b(int i1)
    {
        s.a(i1);
    }

    public void b(ChannelPage channelpage)
    {
        e = channelpage;
        m.a(e.r(), e.u());
    }

    public void c(int i1)
    {
    }

    public boolean c()
    {
        return q != null && (y == MediaState.f || w) && !j();
    }

    public boolean canScrollVertically(int i1)
    {
        if (s.getChildCount() > 0)
        {
            return s.canScrollVertically(i1);
        } else
        {
            return super.canScrollVertically(i1);
        }
    }

    public void d()
    {
        if (q != null)
        {
            if (!q.t())
            {
                Object aobj[] = new Object[1];
                aobj[0] = e.a();
                String s1 = LocalizationUtils.a(0x7f0c00d5, aobj);
                b.a(new DisplayInAppNotificationEvent(0, null, s1, e.g(), e.h(), true));
                return;
            }
            DSnapItemViewAdapter dsnapitemviewadapter = a(getCurrentPanel());
            if (dsnapitemviewadapter != null)
            {
                dsnapitemviewadapter.a(e.a(), q, getRootView());
                return;
            }
        }
    }

    public boolean e()
    {
        return z;
    }

    public void f()
    {
        m.a();
        for (Iterator iterator = l.values().iterator(); iterator.hasNext(); ((DSnapItemViewAdapter)iterator.next()).c()) { }
    }

    public boolean g()
    {
        DSnapItemViewAdapter dsnapitemviewadapter;
        if (s != null && !s.c())
        {
            if ((dsnapitemviewadapter = a(getCurrentPanel())) != null)
            {
                return dsnapitemviewadapter.g();
            }
        }
        return false;
    }

    public int getCurrentPanel()
    {
        if (s != null)
        {
            return s.getCurrentPanel();
        } else
        {
            return 0;
        }
    }

    public DSnapPage getDSnapPage()
    {
        return q;
    }

    public int getPublisherPrimaryColor()
    {
        if (e != null)
        {
            return e.g();
        } else
        {
            return 0xff000000;
        }
    }

    public int getPublisherSecondaryColor()
    {
        if (e != null)
        {
            return e.h();
        } else
        {
            return -1;
        }
    }

    public void h()
    {
        t.setVisibility(8);
        u = false;
        k.d();
        d(getCurrentPanel());
    }

    public boolean i()
    {
        return u && !k.c();
    }

    public boolean j()
    {
        return i() && t.isShown();
    }

    protected void k()
    {
        if (f != null)
        {
            f.c();
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        DSnapItemViewAdapter dsnapitemviewadapter = a(getCurrentPanel());
        if (dsnapitemviewadapter != null)
        {
            dsnapitemviewadapter.a(configuration.orientation);
        }
    }

    public void onFinishInflate()
    {
        l();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (t.isShown())
        {
            return true;
        }
        if (o.i())
        {
            return p.onTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (t.isShown())
        {
            if (motionevent.getAction() == 1)
            {
                t.animate().alpha(0.0F).setDuration(300L).setListener(new AnimatorEndListener() {

                    final DSnapView a;

                    public void onAnimationEnd(Animator animator)
                    {
                        a.h();
                    }

            
            {
                a = DSnapView.this;
                super();
            }
                });
            }
            return true;
        }
        DSnapItemViewAdapter dsnapitemviewadapter = a(getCurrentPanel());
        if (dsnapitemviewadapter != null)
        {
            return dsnapitemviewadapter.d().dispatchTouchEvent(motionevent);
        }
        if (o.i())
        {
            return p.onTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    public void setAutoAdvanceListener(OnAutoAdvanceListener onautoadvancelistener)
    {
        A = onautoadvancelistener;
    }

    void setDSnapItemViewAdapterMap(HashMap hashmap)
    {
        l.clear();
        l.putAll(hashmap);
    }

    public void setShouldDisplayOnboardingView(boolean flag)
    {
        u = flag;
    }
}
