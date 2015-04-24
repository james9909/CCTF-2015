// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            ClearedChatIdsTable

public static final class g extends Enum
    implements Schema
{

    public static final h a;
    public static final h b;
    public static final h c;
    private static final h h[];
    private int d;
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
        return (f)Enum.valueOf(com/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema, s);
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
        return d;
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
        a = new <init>("ID", 0, 0, "_id", DataType.a, "PRIMARY_KEY");
        b = new <init>("CONVERSATION_ID", 1, 1, "conversationId", DataType.a);
        c = new <init>("TIMESTAMP", 2, 2, "timestamp", DataType.b);
        g ag[] = new <init>[3];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        h = ag;
    }

    private (String s, int i, int j, String s1, DataType datatype)
    {
        super(s, i);
        d = j;
        e = s1;
        f = datatype;
    }

    private f(String s, int i, int j, String s1, DataType datatype, String s2)
    {
        super(s, i);
        d = j;
        e = s1;
        f = datatype;
        g = s2;
    }
}
