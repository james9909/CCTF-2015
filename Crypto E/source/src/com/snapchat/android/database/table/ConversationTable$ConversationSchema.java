// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            ConversationTable

public static final class v extends Enum
    implements Schema
{

    public static final w a;
    public static final w b;
    public static final w c;
    public static final w d;
    public static final w e;
    public static final w f;
    public static final w g;
    public static final w h;
    public static final w i;
    public static final w j;
    public static final w k;
    public static final w l;
    public static final w m;
    public static final w n;
    public static final w o;
    public static final w p;
    public static final w q;
    public static final w r;
    private static final w w[];
    private int s;
    private String t;
    private DataType u;
    private String v;

    static String a(v v1)
    {
        return v1.t;
    }

    static DataType b(t t1)
    {
        return t1.u;
    }

    public static u valueOf(String s1)
    {
        return (u)Enum.valueOf(com/snapchat/android/database/table/ConversationTable$ConversationSchema, s1);
    }

    public static u[] values()
    {
        return (u[])w.clone();
    }

    public DataType a()
    {
        return u;
    }

    public int b()
    {
        return s;
    }

    public String c()
    {
        return t;
    }

    public String d()
    {
        return v;
    }

    static 
    {
        a = new <init>("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("SENDER", 1, 1, "sender", DataType.a);
        c = new <init>("RECIPIENT", 2, 2, "recipient", DataType.a);
        d = new <init>("TIMESTAMP", 3, 3, "timestamp", DataType.b);
        e = new <init>("HAS_UNVIEWED_CHATS", 4, 4, "has_unviewed_chats", DataType.d);
        f = new <init>("HAS_UNVIEWED_SNAPS", 5, 5, "has_unviewed_snaps", DataType.d);
        g = new <init>("HAS_UNVIEWED_AUDIO_SNAPS", 6, 6, "has_unviewed_audio_snap", DataType.d);
        h = new <init>("HAS_UNVIEWED_CASH", 7, 7, "has_unviewed_cash", DataType.d);
        i = new <init>("ITER_TOKEN", 8, 8, "iter_token", DataType.a);
        j = new <init>("CHATS_ITER_TOKEN", 9, 9, "chats_iter_token", DataType.a);
        k = new <init>("LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED", 10, 10, "last_seq_num_of_my_chat_they_released", DataType.b);
        l = new <init>("LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED", 11, 11, "last_seq_num_of_their_chat_i_released", DataType.b);
        m = new <init>("LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED", 12, 12, "last_seq_num_of_my_chat_i_deleted", DataType.b);
        n = new <init>("LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED", 13, 13, "last_seq_num_of_their_chat_i_deleted", DataType.b);
        o = new <init>("LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED", 14, 14, "last_timestamp_of_sent_snap_read_receipt_i_deleted", DataType.b);
        p = new <init>("LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED", 15, 15, "last_timestamp_of_received_snap_read_receipt_i_deleted", DataType.b);
        q = new <init>("MY_LAST_SEQ_NUM", 16, 16, "my_last_seq_num", DataType.b);
        r = new <init>("THEIR_LAST_SEQ_NUM", 17, 17, "their_last_seq_num", DataType.b);
        v av[] = new <init>[18];
        av[0] = a;
        av[1] = b;
        av[2] = c;
        av[3] = d;
        av[4] = e;
        av[5] = f;
        av[6] = g;
        av[7] = h;
        av[8] = i;
        av[9] = j;
        av[10] = k;
        av[11] = l;
        av[12] = m;
        av[13] = n;
        av[14] = o;
        av[15] = p;
        av[16] = q;
        av[17] = r;
        w = av;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        s = j1;
        t = s2;
        u = datatype;
    }

    private u(String s1, int i1, int j1, String s2, DataType datatype, String s3)
    {
        super(s1, i1);
        s = j1;
        t = s2;
        u = datatype;
        v = s3;
    }
}
