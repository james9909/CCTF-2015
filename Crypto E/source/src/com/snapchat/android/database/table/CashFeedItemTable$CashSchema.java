// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            CashFeedItemTable

public static final class z extends Enum
    implements Schema
{

    private static final A A[];
    public static final A a;
    public static final A b;
    public static final A c;
    public static final A d;
    public static final A e;
    public static final A f;
    public static final A g;
    public static final A h;
    public static final A i;
    public static final A j;
    public static final A k;
    public static final A l;
    public static final A m;
    public static final A n;
    public static final A o;
    public static final A p;
    public static final A q;
    public static final A r;
    public static final A s;
    public static final A t;
    public static final A u;
    public static final A v;
    private int w;
    private String x;
    private DataType y;
    private String z;

    static String a(z z1)
    {
        return z1.x;
    }

    static DataType b(x x1)
    {
        return x1.y;
    }

    public static y valueOf(String s1)
    {
        return (y)Enum.valueOf(com/snapchat/android/database/table/CashFeedItemTable$CashSchema, s1);
    }

    public static y[] values()
    {
        return (y[])A.clone();
    }

    public DataType a()
    {
        return y;
    }

    public int b()
    {
        return w;
    }

    public String c()
    {
        return x;
    }

    public String d()
    {
        return z;
    }

    static 
    {
        a = new <init>("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("RECIPIENT", 1, 1, "recipient", DataType.a);
        c = new <init>("SENDER", 2, 2, "sender", DataType.a);
        d = new <init>("RECIPIENT_ID", 3, 3, "recipient_id", DataType.a);
        e = new <init>("SENDER_ID", 4, 4, "sender_id", DataType.a);
        f = new <init>("AMOUNT", 5, 5, "amount", DataType.b);
        g = new <init>("CURRENCY_CODE", 6, 6, "currency_code", DataType.a);
        h = new <init>("USER_TEXT", 7, 7, "text", DataType.a);
        i = new <init>("IS_VIEWED_BY_SENDER", 8, 8, "sender_viewed", DataType.d);
        j = new <init>("IS_VIEWED_BY_RECIPIENT", 9, 9, "recipient_viewed", DataType.d);
        k = new <init>("IS_SAVED_BY_SENDER", 10, 10, "sender_saved", DataType.d);
        l = new <init>("IS_SAVED_BY_RECIPIENT", 11, 11, "recipient_saved", DataType.d);
        m = new <init>("SENDER_SAVE_VERSION", 12, 12, "sender_save_version", DataType.b);
        n = new <init>("RECIPIENT_SAVE_VERSION", 13, 13, "recipient_save_version", DataType.b);
        o = new <init>("STATUS", 14, 14, "status", DataType.a);
        p = new <init>("TIMESTAMP", 15, 15, "timestamp", DataType.b);
        q = new <init>("UPDATED_TIMESTAMP", 16, 16, "updated_timestamp", DataType.b);
        r = new <init>("IS_FROM_SERVER", 17, 17, "is_from_server", DataType.d);
        s = new <init>("ITER_TOKEN", 18, 18, "iter_token", DataType.a);
        t = new <init>("TARGET_VIEW", 19, 19, "target_view", DataType.a);
        u = new <init>("SEND_RECEIVE_STATUS", 20, 20, "send_receive_status", DataType.a);
        v = new <init>("PROVIDER", 21, 21, "provider", DataType.a);
        z az[] = new <init>[22];
        az[0] = a;
        az[1] = b;
        az[2] = c;
        az[3] = d;
        az[4] = e;
        az[5] = f;
        az[6] = g;
        az[7] = h;
        az[8] = i;
        az[9] = j;
        az[10] = k;
        az[11] = l;
        az[12] = m;
        az[13] = n;
        az[14] = o;
        az[15] = p;
        az[16] = q;
        az[17] = r;
        az[18] = s;
        az[19] = t;
        az[20] = u;
        az[21] = v;
        A = az;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        w = j1;
        x = s2;
        y = datatype;
    }

    private y(String s1, int i1, int j1, String s2, DataType datatype, String s3)
    {
        super(s1, i1);
        w = j1;
        x = s2;
        y = datatype;
        z = s3;
    }
}
