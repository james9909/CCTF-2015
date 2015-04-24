// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            StoryGroupTable

public static final class h extends Enum
    implements Schema
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    private static final i i[];
    private int e;
    private String f;
    private DataType g;
    private String h;

    static String a(h h1)
    {
        return h1.f;
    }

    static DataType b(f f1)
    {
        return f1.g;
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema, s);
    }

    public static g[] values()
    {
        return (g[])i.clone();
    }

    public DataType a()
    {
        return g;
    }

    public int b()
    {
        return e;
    }

    public String c()
    {
        return f;
    }

    public String d()
    {
        return h;
    }

    static 
    {
        a = new <init>("ID", 0, 0, "storyGroupId", DataType.a, "PRIMARY KEY");
        b = new <init>("DISPLAY_NAME", 1, 1, "displayName", DataType.a);
        c = new <init>("SHOULD_FETCH_CUSTOM_DESCRIPTION", 2, 2, "shouldFetchCustomDescription", DataType.d);
        d = new <init>("CUSTOM_DESCRIPTION", 3, 3, "customDescription", DataType.a);
        h ah[] = new <init>[4];
        ah[0] = a;
        ah[1] = b;
        ah[2] = c;
        ah[3] = d;
        i = ah;
    }

    private (String s, int j, int k, String s1, DataType datatype)
    {
        super(s, j);
        e = k;
        f = s1;
        g = datatype;
    }

    private g(String s, int j, int k, String s1, DataType datatype, String s2)
    {
        super(s, j);
        e = k;
        f = s1;
        g = datatype;
        h = s2;
    }
}
