// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import java.util.Locale;

public class PerformanceMetric
{
    public static final class Event extends Enum
    {

        public static final Event a;
        public static final Event b;
        public static final Event c;
        public static final Event d;
        public static final Event e;
        public static final Event f;
        public static final Event g;
        public static final Event h;
        public static final Event i;
        public static final Event j;
        public static final Event k;
        public static final Event l;
        public static final Event m;
        public static final Event n;
        public static final Event o;
        public static final Event p;
        public static final Event q;
        public static final Event r;
        public static final Event s;
        public static final Event t;
        public static final Event u;
        public static final Event v;
        public static final Event w;
        public static final Event x;
        private static final Event y[];

        public static Event a(String s1)
        {
            if (TextUtils.isEmpty(s1))
            {
                Timber.e("PerformanceMetric", (new StringBuilder()).append("Failed to convert an empty string(").append(s1).append(") into PerformanceMetric.EVENT").toString(), new Object[0]);
                return x;
            }
            Event event;
            try
            {
                event = valueOf(s1.toUpperCase(Locale.US));
            }
            catch (Exception exception)
            {
                return x;
            }
            return event;
        }

        public static Event valueOf(String s1)
        {
            return (Event)Enum.valueOf(com/snapchat/android/analytics/framework/PerformanceMetric$Event, s1);
        }

        public static Event[] values()
        {
            return (Event[])y.clone();
        }

        static 
        {
            a = new Event("APP_STARTUP_TIMED", 0);
            b = new Event("CHAT_SENT", 1);
            c = new Event("FIRST_SNAP_DOWNLOAD", 2);
            d = new Event("FIRST_STORY_DOWNLOAD", 3);
            e = new Event("GEOFILTER_DOWNLOAD_BITMAP", 4);
            f = new Event("NOTIFICATION_OPEN", 5);
            g = new Event("SNAP_CAPTURED_TO_PREVIEW", 6);
            h = new Event("SNAP_SEND_TIMED", 7);
            i = new Event("STORY_DOWNLOAD", 8);
            j = new Event("VIEW_SNAP", 9);
            k = new Event("PULL_TO_REFRESH", 10);
            l = new Event("CONTENT_READY", 11);
            m = new Event("CAMERA_DELAY", 12);
            n = new Event("FIRST_ITEM_READY", 13);
            o = new Event("EXIT_CAMERA_VIEW", 14);
            p = new Event("FIRST_MEDIA_OPENED", 15);
            q = new Event("MEDIA_VIEW_INTERVAL", 16);
            r = new Event("CAMERA_SWITCH", 17);
            s = new Event("RECORDING_DELAY", 18);
            t = new Event("SNAP_SENT_DELAY", 19);
            u = new Event("STORY_POST_DELAY", 20);
            v = new Event("SELECT_FRIEND", 21);
            w = new Event("VIEW_NEXT_SNAP", 22);
            x = new Event("UNKNOWN", 23);
            Event aevent[] = new Event[24];
            aevent[0] = a;
            aevent[1] = b;
            aevent[2] = c;
            aevent[3] = d;
            aevent[4] = e;
            aevent[5] = f;
            aevent[6] = g;
            aevent[7] = h;
            aevent[8] = i;
            aevent[9] = j;
            aevent[10] = k;
            aevent[11] = l;
            aevent[12] = m;
            aevent[13] = n;
            aevent[14] = o;
            aevent[15] = p;
            aevent[16] = q;
            aevent[17] = r;
            aevent[18] = s;
            aevent[19] = t;
            aevent[20] = u;
            aevent[21] = v;
            aevent[22] = w;
            aevent[23] = x;
            y = aevent;
        }

        private Event(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public PerformanceMetric()
    {
    }

    public static boolean a(String s)
    {
        return Event.a(s) != Event.x;
    }
}
