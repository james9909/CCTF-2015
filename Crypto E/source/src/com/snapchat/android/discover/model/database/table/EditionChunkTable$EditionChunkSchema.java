// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            EditionChunkTable

public static final class m extends Enum
    implements Schema
{

    public static final n a;
    public static final n b;
    public static final n c;
    public static final n d;
    public static final n e;
    public static final n f;
    public static final n g;
    public static final n h;
    public static final n i;
    public static final n j;
    private static final n n[];
    private String k;
    private DataType l;
    private String m;

    static String a(m m1)
    {
        return m1.k;
    }

    static DataType b(k k1)
    {
        return k1.l;
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema, s);
    }

    public static l[] values()
    {
        return (l[])n.clone();
    }

    public DataType a()
    {
        return l;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return k;
    }

    public String d()
    {
        return m;
    }

    static 
    {
        a = new <init>("ID", 0, "_id", DataType.b, "PRIMARY KEY");
        b = new <init>("EDITION_ID", 1, "edition_id", DataType.a);
        c = new <init>("URL", 2, "url", DataType.a);
        d = new <init>("HASH", 3, "hash", DataType.a);
        e = new <init>("COLOR", 4, "color", DataType.a);
        f = new <init>("AD_TYPE", 5, "ad_type", DataType.b);
        g = new <init>("AD_POSITION", 6, "ad_position", DataType.b);
        h = new <init>("POSITION", 7, "position", DataType.b);
        i = new <init>("ACTIVE", 8, "active", DataType.d);
        j = new <init>("SHAREABLE", 9, "shareable", DataType.d);
        m am[] = new <init>[10];
        am[0] = a;
        am[1] = b;
        am[2] = c;
        am[3] = d;
        am[4] = e;
        am[5] = f;
        am[6] = g;
        am[7] = h;
        am[8] = i;
        am[9] = j;
        n = am;
    }

    private (String s, int i1, String s1, DataType datatype)
    {
        super(s, i1);
        k = s1;
        l = datatype;
    }

    private l(String s, int i1, String s1, DataType datatype, String s2)
    {
        this(s, i1, s1, datatype);
        m = s2;
    }
}
