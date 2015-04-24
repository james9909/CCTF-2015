// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            EditionTable

public static final class g extends Enum
    implements Schema
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    private static final h h[];
    private String e;
    private DataType f;
    private String g;

    static String a(g g1)
    {
        return g1.e;
    }

    static DataType b(e e1)
    {
        return e1.f;
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/snapchat/android/discover/model/database/table/EditionTable$EditionSchema, s);
    }

    public static f[] values()
    {
        return (f[])h.clone();
    }

    public DataType a()
    {
        return f;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return e;
    }

    public String d()
    {
        return g;
    }

    static 
    {
        a = new <init>("ID", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("PUBLISHER_NAME", 1, "publisher_name", DataType.a);
        c = new <init>("TIME_ADDED", 2, "time_added", DataType.b);
        d = new <init>("ACTIVE", 3, "active", DataType.d);
        g ag[] = new <init>[4];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        h = ag;
    }

    private (String s, int i, String s1, DataType datatype)
    {
        super(s, i);
        e = s1;
        f = datatype;
    }

    private f(String s, int i, String s1, DataType datatype, String s2)
    {
        this(s, i, s1, datatype);
        g = s2;
    }
}
