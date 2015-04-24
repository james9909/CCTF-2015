// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            PublisherChannelTable

public static final class l extends Enum
    implements Schema
{

    public static final m a;
    public static final m b;
    public static final m c;
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    private static final m m[];
    private String j;
    private DataType k;
    private String l;

    static String a(l l1)
    {
        return l1.j;
    }

    static DataType b(j j1)
    {
        return j1.k;
    }

    public static k valueOf(String s)
    {
        return (k)Enum.valueOf(com/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema, s);
    }

    public static k[] values()
    {
        return (k[])m.clone();
    }

    public DataType a()
    {
        return k;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return j;
    }

    public String d()
    {
        return l;
    }

    static 
    {
        a = new <init>("NAME", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("PRIMARY_COLOR", 1, "primary_color", DataType.a);
        c = new <init>("SECONDARY_COLOR", 2, "secondary_color", DataType.a);
        d = new <init>("FILLED_ICON", 3, "filled_icon", DataType.a);
        e = new <init>("INVERTED_ICON", 4, "inverted_icon", DataType.a);
        f = new <init>("LOADING_ICON", 5, "loading_icon", DataType.a);
        g = new <init>("INTRO_MOVIE", 6, "intro_movie", DataType.a);
        h = new <init>("POSITION", 7, "position", DataType.b);
        i = new <init>("ENABLED", 8, "enabled", DataType.d);
        l al[] = new <init>[9];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        al[3] = d;
        al[4] = e;
        al[5] = f;
        al[6] = g;
        al[7] = h;
        al[8] = i;
        m = al;
    }

    private (String s, int i1, String s1, DataType datatype)
    {
        super(s, i1);
        j = s1;
        k = datatype;
    }

    private k(String s, int i1, String s1, DataType datatype, String s2)
    {
        this(s, i1, s1, datatype);
        l = s2;
    }
}
