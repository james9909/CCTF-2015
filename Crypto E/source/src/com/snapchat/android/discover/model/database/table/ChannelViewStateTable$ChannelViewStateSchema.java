// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            ChannelViewStateTable

public static final class e extends Enum
    implements Schema
{

    public static final f a;
    public static final f b;
    private static final f f[];
    private String c;
    private DataType d;
    private String e;

    static String a(e e1)
    {
        return e1.c;
    }

    static DataType b(c c1)
    {
        return c1.d;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema, s);
    }

    public static d[] values()
    {
        return (d[])f.clone();
    }

    public DataType a()
    {
        return d;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return c;
    }

    public String d()
    {
        return e;
    }

    static 
    {
        a = new <init>("ID", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("TIME_LAST_VIEWED_MILLISECONDS", 1, "time_last_viewed_milli", DataType.b);
        e ae[] = new <init>[2];
        ae[0] = a;
        ae[1] = b;
        f = ae;
    }

    private (String s, int i, String s1, DataType datatype)
    {
        super(s, i);
        c = s1;
        d = datatype;
    }

    private d(String s, int i, String s1, DataType datatype, String s2)
    {
        this(s, i, s1, datatype);
        e = s2;
    }
}
