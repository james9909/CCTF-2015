// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            ChatTable

public static final class y extends Enum
    implements Schema
{

    public static final z a;
    public static final z b;
    public static final z c;
    public static final z d;
    public static final z e;
    public static final z f;
    public static final z g;
    public static final z h;
    public static final z i;
    public static final z j;
    public static final z k;
    public static final z l;
    public static final z m;
    public static final z n;
    public static final z o;
    public static final z p;
    public static final z q;
    public static final z r;
    public static final z s;
    public static final z t;
    public static final z u;
    private static final z z[];
    private int v;
    private String w;
    private DataType x;
    private String y;

    static String a(y y1)
    {
        return y1.w;
    }

    static DataType b(w w1)
    {
        return w1.x;
    }

    public static x valueOf(String s1)
    {
        return (x)Enum.valueOf(com/snapchat/android/database/table/ChatTable$ChatSchema, s1);
    }

    public static x[] values()
    {
        return (x[])z.clone();
    }

    public DataType a()
    {
        return x;
    }

    public int b()
    {
        return v;
    }

    public String c()
    {
        return w;
    }

    public String d()
    {
        return y;
    }

    static 
    {
        a = new <init>("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("TYPE", 1, 1, "type", DataType.a);
        c = new <init>("ACK_ID", 2, 2, "ack_id", DataType.a);
        d = new <init>("RECIPIENT", 3, 3, "recipient", DataType.a);
        e = new <init>("SENDER", 4, 4, "sender", DataType.a);
        f = new <init>("IS_SAVED_BY_SENDER", 5, 5, "is_saved_by_sender", DataType.d);
        g = new <init>("IS_SAVED_BY_RECIPIENT", 6, 6, "is_saved_by_recipient", DataType.d);
        h = new <init>("IS_RELEASED_BY_RECIPIENT", 7, 7, "is_released_by_recipient", DataType.d);
        i = new <init>("SEND_RECEIVE_STATUS", 8, 8, "send_receive_status", DataType.a);
        j = new <init>("TIMESTAMP", 9, 9, "timestamp", DataType.b);
        k = new <init>("SEQ_NUM", 10, 10, "seq_num", DataType.b);
        l = new <init>("USER_TEXT", 11, 11, "text", DataType.a);
        m = new <init>("MEDIA_ID", 12, 12, "media_id", DataType.a);
        n = new <init>("CONVERSATION_ID", 13, 13, "conversation_id", DataType.a);
        o = new <init>("SENDER_MESSAGE_STATE_VERSION", 14, 14, "sender_message_state_version", DataType.b);
        p = new <init>("RECIPIENT_MESSAGE_STATE_VERSION", 15, 15, "recipient_message_state_version", DataType.b);
        q = new <init>("ITER_TOKEN", 16, 16, "iter_token", DataType.a);
        r = new <init>("HAS_LINKS", 17, 17, "has_links", DataType.d);
        s = new <init>("TARGET_VIEW", 18, 18, "target_view", DataType.a);
        t = new <init>("RELEASED_TIMESTAMP", 19, 19, "released_timestamp", DataType.b);
        u = new <init>("STATUS_TEXT", 20, 20, "status_text", DataType.a);
        y ay[] = new <init>[21];
        ay[0] = a;
        ay[1] = b;
        ay[2] = c;
        ay[3] = d;
        ay[4] = e;
        ay[5] = f;
        ay[6] = g;
        ay[7] = h;
        ay[8] = i;
        ay[9] = j;
        ay[10] = k;
        ay[11] = l;
        ay[12] = m;
        ay[13] = n;
        ay[14] = o;
        ay[15] = p;
        ay[16] = q;
        ay[17] = r;
        ay[18] = s;
        ay[19] = t;
        ay[20] = u;
        z = ay;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        v = j1;
        w = s2;
        x = datatype;
    }

    private x(String s1, int i1, int j1, String s2, DataType datatype, String s3)
    {
        super(s1, i1);
        v = j1;
        w = s2;
        x = datatype;
        y = s3;
    }
}
