// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            ScreenshotDetectionSessionTable

public static final class h extends Enum
    implements Schema
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    private static final i i[];
    private int f;
    private String g;
    private DataType h;

    static String a(h h1)
    {
        return h1.g;
    }

    static DataType b(g g1)
    {
        return g1.h;
    }

    public static h valueOf(String s)
    {
        return (h)Enum.valueOf(com/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema, s);
    }

    public static h[] values()
    {
        return (h[])i.clone();
    }

    public DataType a()
    {
        return h;
    }

    public int b()
    {
        return f;
    }

    public String c()
    {
        return g;
    }

    public String d()
    {
        return null;
    }

    static 
    {
        a = new <init>("SENDER", 0, 1, "Sender", DataType.a);
        b = new <init>("START_TIME", 1, 2, "StartTime", DataType.b);
        c = new <init>("END_TIME", 2, 3, "EndTime", DataType.b);
        d = new <init>("TYPE", 3, 4, "Type", DataType.a);
        e = new <init>("EXTRA", 4, 5, "Extra", DataType.a);
        g ag[] = new <init>[5];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        i = ag;
    }

    private (String s, int j, int k, String s1, DataType datatype)
    {
        super(s, j);
        f = k;
        g = s1;
        h = datatype;
    }
}
