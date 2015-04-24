// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            NotificationTable

public static final class l extends Enum
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
    private static final n n[];
    private int j;
    private String k;
    private DataType l;
    private String m;

    static String a(l l1)
    {
        return l1.k;
    }

    static DataType b(k k1)
    {
        return k1.l;
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/snapchat/android/database/table/NotificationTable$NotificationSchema, s);
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
        return j;
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
        a = new <init>("ID", 0, 0, "_id", DataType.a);
        b = new <init>("TIMESTAMP", 1, 1, "timestamp", DataType.b);
        c = new <init>("SENDER", 2, 2, "sender", DataType.a);
        d = new <init>("SENDER_USERNAME", 3, 3, "sender_username", DataType.a);
        e = new <init>("TEXT", 4, 4, "text", DataType.a);
        f = new <init>("CHAT_MESSAGE_ID", 5, 5, "chat_message_id", DataType.a);
        g = new <init>("TYPE", 6, 6, "type", DataType.a);
        h = new <init>("NINJA_MODE", 7, 7, "ninja_mode", DataType.b);
        i = new <init>("CASH_AMOUNT", 8, 8, "cash_amount", DataType.a);
        m am[] = new <init>[9];
        am[0] = a;
        am[1] = b;
        am[2] = c;
        am[3] = d;
        am[4] = e;
        am[5] = f;
        am[6] = g;
        am[7] = h;
        am[8] = i;
        n = am;
    }

    private (String s, int i1, int j1, String s1, DataType datatype)
    {
        super(s, i1);
        j = j1;
        k = s1;
        l = datatype;
    }
}
