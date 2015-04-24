// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.analytics;

import com.snapchat.android.ads.AdManager;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsMetric;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

public class DiscoverAnalytics
{
    public static final class ViewStatus extends Enum
    {

        public static final ViewStatus a;
        public static final ViewStatus b;
        private static final ViewStatus c[];

        public static ViewStatus valueOf(String s)
        {
            return (ViewStatus)Enum.valueOf(com/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus, s);
        }

        public static ViewStatus[] values()
        {
            return (ViewStatus[])c.clone();
        }

        public boolean a()
        {
            return equals(b);
        }

        static 
        {
            a = new ViewStatus("INCOMPLETE", 0);
            b = new ViewStatus("COMPLETED", 1);
            ViewStatus aviewstatus[] = new ViewStatus[2];
            aviewstatus[0] = a;
            aviewstatus[1] = b;
            c = aviewstatus;
        }

        private ViewStatus(String s, int i)
        {
            super(s, i);
        }
    }


    private final com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory a;
    private final com.snapchat.android.analytics.framework.ScAnalyticsMetric.ScAnalyticsMetricFactory b;
    private final AdManager c;

    public DiscoverAnalytics()
    {
        this(new com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory(), new com.snapchat.android.analytics.framework.ScAnalyticsMetric.ScAnalyticsMetricFactory(), AdManager.a());
    }

    protected DiscoverAnalytics(com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory easymetricfactory, com.snapchat.android.analytics.framework.ScAnalyticsMetric.ScAnalyticsMetricFactory scanalyticsmetricfactory, AdManager admanager)
    {
        a = easymetricfactory;
        b = scanalyticsmetricfactory;
        c = admanager;
    }

    private static String a(long l)
    {
        return (new BigDecimal(l)).divide(new BigDecimal(1000), 1, 4).toString();
    }

    public void a(long l, ViewStatus viewstatus, String s, String s1, String s2, int i)
    {
        HashMap hashmap = new HashMap(7);
        hashmap.put("time_viewed", a(l));
        hashmap.put("full_view", Boolean.valueOf(viewstatus.a()));
        hashmap.put("splash_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("publisher_id", s2);
        hashmap.put("content_index_count", Integer.valueOf(i));
        hashmap.put("content_index_pos", Integer.valueOf(0));
        a.a("DISCOVER_SPLASH_VIEW").a(hashmap).c();
        b.a("DISCOVER_SPLASH_VIEW").a(hashmap).b();
        com.snapchat.android.ads.DiscoverAdPlacement discoveradplacement = (new com.snapchat.android.ads.DiscoverAdPlacement.Builder()).b(s2).a(s1).a().b();
        c.a(discoveradplacement, l);
    }

    public void a(long l, ViewStatus viewstatus, String s, String s1, String s2, int i, 
            int j)
    {
        HashMap hashmap = new HashMap(7);
        hashmap.put("time_viewed", a(l));
        hashmap.put("full_view", Boolean.valueOf(viewstatus.a()));
        hashmap.put("dsnap_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("publisher_id", s2);
        hashmap.put("content_index_count", Integer.valueOf(j));
        hashmap.put("content_index_pos", Integer.valueOf(i + 1));
        a.a("DISCOVER_SNAP_VIEW").a(hashmap).c();
        b.a("DISCOVER_SNAP_VIEW").a(hashmap).b();
    }

    public void a(long l, ViewStatus viewstatus, String s, String s1, String s2, int i, 
            int j, int k, int i1)
    {
        HashMap hashmap = new HashMap(9);
        hashmap.put("time_viewed", a(l));
        hashmap.put("full_view", Boolean.valueOf(viewstatus.a()));
        hashmap.put("adsnap_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("publisher_id", s2);
        hashmap.put("content_index_pos", Integer.valueOf(i + 1));
        hashmap.put("content_index_count", Integer.valueOf(j));
        hashmap.put("ad_index_pos", Integer.valueOf(k));
        hashmap.put("ad_index_count", Integer.valueOf(i1));
        a.a("DISCOVER_AD_VIEW").a(hashmap).c();
        b.a("DISCOVER_AD_VIEW").a(hashmap).b();
        com.snapchat.android.ads.DiscoverAdPlacement discoveradplacement = (new com.snapchat.android.ads.DiscoverAdPlacement.Builder()).b(s2).a(s1).a(k).b();
        AdManager admanager = c;
        boolean flag;
        if (viewstatus == ViewStatus.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        admanager.a(discoveradplacement, l, flag);
    }

    public void a(long l, String s, String s1, int i, int j, com.snapchat.android.discover.ui.fragment.EditionViewerPager.SwipeToExitMethod swipetoexitmethod, 
            int k)
    {
        HashMap hashmap = new HashMap(7);
        hashmap.put("time_viewed", a(l));
        hashmap.put("edition_id", s);
        hashmap.put("publisher_id", s1);
        hashmap.put("num_snaps_viewed", Integer.valueOf(i));
        hashmap.put("num_longform_viewed", Integer.valueOf(j));
        hashmap.put("exit_event", swipetoexitmethod.a());
        hashmap.put("content_index_count", Integer.valueOf(k));
        a.a("DISCOVER_EDITION_VIEW").a(hashmap).c();
        b.a("DISCOVER_EDITION_VIEW").a(hashmap).b();
    }

    public void a(long l, String s, String s1, String s2, com.snapchat.android.discover.model.DSnapPanel.MediaType mediatype, int i, 
            int j)
    {
        String s3 = "";
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.discover.model.DSnapPanel.MediaType.values().length];
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls1.a[mediatype.ordinal()];
        JVM INSTR tableswitch 1 2: default 36
    //                   1 175
    //                   2 182;
           goto _L1 _L2 _L3
_L1:
        HashMap hashmap = new HashMap(7);
        hashmap.put("time_viewed", a(l));
        hashmap.put("dsnap_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("publisher_id", s2);
        hashmap.put("longform_type", s3);
        hashmap.put("content_index_pos", Integer.valueOf(i + 1));
        hashmap.put("content_index_count", Integer.valueOf(j));
        a.a("DISCOVER_SNAP_LONGFORM_VIEW").a(hashmap).c();
        b.a("DISCOVER_SNAP_LONGFORM_VIEW").a(hashmap).b();
        return;
_L2:
        s3 = "text";
        continue; /* Loop/switch isn't completed */
_L3:
        s3 = "video";
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void a(String s, String s1)
    {
        a.a("DISCOVER_BAD_PUBLISHER_DATA").a("publisher_name", s).a("field", s1).a(false);
    }

    public void a(String s, String s1, String s2)
    {
        com.snapchat.android.ads.DiscoverAdPlacement discoveradplacement = (new com.snapchat.android.ads.DiscoverAdPlacement.Builder()).b(s2).a(s1).a().b();
        c.a(discoveradplacement);
    }

    public void a(String s, String s1, String s2, int i)
    {
        com.snapchat.android.ads.DiscoverAdPlacement discoveradplacement = (new com.snapchat.android.ads.DiscoverAdPlacement.Builder()).b(s2).a(s1).a(i).b();
        c.b(discoveradplacement);
    }

    public void a(String s, String s1, String s2, String s3, int i, int j, int k, 
            int l, int i1)
    {
        HashMap hashmap = new HashMap(8);
        hashmap.put("publisher_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("dsnap_id", s2);
        if (i != 0)
        {
            hashmap.put("adsnap_id", s3);
            hashmap.put("ad_index_pos", Integer.valueOf(l));
            hashmap.put("ad_index_count", Integer.valueOf(i1));
        }
        hashmap.put("content_index_count", Integer.valueOf(k));
        hashmap.put("content_index_pos", Integer.valueOf(j + 1));
        Object aobj[] = new Object[1];
        String s4;
        String s5;
        if (i != 0)
        {
            s4 = "AD";
        } else
        {
            s4 = "SNAP";
        }
        aobj[0] = s4;
        s5 = String.format("DISCOVER_%s_SCREENSHOT", aobj);
        a.a(s5).a(hashmap).c();
        b.a(s5).a(hashmap).b();
    }

    public void a(String s, String s1, String s2, String s3, int i, com.snapchat.android.discover.model.DSnapPanel.MediaType mediatype, int j, 
            int k, int l, int i1)
    {
        String s4;
        HashMap hashmap;
        Object aobj[];
        String s5;
        String s6;
        if (mediatype == com.snapchat.android.discover.model.DSnapPanel.MediaType.c)
        {
            s4 = "text";
        } else
        {
            s4 = "video";
        }
        hashmap = new HashMap(9);
        hashmap.put("publisher_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("dsnap_id", s2);
        hashmap.put("longform_type", s4);
        if (i != 0)
        {
            hashmap.put("adsnap_id", s3);
            hashmap.put("ad_index_pos", Integer.valueOf(l));
            hashmap.put("ad_index_count", Integer.valueOf(i1));
        }
        hashmap.put("content_index_count", Integer.valueOf(k));
        hashmap.put("content_index_pos", Integer.valueOf(j + 1));
        aobj = new Object[1];
        if (i != 0)
        {
            s5 = "AD";
        } else
        {
            s5 = "SNAP";
        }
        aobj[0] = s5;
        s6 = String.format("DISCOVER_%s_LONGFORM_SCREENSHOT", aobj);
        a.a(s6).a(hashmap).c();
        b.a(s6).a(hashmap).b();
    }

    public void a(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7)
    {
        EasyMetric easymetric = a.a("DISCOVER_BRIGHTCOVE_ERROR").a("publisher_name", s).a("dsnap_id", s1).a("hash", s2).a("error_type", s5);
        if (s3 != null)
        {
            easymetric.a("video_id", s3);
        }
        if (s4 != null)
        {
            easymetric.a("source", s4);
        }
        if (s6 != null)
        {
            easymetric.a("error_code", s6);
        }
        if (s7 != null)
        {
            easymetric.a("error_message", s7);
        }
        easymetric.a(false);
    }

    public void b(String s, String s1, String s2)
    {
        a.a("DISCOVER_BAD_CHUNK_METADATA").a("publisher_name", s).a("dsnap_id", s1).a("hash", s2).a(false);
    }

    public void b(String s, String s1, String s2, int i)
    {
        HashMap hashmap = new HashMap(5);
        hashmap.put("publisher_id", s);
        hashmap.put("edition_id", s1);
        hashmap.put("splash_id", s2);
        hashmap.put("content_index_count", Integer.valueOf(i));
        hashmap.put("content_index_pos", Integer.valueOf(0));
        a.a("DISCOVER_SPLASH_SCREENSHOT").a(hashmap).c();
        b.a("DISCOVER_SPLASH_SCREENSHOT").a(hashmap).b();
    }

    public void c(String s, String s1, String s2)
    {
        a.a("DISCOVER_BAD_CHUNK_DATA").a("dsnap_id", s).a("hash", s1).a("field", s2).a(false);
    }
}
