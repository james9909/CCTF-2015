// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            UpdateSnapsAnalyticsTable

public static final class f extends Enum
    implements Schema
{

    public static final g a;
    public static final g b;
    public static final g c;
    private static final g g[];
    private int d;
    private String e;
    private DataType f;

    static String a(f f1)
    {
        return f1.e;
    }

    static DataType b(e e1)
    {
        return e1.f;
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema, s);
    }

    public static f[] values()
    {
        return (f[])g.clone();
    }

    public DataType a()
    {
        return f;
    }

    public int b()
    {
        return d;
    }

    public String c()
    {
        return e;
    }

    public String d()
    {
        return null;
    }

    static 
    {
        a = new <init>("EVENT_NAME", 0, 1, "EventName", DataType.a);
        b = new <init>("EVENT_PARAMETERS", 1, 2, "EventParameters", DataType.a);
        c = new <init>("EVENT_TIMESTAMP", 2, 3, "EventTimestamp", DataType.a);
        e ae[] = new <init>[3];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        g = ae;
    }

    private (String s, int i, int j, String s1, DataType datatype)
    {
        super(s, i);
        d = j;
        e = s1;
        f = datatype;
    }
}
