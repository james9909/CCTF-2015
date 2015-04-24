// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.os.SystemClock;
import com.snapchat.android.analytics.framework.EasyMetric;

public class NotificationAnalytics
{
    public static final class NotificationDestinationType extends Enum
    {

        private static final NotificationDestinationType $VALUES[];
        public static final NotificationDestinationType ADD_FRIENDS;
        public static final NotificationDestinationType CHAT;
        public static final NotificationDestinationType FEED;
        public static final NotificationDestinationType MY_FRIENDS;

        public static NotificationDestinationType valueOf(String s)
        {
            return (NotificationDestinationType)Enum.valueOf(com/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType, s);
        }

        public static NotificationDestinationType[] values()
        {
            return (NotificationDestinationType[])$VALUES.clone();
        }

        static 
        {
            CHAT = new NotificationDestinationType("CHAT", 0);
            FEED = new NotificationDestinationType("FEED", 1);
            MY_FRIENDS = new NotificationDestinationType("MY_FRIENDS", 2);
            ADD_FRIENDS = new NotificationDestinationType("ADD_FRIENDS", 3);
            NotificationDestinationType anotificationdestinationtype[] = new NotificationDestinationType[4];
            anotificationdestinationtype[0] = CHAT;
            anotificationdestinationtype[1] = FEED;
            anotificationdestinationtype[2] = MY_FRIENDS;
            anotificationdestinationtype[3] = ADD_FRIENDS;
            $VALUES = anotificationdestinationtype;
        }

        private NotificationDestinationType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final long TIME_UNINITIALIZED = -1L;
    private EasyMetric mEasyMetric;
    private long mTimeOnPressed;

    public NotificationAnalytics()
    {
        mTimeOnPressed = -1L;
    }

    public void a()
    {
        mTimeOnPressed = SystemClock.elapsedRealtime();
    }

    protected void a(long l, String s)
    {
        mEasyMetric.a("context", s).a(l).a(false);
    }

    public void a(NotificationDestinationType notificationdestinationtype)
    {
        if (mTimeOnPressed == -1L || mEasyMetric == null)
        {
            return;
        } else
        {
            a(SystemClock.elapsedRealtime() - mTimeOnPressed, notificationdestinationtype.toString().toLowerCase());
            mTimeOnPressed = -1L;
            return;
        }
    }

    public void b()
    {
        mEasyMetric = new EasyMetric("NOTIFICATION_OPEN");
        mEasyMetric.a("from_background", "false");
    }

    public void c()
    {
        mEasyMetric = null;
    }

    public void d()
    {
        mEasyMetric = new EasyMetric("NOTIFICATION_OPEN");
        mEasyMetric.a("from_background", "true");
    }
}
