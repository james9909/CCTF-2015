// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller;

import android.content.res.Resources;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.screenshotdetection.ScreenshotDetectionSession;
import com.snapchat.android.screenshotdetection.ScreenshotDetector;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.DisplayInAppNotificationEvent;
import com.snapchat.android.util.system.Clock;
import com.squareup.otto.Bus;

public class DiscoverScreenshotDetectionSession extends ScreenshotDetectionSession
{

    private final DiscoverAnalytics b;
    private final Bus c;
    private final DiscoverViewTrackingManager d;
    private final Resources e;
    private final ChannelPage f;
    private final DSnapPage g;
    private final DSnapPanel h;

    protected DiscoverScreenshotDetectionSession(DiscoverAnalytics discoveranalytics, ScreenshotDetector screenshotdetector, DiscoverViewTrackingManager discoverviewtrackingmanager, Clock clock, Bus bus, ChannelPage channelpage, DSnapPage dsnappage, 
            DSnapPanel dsnappanel, Resources resources)
    {
        super("", clock.a(), -1L);
        d = discoverviewtrackingmanager;
        b = discoveranalytics;
        c = bus;
        f = channelpage;
        h = dsnappanel;
        g = dsnappage;
        screenshotdetector.a(this);
        e = resources;
    }

    public DiscoverScreenshotDetectionSession(ChannelPage channelpage, DSnapPage dsnappage, DSnapPanel dsnappanel, Resources resources)
    {
        this(new DiscoverAnalytics(), ScreenshotDetector.a(), DiscoverViewTrackingManager.a(), new Clock(), BusProvider.a(), channelpage, dsnappage, dsnappanel, resources);
    }

    public String a()
    {
        return null;
    }

    public void a(long l)
    {
        if (f == null)
        {
            Timber.d("DiscoverScreenshotDetectionSession", "Could not report screenshot, context is not valid", new Object[0]);
            return;
        }
        String s;
        if (g == null || h == null)
        {
            b.b(f.a(), f.f(), f.e(), d.f(f.f()));
            s = "splash";
        } else
        if (g.o() == h)
        {
            b.a(f.a(), g.d(), g.a(), g.s(), g.i().intValue(), h.f(), g.c().intValue(), d.f(g.d()), g.j(), d.g(g.d()));
            s = "longform";
        } else
        {
            b.a(f.a(), g.d(), g.a(), g.s(), g.i().intValue(), g.c().intValue(), d.f(g.d()), g.j(), d.g(g.d()));
            s = "top snap";
        }
        if (g != null && g.t())
        {
            DisplayInAppNotificationEvent displayinappnotificationevent = new DisplayInAppNotificationEvent(0, null, e.getString(0x7f0c00d4), f.g(), f.h(), true);
            c.a(displayinappnotificationevent);
        }
        Timber.c("DiscoverScreenshotDetectionSession", "Detected %s screenshot!", new Object[] {
            s
        });
    }
}
