// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            PublisherAndEditionVirtualTable

public static final class n extends Enum
    implements Schema
{

    public static final o a;
    public static final o b;
    public static final o c;
    public static final o d;
    public static final o e;
    public static final o f;
    public static final o g;
    public static final o h;
    public static final o i;
    public static final o j;
    public static final o k;
    private static final o o[];
    private String l;
    private DataType m;
    private String n;

    public static n valueOf(String s)
    {
        return (n)Enum.valueOf(com/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema, s);
    }

    public static n[] values()
    {
        return (n[])o.clone();
    }

    public DataType a()
    {
        return m;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return l;
    }

    public String d()
    {
        return n;
    }

    static 
    {
        a = new <init>("PUBLISHER_NAME", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("PRIMARY_COLOR", 1, "primary_color", DataType.a);
        c = new <init>("SECONDARY_COLOR", 2, "secondary_color", DataType.a);
        d = new <init>("FILLED_ICON", 3, "filled_icon", DataType.a);
        e = new <init>("INVERTED_ICON", 4, "inverted_icon", DataType.a);
        f = new <init>("LOADING_ICON", 5, "loading_icon", DataType.a);
        g = new <init>("INTRO_MOVIE", 6, "intro_movie", DataType.a);
        h = new <init>("POSITION", 7, "position", DataType.b);
        i = new <init>("ENABLED", 8, "enabled", DataType.d);
        j = new <init>("CURRENT_EDITION_ID", 9, "current_edition_id", DataType.a);
        k = new <init>("NUM_CHUNKS", 10, "num_chunks", DataType.b);
        n an[] = new <init>[11];
        an[0] = a;
        an[1] = b;
        an[2] = c;
        an[3] = d;
        an[4] = e;
        an[5] = f;
        an[6] = g;
        an[7] = h;
        an[8] = i;
        an[9] = j;
        an[10] = k;
        o = an;
    }

    private (String s, int i1, String s1, DataType datatype)
    {
        super(s, i1);
        l = s1;
        m = datatype;
    }

    private m(String s, int i1, String s1, DataType datatype, String s2)
    {
        this(s, i1, s1, datatype);
        n = s2;
    }
}
