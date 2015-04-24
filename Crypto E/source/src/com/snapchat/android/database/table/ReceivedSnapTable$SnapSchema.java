// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            ReceivedSnapTable

public static final class z extends Enum
    implements Schema
{

    private static final A A[];
    public static final A a;
    public static final A b;
    public static final A c;
    public static final A d;
    public static final A e;
    public static final A f;
    public static final A g;
    public static final A h;
    public static final A i;
    public static final A j;
    public static final A k;
    public static final A l;
    public static final A m;
    public static final A n;
    public static final A o;
    public static final A p;
    public static final A q;
    public static final A r;
    public static final A s;
    public static final A t;
    public static final A u;
    public static final A v;
    private int w;
    private String x;
    private DataType y;
    private String z;

    static String a(z z1)
    {
        return z1.x;
    }

    static DataType b(x x1)
    {
        return x1.y;
    }

    public static y valueOf(String s1)
    {
        return (y)Enum.valueOf(com/snapchat/android/database/table/ReceivedSnapTable$SnapSchema, s1);
    }

    public static y[] values()
    {
        return (y[])A.clone();
    }

    public DataType a()
    {
        return y;
    }

    public int b()
    {
        return w;
    }

    public String c()
    {
        return x;
    }

    public String d()
    {
        return z;
    }

    static 
    {
        a = new <init>("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("TIMESTAMP", 1, 1, "Timestamp", DataType.b);
        c = new <init>("MEDIA_TYPE", 2, 2, "MediaType", DataType.b);
        d = new <init>("IS_ZIPPED", 3, 3, "IsZipped", DataType.d);
        e = new <init>("STATUS", 4, 4, "Status", DataType.a);
        f = new <init>("SENDER", 5, 5, "Sender", DataType.a);
        g = new <init>("DISPLAY_TIME", 6, 6, "DisplayTime", DataType.e);
        h = new <init>("CAPTION_TEXT", 7, 7, "CaptionText", DataType.a);
        i = new <init>("CAPTION_ORIENTATION", 8, 8, "CaptionOrientation", DataType.b);
        j = new <init>("CAPTION_POSITION", 9, 9, "CaptionPosition", DataType.e);
        k = new <init>("IS_VIEWED", 10, 10, "IsViewed", DataType.d);
        l = new <init>("IS_SCREENSHOTTED", 11, 11, "IsScreenshotted", DataType.d);
        m = new <init>("IS_UPDATED", 12, 12, "IsUpdated", DataType.d);
        n = new <init>("VIEWED_TIMESTAMP", 13, 13, "ViewedTimestamp", DataType.b);
        o = new <init>("CONVERSATION_ID", 14, 14, "ConversationId", DataType.a);
        p = new <init>("SENT_TIMESTAMP", 15, 15, "SentTimestamp", DataType.b);
        q = new <init>("TARGET_VIEW", 16, 16, "TargetView", DataType.a);
        r = new <init>("BROADCAST_MEDIA_URL", 17, 17, "BroadcastMediaUrl", DataType.a);
        s = new <init>("BROADCAST_URL", 18, 18, "BroadcastUrl", DataType.a);
        t = new <init>("BROADCAST_TEXT", 19, 19, "BroadcastText", DataType.a);
        u = new <init>("BROADCAST_HIDE_TIMER", 20, 20, "BroadcastHideTimer", DataType.d);
        v = new <init>("FILTER_ID", 21, 21, "FilterId", DataType.a);
        z az[] = new <init>[22];
        az[0] = a;
        az[1] = b;
        az[2] = c;
        az[3] = d;
        az[4] = e;
        az[5] = f;
        az[6] = g;
        az[7] = h;
        az[8] = i;
        az[9] = j;
        az[10] = k;
        az[11] = l;
        az[12] = m;
        az[13] = n;
        az[14] = o;
        az[15] = p;
        az[16] = q;
        az[17] = r;
        az[18] = s;
        az[19] = t;
        az[20] = u;
        az[21] = v;
        A = az;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        w = j1;
        x = s2;
        y = datatype;
    }

    private y(String s1, int i1, int j1, String s2, DataType datatype, String s3)
    {
        super(s1, i1);
        w = j1;
        x = s2;
        y = datatype;
        z = s3;
    }
}
