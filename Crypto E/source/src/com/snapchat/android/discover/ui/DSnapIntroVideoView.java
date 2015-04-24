// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;
import com.snapchat.android.discover.ui.media.VideoViewController;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SoftNavigationBarEvent;
import com.snapchat.android.util.system.Clock;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView

public class DSnapIntroVideoView extends DSnapView
{

    protected DSnapMediaListener a = new DSnapMediaListener() {

        final DSnapIntroVideoView a;

        public void a()
        {
            if (DSnapIntroVideoView.a(a) != null)
            {
                DSnapIntroVideoView.a(a, com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.b);
                DSnapIntroVideoView.a(a).a();
            }
        }

        public void a(String s)
        {
            Object aobj[] = new Object[2];
            aobj[0] = a.e;
            aobj[1] = s;
            Timber.d("DSnapIntroVideoView", "Skipping intro video for %b because the media failed to load (%s).", aobj);
            a.d.b(a.e.a(), a.e.e(), s);
            a();
        }

        public void b()
        {
            a.a(a.e, null, null);
            DSnapIntroVideoView.b(a).setVisibility(8);
        }

            
            {
                a = DSnapIntroVideoView.this;
                super();
            }
    };
    private final VideoViewController j;
    private final DiscoverAnalytics k;
    private final Bus l;
    private final DiscoverViewTrackingManager m;
    private DSnapView.OnAutoAdvanceListener n;
    private boolean o;
    private com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus p;
    private View q;
    private boolean r;

    public DSnapIntroVideoView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, new VideoViewController(false), new DiscoverAnalytics(), BusProvider.a(), DiscoverViewTrackingManager.a());
    }

    public DSnapIntroVideoView(Context context, AttributeSet attributeset, VideoViewController videoviewcontroller, DiscoverAnalytics discoveranalytics, Bus bus, DiscoverViewTrackingManager discoverviewtrackingmanager)
    {
        super(context, attributeset);
        o = false;
        r = false;
        j = videoviewcontroller;
        k = discoveranalytics;
        p = com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus.a;
        l = bus;
        m = discoverviewtrackingmanager;
    }

    static com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus a(DSnapIntroVideoView dsnapintrovideoview, com.snapchat.android.discover.analytics.DiscoverAnalytics.ViewStatus viewstatus)
    {
        dsnapintrovideoview.p = viewstatus;
        return viewstatus;
    }

    static DSnapView.OnAutoAdvanceListener a(DSnapIntroVideoView dsnapintrovideoview)
    {
        return dsnapintrovideoview.n;
    }

    static View b(DSnapIntroVideoView dsnapintrovideoview)
    {
        return dsnapintrovideoview.q;
    }

    public void a()
    {
        if (!r)
        {
            return;
        }
        if (h != 0L)
        {
            if (e != null)
            {
                k.a(g.a() - h, p, e.e(), e.f(), e.a(), m.f(e.f()));
            }
            h = 0L;
        }
        j.b(false);
        k();
        setCanAdvance(true);
        r = false;
    }

    public void a(ChannelPage channelpage)
    {
        e = channelpage;
        Object aobj[] = new Object[1];
        aobj[0] = e.o();
        Timber.c("DSnapIntroVideoView", "Initializing for intro video URI: %s", aobj);
        TextureVideoView texturevideoview = (TextureVideoView)findViewById(0x7f0a01a1);
        q = findViewById(0x7f0a01a2);
        q.setBackgroundColor(e.g());
        j.a(texturevideoview, e.o());
        j.a(a);
    }

    public void b()
    {
        if (r)
        {
            return;
        } else
        {
            r = true;
            l.a(new SoftNavigationBarEvent(false));
            h = g.a();
            k.a(e.e(), e.f(), e.a());
            j.a(false);
            return;
        }
    }

    public boolean c()
    {
        return o;
    }

    public boolean canScrollVertically(int i)
    {
        return false;
    }

    public void onFinishInflate()
    {
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }

    public void setAutoAdvanceListener(DSnapView.OnAutoAdvanceListener onautoadvancelistener)
    {
        n = onautoadvancelistener;
    }

    public void setCanAdvance(boolean flag)
    {
        o = flag;
    }
}
