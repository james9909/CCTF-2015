// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.schema;

import com.snapchat.android.database.DataType;

// Referenced classes of package com.snapchat.android.database.schema:
//            Schema

public final class HttpMetricSchema extends Enum
    implements Schema
{

    public static final HttpMetricSchema a;
    public static final HttpMetricSchema b;
    public static final HttpMetricSchema c;
    public static final HttpMetricSchema d;
    public static final HttpMetricSchema e;
    public static final HttpMetricSchema f;
    public static final HttpMetricSchema g;
    public static final HttpMetricSchema h;
    public static final HttpMetricSchema i;
    private static final HttpMetricSchema m[];
    private String j;
    private DataType k;
    private String l;

    private HttpMetricSchema(String s, int i1, String s1, DataType datatype)
    {
        super(s, i1);
        j = s1;
        k = datatype;
    }

    private HttpMetricSchema(String s, int i1, String s1, DataType datatype, String s2)
    {
        super(s, i1);
        j = s1;
        k = datatype;
        l = s2;
    }

    public static HttpMetricSchema valueOf(String s)
    {
        return (HttpMetricSchema)Enum.valueOf(com/snapchat/android/database/schema/HttpMetricSchema, s);
    }

    public static HttpMetricSchema[] values()
    {
        return (HttpMetricSchema[])m.clone();
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
        a = new HttpMetricSchema("ID", 0, "_id", DataType.b, "PRIMARY KEY AUTOINCREMENT");
        b = new HttpMetricSchema("TIMESTAMP", 1, "timestamp", DataType.b);
        c = new HttpMetricSchema("METHOD", 2, "method", DataType.a);
        d = new HttpMetricSchema("PATH", 3, "path", DataType.a);
        e = new HttpMetricSchema("SENT_BYTES", 4, "sent_bytes", DataType.b);
        f = new HttpMetricSchema("RECEIVED_BYTES", 5, "received_bytes", DataType.b);
        g = new HttpMetricSchema("DURATION", 6, "duration", DataType.b);
        h = new HttpMetricSchema("STATUS_LINE", 7, "status_line", DataType.a);
        i = new HttpMetricSchema("STATUS_CODE", 8, "status_code", DataType.b);
        HttpMetricSchema ahttpmetricschema[] = new HttpMetricSchema[9];
        ahttpmetricschema[0] = a;
        ahttpmetricschema[1] = b;
        ahttpmetricschema[2] = c;
        ahttpmetricschema[3] = d;
        ahttpmetricschema[4] = e;
        ahttpmetricschema[5] = f;
        ahttpmetricschema[6] = g;
        ahttpmetricschema[7] = h;
        ahttpmetricschema[8] = i;
        m = ahttpmetricschema;
    }
}
