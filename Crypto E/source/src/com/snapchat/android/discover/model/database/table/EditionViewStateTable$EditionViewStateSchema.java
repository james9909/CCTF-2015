// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            EditionViewStateTable

public static final class f extends Enum
    implements Schema
{

    public static final g a;
    public static final g b;
    public static final g c;
    private static final g g[];
    private String d;
    private DataType e;
    private String f;

    static String a(f f1)
    {
        return f1.d;
    }

    static DataType b(d d1)
    {
        return d1.e;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema, s);
    }

    public static e[] values()
    {
        return (e[])g.clone();
    }

    public DataType a()
    {
        return e;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return d;
    }

    public String d()
    {
        return f;
    }

    static 
    {
        a = new <init>("ID", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("LAST_INDEX_VIEWED", 1, "last_index_viewed", DataType.b);
        c = new <init>("VIEWED_ALL_DSNAPS", 2, "viewed_all_dsnaps", DataType.d);
        f af[] = new <init>[3];
        af[0] = a;
        af[1] = b;
        af[2] = c;
        g = af;
    }

    private (String s, int i, String s1, DataType datatype)
    {
        super(s, i);
        d = s1;
        e = datatype;
    }

    private e(String s, int i, String s1, DataType datatype, String s2)
    {
        this(s, i, s1, datatype);
        f = s2;
    }
}
