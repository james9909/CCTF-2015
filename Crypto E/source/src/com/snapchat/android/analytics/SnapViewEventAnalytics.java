// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsMetric;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.EnumUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.TimeLogger;

public class SnapViewEventAnalytics
{
    public static final class SnapViewEventSnapType extends Enum
    {

        private static final SnapViewEventSnapType $VALUES[];
        public static final SnapViewEventSnapType IMAGE;
        public static final SnapViewEventSnapType VIDEO;

        public static SnapViewEventSnapType valueOf(String s)
        {
            return (SnapViewEventSnapType)Enum.valueOf(com/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType, s);
        }

        public static SnapViewEventSnapType[] values()
        {
            return (SnapViewEventSnapType[])$VALUES.clone();
        }

        static 
        {
            IMAGE = new SnapViewEventSnapType("IMAGE", 0);
            VIDEO = new SnapViewEventSnapType("VIDEO", 1);
            SnapViewEventSnapType asnapvieweventsnaptype[] = new SnapViewEventSnapType[2];
            asnapvieweventsnaptype[0] = IMAGE;
            asnapvieweventsnaptype[1] = VIDEO;
            $VALUES = asnapvieweventsnaptype;
        }

        private SnapViewEventSnapType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class SnapViewEventSourceType extends Enum
    {

        private static final SnapViewEventSourceType $VALUES[];
        public static final SnapViewEventSourceType CHAT;
        public static final SnapViewEventSourceType FEED;
        public static final SnapViewEventSourceType STORY;

        public static SnapViewEventSourceType valueOf(String s)
        {
            return (SnapViewEventSourceType)Enum.valueOf(com/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType, s);
        }

        public static SnapViewEventSourceType[] values()
        {
            return (SnapViewEventSourceType[])$VALUES.clone();
        }

        static 
        {
            STORY = new SnapViewEventSourceType("STORY", 0);
            FEED = new SnapViewEventSourceType("FEED", 1);
            CHAT = new SnapViewEventSourceType("CHAT", 2);
            SnapViewEventSourceType asnapvieweventsourcetype[] = new SnapViewEventSourceType[3];
            asnapvieweventsourcetype[0] = STORY;
            asnapvieweventsourcetype[1] = FEED;
            asnapvieweventsourcetype[2] = CHAT;
            $VALUES = asnapvieweventsourcetype;
        }

        private SnapViewEventSourceType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String NUM_SNAPS_VIEWED_PARAM_NAME = "num_snaps_viewed";
    private static SnapViewEventAnalytics sInstance;
    private final DictionaryEasyMetric mDictionaryEasyMetric = DictionaryEasyMetric.a();
    private EasyMetric mNextSnapViewEventTimer;
    private EasyMetric mSnapViewEventTimer;
    private ScAnalyticsMetric mStorySnapStoryViewEvent;

    SnapViewEventAnalytics()
    {
    }

    public static SnapViewEventAnalytics a()
    {
        com/snapchat/android/analytics/SnapViewEventAnalytics;
        JVM INSTR monitorenter ;
        SnapViewEventAnalytics snapvieweventanalytics;
        if (sInstance == null)
        {
            sInstance = new SnapViewEventAnalytics();
        }
        snapvieweventanalytics = sInstance;
        com/snapchat/android/analytics/SnapViewEventAnalytics;
        JVM INSTR monitorexit ;
        return snapvieweventanalytics;
        Exception exception;
        exception;
        throw exception;
    }

    public static void c(boolean flag)
    {
        (new EasyMetric("BITMAP_PRELOAD")).a("useful", Boolean.toString(flag)).c();
    }

    private void e()
    {
        Long long1 = mStorySnapStoryViewEvent.b("num_snaps_viewed");
        if (long1 == null)
        {
            mStorySnapStoryViewEvent.a("num_snaps_viewed", 1L);
        } else
        {
            mStorySnapStoryViewEvent.a("num_snaps_viewed", 1L + long1.longValue());
        }
        if (!mStorySnapStoryViewEvent.a())
        {
            mStorySnapStoryViewEvent.a("time_viewed");
        }
    }

    public void a(SnapViewEventSnapType snapvieweventsnaptype)
    {
        if (mSnapViewEventTimer == null || !c())
        {
            if (ReleaseManager.e())
            {
                throw new IllegalStateException();
            }
        } else
        {
            String s = snapvieweventsnaptype.toString().toLowerCase();
            mSnapViewEventTimer.a("type", s);
            mSnapViewEventTimer.a(false);
            mSnapViewEventTimer = null;
        }
    }

    public void a(SnapViewEventSnapType snapvieweventsnaptype, SnapViewEventSourceType snapvieweventsourcetype)
    {
        EasyMetric easymetric = mNextSnapViewEventTimer;
        if (easymetric != null)
        {
            easymetric.a("type", EnumUtils.a(snapvieweventsnaptype));
            easymetric.a("context", EnumUtils.a(snapvieweventsourcetype));
            easymetric.a(false);
        }
    }

    public void a(SnapViewEventSnapType snapvieweventsnaptype, SnapViewSessionStopReason snapviewsessionstopreason, String s)
    {
        (new ErrorMetric("SNAP_VIEW_FAILED")).b("sender", s).b("reason", snapviewsessionstopreason.toString()).a("type", EnumUtils.a(snapvieweventsnaptype)).c();
    }

    public void a(SnapViewEventSourceType snapvieweventsourcetype)
    {
        mSnapViewEventTimer = new EasyMetric("VIEW_SNAP");
        String s = snapvieweventsourcetype.toString().toLowerCase();
        mSnapViewEventTimer.a("context", s);
        mDictionaryEasyMetric.a("FIRST_MEDIA_OPENED", "context", s);
    }

    public void a(String s)
    {
        if (mSnapViewEventTimer == null)
        {
            return;
        } else
        {
            TimeLogger.c(s);
            return;
        }
    }

    public void a(String s, boolean flag)
    {
        if (mStorySnapStoryViewEvent == null)
        {
            ScAnalyticsMetric scanalyticsmetric = (new ScAnalyticsMetric("OURSTORY_STORY_VIEW")).a("poster_id", s);
            long l;
            if (flag)
            {
                l = 0L;
            } else
            {
                l = 1L;
            }
            mStorySnapStoryViewEvent = scanalyticsmetric.a("view_location", l);
        }
        e();
    }

    public void a(boolean flag)
    {
        if (mStorySnapStoryViewEvent == null)
        {
            return;
        } else
        {
            mStorySnapStoryViewEvent.a("full_view", Boolean.valueOf(flag)).b();
            mStorySnapStoryViewEvent = null;
            return;
        }
    }

    public void b()
    {
        if (mSnapViewEventTimer == null)
        {
            return;
        } else
        {
            mSnapViewEventTimer.a();
            mDictionaryEasyMetric.c("FIRST_MEDIA_OPENED");
            return;
        }
    }

    public void b(SnapViewEventSnapType snapvieweventsnaptype)
    {
        (new EasyMetric("SNAP_VIEW_SUCCESS")).a("type", EnumUtils.a(snapvieweventsnaptype)).c();
    }

    public void b(String s)
    {
        if (mSnapViewEventTimer == null)
        {
            return;
        } else
        {
            long l = TimeLogger.d(s);
            mSnapViewEventTimer.a(s, Long.toString(l));
            return;
        }
    }

    public void b(String s, boolean flag)
    {
        if (mStorySnapStoryViewEvent == null)
        {
            ScAnalyticsMetric scanalyticsmetric = (new ScAnalyticsMetric("USERSTORY_STORY_VIEW")).a("poster_id", s);
            long l;
            if (flag)
            {
                l = 0L;
            } else
            {
                l = 1L;
            }
            mStorySnapStoryViewEvent = scanalyticsmetric.a("view_location", l);
        }
        e();
    }

    public void b(boolean flag)
    {
        mNextSnapViewEventTimer = (new EasyMetric("VIEW_NEXT_SNAP")).a("wasSkipped", Boolean.toString(flag)).a();
    }

    public void c(String s)
    {
        if (mStorySnapStoryViewEvent == null)
        {
            mStorySnapStoryViewEvent = (new ScAnalyticsMetric("BRANDSTORY_STORY_VIEW")).a("sponsor", s);
        }
        e();
    }

    public boolean c()
    {
        if (mSnapViewEventTimer == null)
        {
            return false;
        } else
        {
            return mSnapViewEventTimer.b();
        }
    }

    public void d()
    {
        if (mStorySnapStoryViewEvent == null)
        {
            mStorySnapStoryViewEvent = new ScAnalyticsMetric("USERSTORY_MYSTORY_VIEW");
        }
        e();
    }
}
