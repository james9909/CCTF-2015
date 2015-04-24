// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            IdToFileTable

public static final class e extends Enum
    implements Schema
{

    public static final f a;
    public static final f b;
    private static final f f[];
    private int c;
    private String d;
    private DataType e;

    static String a(e e1)
    {
        return e1.d;
    }

    static DataType b(d d1)
    {
        return d1.e;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/snapchat/android/database/table/IdToFileTable$IdToFileSchema, s);
    }

    public static e[] values()
    {
        return (e[])f.clone();
    }

    public DataType a()
    {
        return e;
    }

    public int b()
    {
        return c;
    }

    public String c()
    {
        return d;
    }

    public String d()
    {
        return null;
    }

    static 
    {
        a = new <init>("SNAP_ID", 0, 1, "SnapId", DataType.a);
        b = new <init>("FILE_PATH", 1, 2, "FilePath", DataType.a);
        d ad[] = new <init>[2];
        ad[0] = a;
        ad[1] = b;
        f = ad;
    }

    private (String s, int i, int j, String s1, DataType datatype)
    {
        super(s, i);
        c = j;
        d = s1;
        e = datatype;
    }
}
