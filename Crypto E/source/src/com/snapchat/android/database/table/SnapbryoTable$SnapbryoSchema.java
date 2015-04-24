// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            SnapbryoTable

public static final class r extends Enum
    implements Schema
{

    public static final s a;
    public static final s b;
    public static final s c;
    public static final s d;
    public static final s e;
    public static final s f;
    public static final s g;
    public static final s h;
    public static final s i;
    public static final s j;
    public static final s k;
    public static final s l;
    public static final s m;
    public static final s n;
    public static final s o;
    private static final s s[];
    private int p;
    private String q;
    private DataType r;

    static String a(r r1)
    {
        return r1.q;
    }

    static DataType b(q q1)
    {
        return q1.r;
    }

    public static r valueOf(String s1)
    {
        return (r)Enum.valueOf(com/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema, s1);
    }

    public static r[] values()
    {
        return (r[])s.clone();
    }

    public DataType a()
    {
        return r;
    }

    public int b()
    {
        return p;
    }

    public String c()
    {
        return q;
    }

    public String d()
    {
        return null;
    }

    static 
    {
        a = new <init>("CLIENT_ID", 0, 1, "ClientId", DataType.a);
        b = new <init>("TIME", 1, 2, "Time", DataType.a);
        c = new <init>("VIDEO_URI", 2, 3, "VideoUri", DataType.a);
        d = new <init>("RECIPIENTS", 3, 4, "Recipients", DataType.a);
        e = new <init>("STORY_GROUPS", 4, 5, "StoryGroups", DataType.a);
        f = new <init>("UPLOAD_STATUS", 5, 6, "UploadStatus", DataType.b);
        g = new <init>("SEND_STATUS", 6, 7, "SendStatus", DataType.b);
        h = new <init>("POST_STATUS", 7, 8, "PostStatus", DataType.b);
        i = new <init>("IS_MUTED", 8, 9, "IsMuted", DataType.d);
        j = new <init>("IS_ZIP_UPLOAD", 9, 10, "HasBeenZipped", DataType.d);
        k = new <init>("TIMER_VALUE", 10, 11, "TimerValueOrDuration", DataType.e);
        l = new <init>("CAPTION_TEXT", 11, 12, "CaptionText", DataType.a);
        m = new <init>("TIME_OF_FIRST_ATTEMPT", 12, 13, "TimeOfFirstAttempt", DataType.a);
        n = new <init>("TIME_OF_LAST_ATTEMPT", 13, 14, "TimeOfLastAttempt", DataType.a);
        o = new <init>("RETRIED", 14, 15, "Retried", DataType.d);
        q aq[] = new <init>[15];
        aq[0] = a;
        aq[1] = b;
        aq[2] = c;
        aq[3] = d;
        aq[4] = e;
        aq[5] = f;
        aq[6] = g;
        aq[7] = h;
        aq[8] = i;
        aq[9] = j;
        aq[10] = k;
        aq[11] = l;
        aq[12] = m;
        aq[13] = n;
        aq[14] = o;
        s = aq;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        p = j1;
        q = s2;
        r = datatype;
    }
}
