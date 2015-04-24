// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;

import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.controller.countdown.SnapCountdownController;
import com.snapchat.android.controller.countdown.SnapCountdownListener;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.User;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.screenshotdetection.SnapScreenshotWatcher;
import com.snapchat.android.ui.SnapTimerView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.TimerFinishEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.snapview:
//            SnapViewSessionStopReason, SnapViewSessionListener

public class SnapViewSession
{

    protected final com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener a;
    protected final SnapCountdownListener b;
    private final ViewGroup c;
    private final User d;
    private final ChronologicalSnapProvider e;
    private final ReceivedSnap f;
    private final SnapViewEventAnalytics g;
    private final SnapTimerView h;
    private final Bus i;
    private final SnapMediaRenderer j;
    private final SnapScreenshotWatcher k;
    private final SnapCountdownController l;
    private final Object m;
    private final boolean n;
    private final boolean o;
    private SnapViewSessionListener p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private int w;

    public SnapViewSession(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, ViewGroup viewgroup, boolean flag, SnapTimerView snaptimerview, boolean flag1, SnapMediaRenderer snapmediarenderer)
    {
        this(receivedsnap, User.c(), chronologicalsnapprovider, viewgroup, SnapCountdownController.a(), flag, SnapViewEventAnalytics.a(), BusProvider.a(), SnapScreenshotWatcher.a(), snaptimerview, flag1, snapmediarenderer);
    }

    SnapViewSession(ReceivedSnap receivedsnap, User user, ChronologicalSnapProvider chronologicalsnapprovider, ViewGroup viewgroup, SnapCountdownController snapcountdowncontroller, boolean flag, SnapViewEventAnalytics snapvieweventanalytics, 
            Bus bus, SnapScreenshotWatcher snapscreenshotwatcher, SnapTimerView snaptimerview, boolean flag1, SnapMediaRenderer snapmediarenderer)
    {
        m = new Object();
        q = false;
        r = false;
        s = false;
        t = false;
        u = 0;
        v = 0;
        w = 0;
        a = new com.snapchat.android.rendering.SnapMediaRenderer.SnapRendererListener() {

            final SnapViewSession a;

            public void a()
            {
                boolean flag2 = true;
                Object obj = SnapViewSession.a(a);
                obj;
                JVM INSTR monitorenter ;
                if (!a.f()) goto _L2; else goto _L1
_L1:
                SnapViewSession.c(a).setVisibility(0);
                SnapViewSession.d(a).c();
                SnapViewSession.e(a).c(true);
                SnapViewSession.f(a).a(a);
                SnapViewSession.g(a).a(SnapViewSession.e(a).l(), SnapViewSession.e(a).d());
                if (!SnapViewSession.h(a).c()) goto _L4; else goto _L3
_L3:
                SnapViewEventAnalytics snapvieweventanalytics2 = SnapViewSession.h(a);
                if (!SnapViewSession.e(a).am()) goto _L6; else goto _L5
_L5:
                com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType snapvieweventsnaptype1 = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.VIDEO;
_L9:
                snapvieweventanalytics2.a(snapvieweventsnaptype1);
_L12:
                Exception exception;
                SnapViewEventAnalytics snapvieweventanalytics1;
                com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType snapvieweventsnaptype;
                com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType snapvieweventsourcetype;
                boolean flag3;
                if (!SnapViewSession.i(a) && !SnapViewSession.e(a).w())
                {
                    flag3 = flag2;
                } else
                {
                    flag3 = false;
                }
                if (!flag3)
                {
                    break MISSING_BLOCK_LABEL_368;
                }
                if (SnapViewSession.e(a).h())
                {
                    break MISSING_BLOCK_LABEL_368;
                }
_L15:
                if (!flag3) goto _L2; else goto _L7
_L7:
                if (SnapViewSession.k(a).a(SnapViewSession.e(a), SnapViewSession.j(a)))
                {
                    AnalyticsEvents.a(SnapViewSession.e(a), SnapViewSession.l(a));
                }
                if (!flag2) goto _L2; else goto _L8
_L8:
                SnapViewSession.a(a, SnapViewSession.m(a), SnapViewSession.n(a), SnapViewSession.j(a));
_L2:
                obj;
                JVM INSTR monitorexit ;
                return;
_L6:
                snapvieweventsnaptype1 = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.IMAGE;
                  goto _L9
_L4:
                snapvieweventanalytics1 = SnapViewSession.h(a);
                if (!SnapViewSession.e(a).am()) goto _L11; else goto _L10
_L10:
                snapvieweventsnaptype = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.VIDEO;
_L13:
                if (!a.d())
                {
                    break MISSING_BLOCK_LABEL_354;
                }
                snapvieweventsourcetype = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType.STORY;
_L14:
                snapvieweventanalytics1.a(snapvieweventsnaptype, snapvieweventsourcetype);
                  goto _L12
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
_L11:
                snapvieweventsnaptype = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.IMAGE;
                  goto _L13
                snapvieweventsourcetype = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType.FEED;
                  goto _L14
                flag2 = false;
                  goto _L15
            }

            public void a(int i1, int j1, int k1)
            {
                synchronized (SnapViewSession.a(a))
                {
                    if (a.f())
                    {
                        SnapViewSession.a(a, i1);
                        SnapViewSession.b(a, j1);
                        SnapViewSession.c(a, k1);
                        SnapViewSession.a(a, true);
                        if (SnapViewSession.b(a))
                        {
                            a.g();
                        }
                    }
                }
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            public void a(com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode errorcode)
            {
                if (errorcode == com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode.a)
                {
                    SnapViewSession.o(a).a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0036));
                    Object aobj[] = new Object[2];
                    aobj[0] = SnapViewSession.e(a).l();
                    aobj[1] = SnapViewSession.e(a).d();
                    Timber.b("SnapViewSession", "SNAP-LOG: MARKING snap from %s as viewed (EXTERNAL STORAGE NO_BITMAP_AVAILABLE) (%s)", aobj);
                    SnapViewSession.a(a, SnapViewSessionStopReason.c);
                } else
                if (errorcode == com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode.b)
                {
                    SnapViewSession.a(a, SnapViewSessionStopReason.b);
                    return;
                }
            }

            public void b()
            {
                SnapViewSession.a(a, SnapViewSessionStopReason.d);
            }

            
            {
                a = SnapViewSession.this;
                super();
            }
        };
        b = new SnapCountdownListener() {

            final SnapViewSession a;

            public void a(ReceivedSnap receivedsnap1)
            {
                SnapViewSession.o(a).a(new TimerFinishEvent(SnapViewSession.e(a) instanceof StorySnap));
                SnapViewSession.a(a, SnapViewSessionStopReason.d);
            }

            public void a(ReceivedSnap receivedsnap1, long l1)
            {
                SnapViewSession.a(a, l1);
            }

            public void b(ReceivedSnap receivedsnap1)
            {
            }

            public void c(ReceivedSnap receivedsnap1)
            {
            }

            
            {
                a = SnapViewSession.this;
                super();
            }
        };
        f = receivedsnap;
        d = user;
        l = snapcountdowncontroller;
        e = chronologicalsnapprovider;
        c = viewgroup;
        o = flag;
        k = snapscreenshotwatcher;
        g = snapvieweventanalytics;
        i = bus;
        n = flag1;
        h = snaptimerview;
        j = snapmediarenderer;
    }

    static int a(SnapViewSession snapviewsession, int i1)
    {
        snapviewsession.u = i1;
        return i1;
    }

    static Object a(SnapViewSession snapviewsession)
    {
        return snapviewsession.m;
    }

    private void a(float f1, float f2, int i1)
    {
        float f3 = c.getWidth();
        float f4 = Math.max(((float)c.getHeight() - f3 / (f1 / f2)) / 2.0F, 0.0F) + ViewUtils.a(10F, c.getContext());
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)h.getLayoutParams();
        layoutparams.topMargin = (int)f4;
        h.setLayoutParams(layoutparams);
        int j1 = Math.min(1000 * (int)f.N(), i1);
        h.setIsStory(d());
        h.a(j1, i1);
        h.setVisibility(0);
        a(j1);
    }

    private void a(long l1)
    {
        int i1 = (int)Math.ceil((double)l1 / 1000D);
        int j1;
        if (e != null)
        {
            j1 = e.j();
        } else
        {
            j1 = 0;
        }
        h.setText(Integer.toString(j1 + i1));
    }

    static void a(SnapViewSession snapviewsession, float f1, float f2, int i1)
    {
        snapviewsession.a(f1, f2, i1);
    }

    static void a(SnapViewSession snapviewsession, long l1)
    {
        snapviewsession.a(l1);
    }

    static boolean a(SnapViewSession snapviewsession, SnapViewSessionStopReason snapviewsessionstopreason)
    {
        return snapviewsession.a(snapviewsessionstopreason);
    }

    static boolean a(SnapViewSession snapviewsession, boolean flag)
    {
        snapviewsession.s = flag;
        return flag;
    }

    private boolean a(SnapViewSessionStopReason snapviewsessionstopreason)
    {
        Object obj = m;
        obj;
        JVM INSTR monitorenter ;
        if (!f()) goto _L2; else goto _L1
_L1:
        q = false;
        static class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[SnapViewSessionStopReason.values().length];
                try
                {
                    a[SnapViewSessionStopReason.e.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[SnapViewSessionStopReason.f.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[SnapViewSessionStopReason.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[SnapViewSessionStopReason.a.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[SnapViewSessionStopReason.d.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        _cls3.a[snapviewsessionstopreason.ordinal()];
        JVM INSTR tableswitch 1 5: default 60
    //                   1 246
    //                   2 266
    //                   3 266
    //                   4 266
    //                   5 280;
           goto _L3 _L4 _L5 _L5 _L5 _L6
_L3:
        if (snapviewsessionstopreason == SnapViewSessionStopReason.f)
        {
            h.a();
        }
        j.b();
        k.c();
        f.c(false);
        l.a(f, b);
        if (!t) goto _L8; else goto _L7
_L7:
        if (!snapviewsessionstopreason.a()) goto _L10; else goto _L9
_L9:
        SnapViewEventAnalytics snapvieweventanalytics1 = g;
        if (!f.am()) goto _L12; else goto _L11
_L11:
        com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType snapvieweventsnaptype1 = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.VIDEO;
_L15:
        snapvieweventanalytics1.a(snapvieweventsnaptype1, snapviewsessionstopreason, f.l());
_L16:
        if (!d()) goto _L14; else goto _L13
_L13:
        Object aobj1[] = new Object[2];
        aobj1[0] = f;
        aobj1[1] = f.d();
        Timber.b("SnapViewSession", "SNAP-LOG: HIDING storysnap from %s (%s)", aobj1);
        StorySnap storysnap = (StorySnap)f;
        AnalyticsEvents.a(d, e instanceof RecentStoryCollection, storysnap);
_L8:
        p.a(this, snapviewsessionstopreason);
        return true;
_L4:
        l.c(f);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        l.a(f);
        continue; /* Loop/switch isn't completed */
_L6:
        l.b(f);
        continue; /* Loop/switch isn't completed */
_L12:
        snapvieweventsnaptype1 = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.IMAGE;
          goto _L15
_L10:
        SnapViewEventAnalytics snapvieweventanalytics;
        com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType snapvieweventsnaptype;
        snapvieweventanalytics = g;
        if (!f.am())
        {
            break MISSING_BLOCK_LABEL_333;
        }
        snapvieweventsnaptype = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.VIDEO;
_L17:
        snapvieweventanalytics.b(snapvieweventsnaptype);
          goto _L16
        snapvieweventsnaptype = com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSnapType.IMAGE;
          goto _L17
_L14:
        Object aobj[] = new Object[2];
        aobj[0] = f;
        aobj[1] = f.d();
        Timber.b("SnapViewSession", "SNAP-LOG: HIDING snap from %s (%s)", aobj);
          goto _L8
_L2:
        obj;
        JVM INSTR monitorexit ;
        return false;
        if (true) goto _L3; else goto _L18
_L18:
    }

    static int b(SnapViewSession snapviewsession, int i1)
    {
        snapviewsession.v = i1;
        return i1;
    }

    static boolean b(SnapViewSession snapviewsession)
    {
        return snapviewsession.r;
    }

    static int c(SnapViewSession snapviewsession, int i1)
    {
        snapviewsession.w = i1;
        return i1;
    }

    static ViewGroup c(SnapViewSession snapviewsession)
    {
        return snapviewsession.c;
    }

    static SnapMediaRenderer d(SnapViewSession snapviewsession)
    {
        return snapviewsession.j;
    }

    static ReceivedSnap e(SnapViewSession snapviewsession)
    {
        return snapviewsession.f;
    }

    static SnapViewSessionListener f(SnapViewSession snapviewsession)
    {
        return snapviewsession.p;
    }

    static SnapScreenshotWatcher g(SnapViewSession snapviewsession)
    {
        return snapviewsession.k;
    }

    static SnapViewEventAnalytics h(SnapViewSession snapviewsession)
    {
        return snapviewsession.g;
    }

    static boolean i(SnapViewSession snapviewsession)
    {
        return snapviewsession.o;
    }

    static int j(SnapViewSession snapviewsession)
    {
        return snapviewsession.u;
    }

    static SnapCountdownController k(SnapViewSession snapviewsession)
    {
        return snapviewsession.l;
    }

    static User l(SnapViewSession snapviewsession)
    {
        return snapviewsession.d;
    }

    static int m(SnapViewSession snapviewsession)
    {
        return snapviewsession.v;
    }

    static int n(SnapViewSession snapviewsession)
    {
        return snapviewsession.w;
    }

    static Bus o(SnapViewSession snapviewsession)
    {
        return snapviewsession.i;
    }

    public ReceivedSnap a()
    {
        return f;
    }

    public void a(SnapViewSessionListener snapviewsessionlistener)
    {
label0:
        {
            Object aobj[] = new Object[3];
            String s1;
            if (f instanceof StorySnap)
            {
                s1 = "story ";
            } else
            {
                s1 = "";
            }
            aobj[0] = s1;
            aobj[1] = f.l();
            aobj[2] = f.d();
            Timber.b("SnapViewSession", "SNAP-LOG: VIEWING %ssnap from %s (%s)", aobj);
            synchronized (m)
            {
                p = snapviewsessionlistener;
                q = true;
                l.a(f, n, b);
                if (!(f instanceof StorySnap) || !((StorySnap)f).aH())
                {
                    break label0;
                }
                a(SnapViewSessionStopReason.a);
            }
            return;
        }
        j.a(f, o, a);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ChronologicalSnapProvider b()
    {
        return e;
    }

    public SnapMediaRenderer c()
    {
        return j;
    }

    public boolean d()
    {
        return e != null && (e instanceof StoryCollection) || (f instanceof StorySnap);
    }

    public boolean e()
    {
        return o;
    }

    public boolean f()
    {
        boolean flag;
        synchronized (m)
        {
            flag = q;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void g()
    {
        Object obj = m;
        obj;
        JVM INSTR monitorenter ;
        if (!s)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        t = true;
        j.a();
_L2:
        return;
        r = true;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void h()
    {
        a(SnapViewSessionStopReason.e);
    }

    public void i()
    {
        a(SnapViewSessionStopReason.f);
    }
}
