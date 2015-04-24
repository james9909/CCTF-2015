// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.api.LoadSnapMediaTask;
import com.snapchat.android.api.LoadStorySnapMediaTask;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.SponsoredStoryMetadata;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.rendering.RendererManager;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.animation.TapToSkipInstructorView;
import com.snapchat.android.ui.snapview.SnapSkipController;
import com.snapchat.android.ui.snapview.SnapViewSession;
import com.snapchat.android.ui.snapview.SnapViewSessionListener;
import com.snapchat.android.ui.snapview.SnapViewSessionListenerHandlerProxy;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.HideSnapMessageEvent;
import com.snapchat.android.util.eventbus.HideSnapStoryEvent;
import com.snapchat.android.util.eventbus.RecentStoryCollectionCompletedViewingEvent;
import com.snapchat.android.util.eventbus.SnapMessageViewingEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.ui:
//            SnapTimerView

public class SnapView extends RelativeLayout
{
    public static class SnapViewSessionFactory
    {

        public SnapViewSession a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, ViewGroup viewgroup, boolean flag, SnapTimerView snaptimerview, boolean flag1, SnapMediaRenderer snapmediarenderer)
        {
            return new SnapViewSession(receivedsnap, chronologicalsnapprovider, viewgroup, flag, snaptimerview, flag1, snapmediarenderer);
        }

        protected SnapViewSessionFactory()
        {
        }
    }


    protected static final boolean a;
    protected final SnapViewSessionListener b;
    private final Bus c;
    private final SnapViewEventAnalytics d;
    private final SnapSkipController e;
    private final ViewGroup f;
    private final SnapTimerView g;
    private final Provider h;
    private final SnapchatServiceManager i;
    private final RendererManager j;
    private final SnapViewSessionFactory k;
    private SnapViewSession l;
    private SnapViewSession m;
    private final MediaViewAnalytics n;
    private final ViewGroup o;
    private View p;
    private TapToSkipInstructorView q;
    private boolean r;
    private boolean s;
    private final LayoutInflater t;
    private final SnapViewSessionListener u;

    public SnapView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, BusProvider.a(), new SnapSkipController(context), SnapViewEventAnalytics.a(), MediaViewAnalytics.a(), User.UNSAFE_USER_PROVIDER, SnapchatServiceManager.a(), new RendererManager(context), new SnapViewSessionFactory());
    }

    SnapView(Context context, AttributeSet attributeset, Bus bus, SnapSkipController snapskipcontroller, SnapViewEventAnalytics snapvieweventanalytics, MediaViewAnalytics mediaviewanalytics, Provider provider, 
            SnapchatServiceManager snapchatservicemanager, RendererManager renderermanager, SnapViewSessionFactory snapviewsessionfactory)
    {
        super(context, attributeset);
        q = null;
        r = false;
        s = false;
        b = new SnapViewSessionListener() {

            final SnapView a;

            public void a(SnapViewSession snapviewsession)
            {
                SnapView.a(a).a(snapviewsession.c());
                if (SnapView.b(a))
                {
                    SnapView.c(a);
                }
                if (SnapView.a)
                {
                    ChronologicalSnapProvider chronologicalsnapprovider = snapviewsession.b();
                    ReceivedSnap receivedsnap;
                    if (chronologicalsnapprovider != null)
                    {
                        if ((receivedsnap = chronologicalsnapprovider.i()) != null)
                        {
                            Timber.c("SnapView", (new StringBuilder()).append("Preloading next snap: ").append(receivedsnap.d()).toString(), new Object[0]);
                            SnapView.a(a, a.c(receivedsnap, chronologicalsnapprovider, snapviewsession.e()));
                            SnapView.e(a).a(SnapView.d(a));
                            return;
                        }
                    }
                }
            }

            public void a(SnapViewSession snapviewsession, SnapViewSessionStopReason snapviewsessionstopreason)
            {
                if (SnapView.f(a) != snapviewsession) goto _L2; else goto _L1
_L1:
                if (snapviewsessionstopreason != SnapViewSessionStopReason.b) goto _L4; else goto _L3
_L3:
                SnapView.a(a, snapviewsession.a());
                a.d();
_L6:
                return;
_L4:
                if (snapviewsessionstopreason != SnapViewSessionStopReason.e)
                {
                    SnapView snapview = a;
                    boolean flag;
                    if (snapviewsessionstopreason == SnapViewSessionStopReason.f)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    snapview.a(snapviewsession, flag);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L2:
                if (SnapView.e(a) == snapviewsession)
                {
                    SnapView.e(a).h();
                    SnapView.a(a, null);
                    return;
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                a = SnapView.this;
                super();
            }
        };
        u = new SnapViewSessionListenerHandlerProxy(new Handler(Looper.getMainLooper()), b);
        c = bus;
        e = snapskipcontroller;
        d = snapvieweventanalytics;
        h = provider;
        i = snapchatservicemanager;
        j = renderermanager;
        k = snapviewsessionfactory;
        t = (LayoutInflater)context.getSystemService("layout_inflater");
        t.inflate(0x7f040093, this, true);
        f = (ViewGroup)findViewById(0x7f0a031f);
        o = (ViewGroup)findViewById(0x7f0a0320);
        g = (SnapTimerView)findViewById(0x7f0a0321);
        j.a(f);
        n = mediaviewanalytics;
    }

    static RendererManager a(SnapView snapview)
    {
        return snapview.j;
    }

    static SnapViewSession a(SnapView snapview, SnapViewSession snapviewsession)
    {
        snapview.m = snapviewsession;
        return snapviewsession;
    }

    private void a(ReceivedSnap receivedsnap)
    {
        if (receivedsnap instanceof StorySnap)
        {
            StorySnap storysnap = (StorySnap)receivedsnap;
            storysnap.o();
            if (storysnap.am())
            {
                Caches.d.d(storysnap.d());
            } else
            {
                Caches.c.d(storysnap.d());
            }
            (new LoadStorySnapMediaTask(storysnap)).executeOnExecutor(ScExecutors.b, new Void[0]);
            c.a(new HideSnapStoryEvent());
        } else
        {
            if (receivedsnap instanceof ReceivedSnap)
            {
                receivedsnap.o();
                if (receivedsnap.am())
                {
                    Caches.f.d(receivedsnap.d());
                } else
                {
                    Caches.e.d(receivedsnap.d());
                }
                (new LoadSnapMediaTask(receivedsnap)).executeOnExecutor(ScExecutors.b, new Void[0]);
                c.a(new HideSnapMessageEvent());
                return;
            }
            if (ReleaseManager.e())
            {
                throw new NullPointerException();
            }
        }
    }

    static void a(SnapView snapview, ReceivedSnap receivedsnap)
    {
        snapview.a(receivedsnap);
    }

    private void b(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag, boolean flag1)
    {
        StorySnap storysnap;
label0:
        {
            if (flag1 && !flag)
            {
                storysnap = (StorySnap)receivedsnap;
                if (!storysnap.e())
                {
                    break label0;
                }
                d.c(storysnap.f().c());
            }
            return;
        }
        if (storysnap.aJ())
        {
            d.a(storysnap.aB(), chronologicalsnapprovider instanceof RecentStoryCollection);
            return;
        }
        if (TextUtils.equals(storysnap.aB(), UserPrefs.k()))
        {
            d.d();
            return;
        } else
        {
            d.b(storysnap.aB(), chronologicalsnapprovider instanceof RecentStoryCollection);
            return;
        }
    }

    static boolean b(SnapView snapview)
    {
        return snapview.r;
    }

    static void c(SnapView snapview)
    {
        snapview.f();
    }

    static SnapViewSessionListener d(SnapView snapview)
    {
        return snapview.u;
    }

    static SnapViewSession e(SnapView snapview)
    {
        return snapview.m;
    }

    static SnapViewSession f(SnapView snapview)
    {
        return snapview.l;
    }

    private void f()
    {
        if (q != null)
        {
            q.setVisibility(0);
            q.a();
        }
    }

    private void g()
    {
        SnapViewSession snapviewsession = l;
        ChronologicalSnapProvider chronologicalsnapprovider = snapviewsession.b();
        ReceivedSnap receivedsnap = chronologicalsnapprovider.f();
        if (receivedsnap == null)
        {
            a(true);
            return;
        }
        if (receivedsnap.U())
        {
            b(receivedsnap, chronologicalsnapprovider, snapviewsession.e());
            return;
        }
        if (!receivedsnap.Z())
        {
            if (chronologicalsnapprovider instanceof StoryCollection)
            {
                (new LoadStorySnapMediaTask((StorySnap)receivedsnap)).executeOnExecutor(ScExecutors.b, new Void[0]);
            } else
            {
                (new LoadSnapMediaTask(receivedsnap)).executeOnExecutor(ScExecutors.b, new Void[0]);
            }
            a(true);
            return;
        } else
        {
            a(true);
            return;
        }
    }

    public void a()
    {
        p = t.inflate(0x7f04008e, o);
        q = (TapToSkipInstructorView)p.findViewById(0x7f0a030e);
    }

    public void a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider)
    {
        ThreadUtils.a();
        a(receivedsnap, chronologicalsnapprovider, false, false);
    }

    public void a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag)
    {
        ThreadUtils.a();
        Timber.c("SnapView", (new StringBuilder()).append("Prepare snap: ").append(receivedsnap.d()).toString(), new Object[0]);
        s = true;
        m = c(receivedsnap, chronologicalsnapprovider, flag);
        m.a(u);
    }

    public void a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag, boolean flag1)
    {
        ThreadUtils.a();
        boolean flag2 = chronologicalsnapprovider instanceof StoryCollection;
        e.a(flag2);
        r = flag1;
        s = false;
        setVisibility(0);
        if (l != null)
        {
            if (l.a() == receivedsnap)
            {
                Timber.e("SnapView", "Viewing previously viewed snap", new Object[0]);
                Timber.c("SnapView", (new StringBuilder()).append("Session active? ").append(l.f()).toString(), new Object[0]);
                Object aobj[] = new Object[3];
                aobj[0] = receivedsnap.d();
                aobj[1] = Boolean.valueOf(receivedsnap.D());
                aobj[2] = Boolean.valueOf(receivedsnap.F());
                Timber.c("SnapView", "Session already has snap %s is being viewed / is viewed? %s / %s", aobj);
            }
            l.h();
            l = null;
        }
        if (m != null)
        {
            if (m.a() == receivedsnap)
            {
                Timber.c("SnapView", (new StringBuilder()).append("Session preloaded for snap ").append(m.a().d()).toString(), new Object[0]);
                l = m;
                m = null;
            } else
            {
                Timber.c("SnapView", (new StringBuilder()).append("Session preloaded for different snap ").append(m.a().d()).toString(), new Object[0]);
                m.h();
                m = null;
            }
        }
        if (l == null)
        {
            Timber.c("SnapView", "There was no session preloaded", new Object[0]);
            l = c(receivedsnap, chronologicalsnapprovider, flag);
            l.a(u);
        }
        l.g();
        b(receivedsnap, chronologicalsnapprovider, flag, flag2);
        ViewUtils.a(this, false);
        ViewUtils.a(getContext(), this);
        if (!flag2)
        {
            NotificationTable.c(SnapchatApplication.e(), com.snapchat.android.notification.AndroidNotificationManager.Type.a.name(), receivedsnap.l());
        }
    }

    protected void a(SnapViewSession snapviewsession, boolean flag)
    {
        if (snapviewsession == null || snapviewsession.b() == null)
        {
            c.a(new SnapMessageViewingEvent(false));
            d();
            return;
        }
        ChronologicalSnapProvider chronologicalsnapprovider = snapviewsession.b();
        chronologicalsnapprovider.a(7, snapviewsession.a(), false);
        if (chronologicalsnapprovider.d())
        {
            d.b(flag);
            g();
            return;
        }
        if (chronologicalsnapprovider instanceof RecentStoryCollection)
        {
            c.a(new RecentStoryCollectionCompletedViewingEvent((StorySnap)snapviewsession.a()));
        } else
        {
            c.a(new SnapMessageViewingEvent(false));
        }
        a(true);
    }

    public void a(boolean flag)
    {
        ThreadUtils.a();
        boolean flag1;
        SnapViewEventAnalytics snapvieweventanalytics;
        boolean flag2;
        if (l != null && l.b() != null && l.b().i() != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        snapvieweventanalytics = d;
        if (!flag1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        snapvieweventanalytics.a(flag2);
        n.a(flag);
        e.c();
        s = false;
        setVisibility(8);
        f.setVisibility(8);
        g.setVisibility(8);
        j.a();
        if (l != null)
        {
            l.h();
            l = null;
            ViewUtils.a(this, true);
            i.b(SnapchatApplication.e());
        }
        if (m != null)
        {
            m.h();
            m = null;
        }
    }

    public void b(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag)
    {
        ThreadUtils.a();
        a(receivedsnap, chronologicalsnapprovider, flag, false);
    }

    public boolean b()
    {
        return l != null;
    }

    protected SnapViewSession c(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag)
    {
        boolean flag1 = chronologicalsnapprovider instanceof StoryCollection;
        boolean flag2 = chronologicalsnapprovider instanceof RecentStoryCollection;
        boolean flag3;
        if (flag1 && !flag2)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        return k.a(receivedsnap, chronologicalsnapprovider, f, flag, g, flag3, j.a(receivedsnap.am()));
    }

    public void c()
    {
        ThreadUtils.a();
        if (s && m != null)
        {
            Timber.c("SnapView", "Abort prepare of next snap.", new Object[0]);
            m.h();
            m = null;
        }
    }

    public void d()
    {
        ThreadUtils.a();
        a(false);
    }

    public void e()
    {
        if (l != null && e.a())
        {
            e.b();
            l.i();
        }
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
