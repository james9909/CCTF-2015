// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.analytics;

import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.networkmanager.NetworkStatusManager;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DiscoverPerformanceAnalytics
{

    private static final DiscoverPerformanceAnalytics a = new DiscoverPerformanceAnalytics();
    private final com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory b;
    private final NetworkStatusManager c;
    private final DiscoverMediaStateTracker d;
    private final ConcurrentHashMap e;

    private DiscoverPerformanceAnalytics()
    {
        this(new com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory(), NetworkStatusManager.a(), DiscoverMediaStateTracker.a());
    }

    DiscoverPerformanceAnalytics(com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory easymetricfactory, NetworkStatusManager networkstatusmanager, DiscoverMediaStateTracker discovermediastatetracker)
    {
        b = easymetricfactory;
        c = networkstatusmanager;
        d = discovermediastatetracker;
        e = new ConcurrentHashMap();
    }

    public static DiscoverPerformanceAnalytics a()
    {
        return a;
    }

    private void a(String s, String s1, EasyMetric easymetric)
    {
        ConcurrentHashMap concurrenthashmap = e;
        concurrenthashmap;
        JVM INSTR monitorenter ;
        Object obj = (Map)e.get(s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        obj = new HashMap();
        ((Map) (obj)).put(s1, easymetric);
        e.put(s, obj);
        concurrenthashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        concurrenthashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private EasyMetric b(String s, String s1)
    {
        ConcurrentHashMap concurrenthashmap = e;
        concurrenthashmap;
        JVM INSTR monitorenter ;
        Map map = (Map)e.get(s);
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        EasyMetric easymetric = (EasyMetric)map.remove(s1);
        concurrenthashmap;
        JVM INSTR monitorexit ;
        return easymetric;
        concurrenthashmap;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        concurrenthashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean c(String s, String s1)
    {
        Map map = (Map)e.get(s);
        if (map == null)
        {
            return false;
        } else
        {
            return map.containsKey(s1);
        }
    }

    public void a(ChannelPage channelpage)
    {
        String s = channelpage.a();
        EasyMetric easymetric = b.a("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME");
        if (d.a(channelpage))
        {
            easymetric.a("publisher_name", channelpage.a()).a("intro_video_url", channelpage.e()).a("time", Integer.valueOf(0)).a("reachability", c.g()).a("success", Boolean.valueOf(d.b(channelpage))).a(false);
            return;
        }
        synchronized (e)
        {
            if (!c("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME", s))
            {
                easymetric.a();
                a("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME", s, easymetric);
            }
        }
        return;
        exception;
        concurrenthashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s)
    {
        b("DISCOVER_CHUNK_DOWNLOAD_TIME", s);
    }

    public void a(String s, MediaState mediastate)
    {
        b.a("DISCOVER_INTRO_MEDIA_ERROR").a("publisher_name", s).a("type", mediastate.toString().toLowerCase(Locale.ENGLISH)).a("reachability", c.g()).a(false);
    }

    public void a(String s, String s1)
    {
        b("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", s);
    }

    public void a(String s, String s1, MediaState mediastate, boolean flag, long l, ChannelPage channelpage)
    {
        EasyMetric easymetric = b("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", s);
        if (easymetric != null)
        {
            easymetric.a("success", Boolean.valueOf(flag)).a("reachability", c.g()).a("return_size_bytes", Long.valueOf(l)).a(false);
        }
    }

    public void a(String s, String s1, String s2)
    {
        a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", s, b.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME").a("publisher_name", s1).a("intro_video_url", s2).a());
    }

    public void a(String s, String s1, String s2, long l)
    {
        b.a("DISCOVER_EDITION_STREAMING_DOWNLOADED_BYTES").a("publisher_name", s).a("edition_id", s1).a("video_id", s2).a("return_size_bytes", Long.valueOf(l)).a(false);
    }

    public void a(String s, String s1, String s2, String s3, int i)
    {
        a("DISCOVER_CHUNK_DOWNLOAD_TIME", s, b.a("DISCOVER_CHUNK_DOWNLOAD_TIME").a("publisher_name", s1).a("dsnap_id", s2).a("hash", s3).a("ad_type", Integer.valueOf(i)).a());
    }

    public void a(String s, String s1, String s2, String s3, String s4)
    {
        a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME", s, b.a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME").a("video_session_id", s).a("publisher_name", s1).a("dsnap_id", s2).a("edition_id", s4).a("video_id", s3).a());
    }

    public void a(String s, String s1, String s2, String s3, String s4, MediaState mediastate, boolean flag)
    {
        if (!e.contains(s))
        {
            b.a("DISCOVER_DSNAP_LOADING_SCREEN_TIME").a("publisher_name", s1).a("edition_id", s2).a("dsnap_id", s3).a("has_ad", Boolean.valueOf(flag)).a("hash", s4).a("abandoned", Boolean.valueOf(false)).a("type", mediastate.toString().toLowerCase(Locale.ENGLISH)).a("time", Integer.valueOf(0)).a(false);
        }
    }

    public void a(String s, String s1, String s2, String s3, String s4, boolean flag)
    {
        a("DISCOVER_DSNAP_LOADING_SCREEN_TIME", s, b.a("DISCOVER_DSNAP_LOADING_SCREEN_TIME").a("publisher_name", s1).a("edition_id", s2).a("dsnap_id", s3).a("has_ad", Boolean.valueOf(flag)).a("hash", s4).a());
    }

    public void a(String s, boolean flag, long l, boolean flag1)
    {
        EasyMetric easymetric = b("DISCOVER_CHUNK_DOWNLOAD_TIME", s);
        if (easymetric != null)
        {
            easymetric.a("success", Boolean.valueOf(flag)).a("reachability", c.g()).a("return_size_bytes", Long.valueOf(l)).a("prefetch", Boolean.valueOf(flag1)).a(false);
        }
    }

    public void a(String s, boolean flag, MediaState mediastate)
    {
        EasyMetric easymetric = b("DISCOVER_DSNAP_LOADING_SCREEN_TIME", s);
        if (easymetric != null)
        {
            String s1;
            if (mediastate.a())
            {
                s1 = "loading";
            } else
            {
                s1 = mediastate.toString().toLowerCase(Locale.ENGLISH);
            }
            easymetric.a("type", s1).a("reachability", c.g()).a("abandoned", Boolean.valueOf(flag)).a(false);
        }
    }

    public void a(String s, boolean flag, boolean flag1)
    {
        EasyMetric easymetric = b("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME", s);
        if (easymetric != null)
        {
            easymetric.a("success", Boolean.valueOf(flag1)).a("abandoned", Boolean.valueOf(flag)).a("reachability", c.g()).a(false);
        }
    }

    public void b(ChannelPage channelpage)
    {
        String s = channelpage.a();
        synchronized (e)
        {
            if (!c("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME", s))
            {
                a("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME", s, b.a("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME").a());
            }
        }
        return;
        exception;
        concurrenthashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s, String s1, String s2)
    {
        b.a("DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR").a("publisher_name", s).a("url", s1).a("description", s2).a(false);
    }

    public void b(String s, String s1, String s2, String s3, String s4)
    {
        a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME", s, b.a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME").a("video_session_id", s).a("publisher_name", s1).a("edition_id", s2).a("dsnap_id", s3).a("video_id", s4).a());
    }

    public void b(String s, boolean flag, boolean flag1)
    {
        EasyMetric easymetric = b("DISCOVER_REMOTE_VIDEO_BUFFER_TIME", s);
        if (easymetric != null)
        {
            easymetric.a("success", Boolean.valueOf(flag1)).a("abandoned", Boolean.valueOf(flag)).a("reachability", c.g()).a(false);
        }
    }

    public void c(ChannelPage channelpage)
    {
        if (d.a(channelpage))
        {
            String s = channelpage.a();
            EasyMetric easymetric = b("DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME", s);
            if (easymetric != null)
            {
                easymetric.a("publisher_name", s).a("reachability", c.g()).a("success", Boolean.valueOf(d.b(channelpage))).a(false);
            }
            EasyMetric easymetric1 = b("DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME", s);
            if (easymetric1 != null)
            {
                easymetric1.a("publisher_name", channelpage.a()).a("intro_video_url", channelpage.e()).a("reachability", c.g()).a("success", Boolean.valueOf(d.b(channelpage))).a(false);
                return;
            }
        }
    }

    public void c(String s, String s1, String s2, String s3, String s4)
    {
        b.a("DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR").a("publisher_name", s).a("dsnap_id", s2).a("edition_id", s1).a("hash", s3).a("description", s4).a(false);
    }

}
