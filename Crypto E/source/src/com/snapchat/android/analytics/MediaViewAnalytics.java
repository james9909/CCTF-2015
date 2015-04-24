// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.DictionaryEasyMetric;

public class MediaViewAnalytics
{

    private static final String MEDIA_VIEW_INTERVAL_EVENT = "MEDIA_VIEW_INTERVAL";
    private static MediaViewAnalytics sInstance;
    private final DictionaryEasyMetric mDictionaryEasyMetric;

    protected MediaViewAnalytics()
    {
        this(DictionaryEasyMetric.a());
    }

    MediaViewAnalytics(DictionaryEasyMetric dictionaryeasymetric)
    {
        mDictionaryEasyMetric = dictionaryeasymetric;
    }

    public static MediaViewAnalytics a()
    {
        com/snapchat/android/analytics/MediaViewAnalytics;
        JVM INSTR monitorenter ;
        MediaViewAnalytics mediaviewanalytics;
        if (sInstance == null)
        {
            sInstance = new MediaViewAnalytics();
        }
        mediaviewanalytics = sInstance;
        com/snapchat/android/analytics/MediaViewAnalytics;
        JVM INSTR monitorexit ;
        return mediaviewanalytics;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(String s, String s1)
    {
        b(s1, s);
        a(s1, s, false);
    }

    private void a(String s, String s1, boolean flag)
    {
        b(flag);
        e(s1);
        g(s);
    }

    private void b(String s, String s1)
    {
        f(s);
        e(s1);
        c();
    }

    private void b(boolean flag)
    {
        mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", flag);
    }

    private void c()
    {
        mDictionaryEasyMetric.c("MEDIA_VIEW_INTERVAL");
    }

    private void e(String s)
    {
        mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", "context", s);
    }

    private void f(String s)
    {
        mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", "current_action", s);
    }

    private void g(String s)
    {
        mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", "last_action", s);
    }

    public void a(String s)
    {
        a(s, "tap_to_load");
    }

    public void a(boolean flag)
    {
        if (flag)
        {
            b(true);
            g("kicked_out");
            return;
        } else
        {
            b(false);
            mDictionaryEasyMetric.a("MEDIA_VIEW_INTERVAL", "last_action", "end_view_media", false);
            return;
        }
    }

    public void b()
    {
        a("feed", "pull_to_refresh");
    }

    public void b(String s)
    {
        a("move_to_page", s, false);
    }

    public void c(String s)
    {
        b("view_media", s);
    }

    public void d(String s)
    {
        b("exit_page", s);
    }
}
