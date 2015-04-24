// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            PerformanceMetric

public static final class  extends Enum
{

    public static final y a;
    public static final y b;
    public static final y c;
    public static final y d;
    public static final y e;
    public static final y f;
    public static final y g;
    public static final y h;
    public static final y i;
    public static final y j;
    public static final y k;
    public static final y l;
    public static final y m;
    public static final y n;
    public static final y o;
    public static final y p;
    public static final y q;
    public static final y r;
    public static final y s;
    public static final y t;
    public static final y u;
    public static final y v;
    public static final y w;
    public static final y x;
    private static final y y[];

    public static  a(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            Timber.e("PerformanceMetric", (new StringBuilder()).append("Failed to convert an empty string(").append(s1).append(") into PerformanceMetric.EVENT").toString(), new Object[0]);
            return x;
        }
         ;
        try
        {
             = valueOf(s1.toUpperCase(Locale.US));
        }
        catch (Exception exception)
        {
            return x;
        }
        return ;
    }

    public static x valueOf(String s1)
    {
        return (x)Enum.valueOf(com/snapchat/android/analytics/framework/PerformanceMetric$Event, s1);
    }

    public static x[] values()
    {
        return (x[])y.clone();
    }

    static 
    {
        a = new <init>("APP_STARTUP_TIMED", 0);
        b = new <init>("CHAT_SENT", 1);
        c = new <init>("FIRST_SNAP_DOWNLOAD", 2);
        d = new <init>("FIRST_STORY_DOWNLOAD", 3);
        e = new <init>("GEOFILTER_DOWNLOAD_BITMAP", 4);
        f = new <init>("NOTIFICATION_OPEN", 5);
        g = new <init>("SNAP_CAPTURED_TO_PREVIEW", 6);
        h = new <init>("SNAP_SEND_TIMED", 7);
        i = new <init>("STORY_DOWNLOAD", 8);
        j = new <init>("VIEW_SNAP", 9);
        k = new <init>("PULL_TO_REFRESH", 10);
        l = new <init>("CONTENT_READY", 11);
        m = new <init>("CAMERA_DELAY", 12);
        n = new <init>("FIRST_ITEM_READY", 13);
        o = new <init>("EXIT_CAMERA_VIEW", 14);
        p = new <init>("FIRST_MEDIA_OPENED", 15);
        q = new <init>("MEDIA_VIEW_INTERVAL", 16);
        r = new <init>("CAMERA_SWITCH", 17);
        s = new <init>("RECORDING_DELAY", 18);
        t = new <init>("SNAP_SENT_DELAY", 19);
        u = new <init>("STORY_POST_DELAY", 20);
        v = new <init>("SELECT_FRIEND", 21);
        w = new <init>("VIEW_NEXT_SNAP", 22);
        x = new <init>("UNKNOWN", 23);
        t_3B_.clone aclone[] = new <init>[24];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        aclone[7] = h;
        aclone[8] = i;
        aclone[9] = j;
        aclone[10] = k;
        aclone[11] = l;
        aclone[12] = m;
        aclone[13] = n;
        aclone[14] = o;
        aclone[15] = p;
        aclone[16] = q;
        aclone[17] = r;
        aclone[18] = s;
        aclone[19] = t;
        aclone[20] = u;
        aclone[21] = v;
        aclone[22] = w;
        aclone[23] = x;
        y = aclone;
    }

    private (String s1, int i1)
    {
        super(s1, i1);
    }
}
