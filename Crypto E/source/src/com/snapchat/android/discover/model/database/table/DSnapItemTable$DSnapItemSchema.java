// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            DSnapItemTable

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
        return (l)Enum.valueOf(com/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema, s);
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
        a = new <init>("ID", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("FORM", 1, "form", DataType.a);
        c = new <init>("MEDIA_TYPE", 2, "media_type", DataType.a);
        d = new <init>("URI", 3, "uri", DataType.a);
        e = new <init>("VIDEO_ID", 4, "video_id", DataType.a);
        f = new <init>("OVERLAY_URI", 5, "overlay_uri", DataType.a);
        g = new <init>("SPONSORED_OVERLAY_URI", 6, "sponsored_overlay_uri", DataType.a);
        h = new <init>("DOCKING", 7, "docking", DataType.a);
        i = new <init>("MODE", 8, "mode", DataType.a);
        j = new <init>("HASH", 9, "hash", DataType.a);
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
