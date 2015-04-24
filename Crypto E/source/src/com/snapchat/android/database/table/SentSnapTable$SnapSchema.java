// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            SentSnapTable

public static final class q extends Enum
    implements Schema
{

    public static final r a;
    public static final r b;
    public static final r c;
    public static final r d;
    public static final r e;
    public static final r f;
    public static final r g;
    public static final r h;
    public static final r i;
    public static final r j;
    public static final r k;
    public static final r l;
    public static final r m;
    private static final r r[];
    private int n;
    private String o;
    private DataType p;
    private String q;

    static String a(q q1)
    {
        return q1.o;
    }

    static DataType b(o o1)
    {
        return o1.p;
    }

    public static p valueOf(String s)
    {
        return (p)Enum.valueOf(com/snapchat/android/database/table/SentSnapTable$SnapSchema, s);
    }

    public static p[] values()
    {
        return (p[])r.clone();
    }

    public DataType a()
    {
        return p;
    }

    public int b()
    {
        return n;
    }

    public String c()
    {
        return o;
    }

    public String d()
    {
        return q;
    }

    static 
    {
        a = new <init>("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("CLIENT_ID", 1, 1, "ClientId", DataType.a);
        c = new <init>("TIMESTAMP", 2, 2, "Timestamp", DataType.b);
        d = new <init>("MEDIA_TYPE", 3, 3, "MediaType", DataType.b);
        e = new <init>("STATUS", 4, 4, "Status", DataType.a);
        f = new <init>("RECIPIENT", 5, 5, "Recipient", DataType.a);
        g = new <init>("DISPLAY_TIME", 6, 6, "DisplayTime", DataType.e);
        h = new <init>("URI", 7, 7, "Uri", DataType.a);
        i = new <init>("TIME_OF_LAST_SEND_ATTEMPT", 8, 8, "TimeOfLastSendAttempt", DataType.b);
        j = new <init>("IS_ZIPPED", 9, 9, "IsZipped", DataType.b);
        k = new <init>("CONVERSATION_ID", 10, 10, "ConversationId", DataType.a);
        l = new <init>("SENT_TIMESTAMP", 11, 11, "SentTimestamp", DataType.b);
        m = new <init>("TARGET_VIEW", 12, 12, "TargetView", DataType.a);
        q aq[] = new <init>[13];
        aq[0] = a;
        aq[1] = b;
        aq[2] = c;
        aq[3] = d;
        aq[4] = e;
        aq[5] = f;
        aq[6] = g;
        aq[7] = h;
        aq[8] = i;
        aq[9] = j;
        aq[10] = k;
        aq[11] = l;
        aq[12] = m;
        r = aq;
    }

    private (String s, int i1, int j1, String s1, DataType datatype)
    {
        super(s, i1);
        n = j1;
        o = s1;
        p = datatype;
    }

    private p(String s, int i1, int j1, String s1, DataType datatype, String s2)
    {
        super(s, i1);
        n = j1;
        o = s1;
        p = datatype;
        q = s2;
    }
}
