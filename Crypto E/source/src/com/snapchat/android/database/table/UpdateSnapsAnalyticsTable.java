// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import com.snapchat.android.model.server.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public class UpdateSnapsAnalyticsTable extends DbTable
{
    public static final class AnalyticsEventSchema extends Enum
        implements Schema
    {

        public static final AnalyticsEventSchema a;
        public static final AnalyticsEventSchema b;
        public static final AnalyticsEventSchema c;
        private static final AnalyticsEventSchema g[];
        private int d;
        private String e;
        private DataType f;

        static String a(AnalyticsEventSchema analyticseventschema)
        {
            return analyticseventschema.e;
        }

        static DataType b(AnalyticsEventSchema analyticseventschema)
        {
            return analyticseventschema.f;
        }

        public static AnalyticsEventSchema valueOf(String s)
        {
            return (AnalyticsEventSchema)Enum.valueOf(com/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema, s);
        }

        public static AnalyticsEventSchema[] values()
        {
            return (AnalyticsEventSchema[])g.clone();
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
            return null;
        }

        static 
        {
            a = new AnalyticsEventSchema("EVENT_NAME", 0, 1, "EventName", DataType.a);
            b = new AnalyticsEventSchema("EVENT_PARAMETERS", 1, 2, "EventParameters", DataType.a);
            c = new AnalyticsEventSchema("EVENT_TIMESTAMP", 2, 3, "EventTimestamp", DataType.a);
            AnalyticsEventSchema aanalyticseventschema[] = new AnalyticsEventSchema[3];
            aanalyticseventschema[0] = a;
            aanalyticseventschema[1] = b;
            aanalyticseventschema[2] = c;
            g = aanalyticseventschema;
        }

        private AnalyticsEventSchema(String s, int i, int j, String s1, DataType datatype)
        {
            super(s, i);
            d = j;
            e = s1;
            f = datatype;
        }
    }


    private static UpdateSnapsAnalyticsTable b;
    protected UpdateSnapsAnalyticsPlatform a;

    private UpdateSnapsAnalyticsTable()
    {
        SnapchatApplication.e().a(this);
    }

    public static UpdateSnapsAnalyticsTable b()
    {
        com/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
        JVM INSTR monitorenter ;
        UpdateSnapsAnalyticsTable updatesnapsanalyticstable;
        if (b == null)
        {
            b = new UpdateSnapsAnalyticsTable();
        }
        updatesnapsanalyticstable = b;
        com/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
        JVM INSTR monitorexit ;
        return updatesnapsanalyticstable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(AnalyticsEvent analyticsevent)
    {
        if (analyticsevent == null)
        {
            return null;
        } else
        {
            ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
            contentvaluesbuilder.a(AnalyticsEventSchema.a, analyticsevent.getEventName());
            contentvaluesbuilder.a(AnalyticsEventSchema.b, analyticsevent.getParamsAsString());
            contentvaluesbuilder.a(AnalyticsEventSchema.c, Double.toString(analyticsevent.getTimeStampInSeconds()));
            return contentvaluesbuilder.a();
        }
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((AnalyticsEvent)obj);
    }

    protected AnalyticsEvent a(Cursor cursor)
    {
        String s = cursor.getString(AnalyticsEventSchema.a.b());
        String s1 = cursor.getString(AnalyticsEventSchema.b.b());
        String s2 = cursor.getString(AnalyticsEventSchema.c.b());
        com.snapchat.android.model.server.AnalyticsEvent.Builder builder = new com.snapchat.android.model.server.AnalyticsEvent.Builder(s);
        builder.addParamsFromString(s1);
        builder.setTimestampInSeconds(Double.valueOf(s2).doubleValue());
        return builder.build();
    }

    public String a()
    {
        return "AnalyticsEvents";
    }

    public void a(User user)
    {
        a.b(a(null, null));
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return new ArrayList(a.b());
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        AnalyticsEventSchema aanalyticseventschema[] = AnalyticsEventSchema.values();
        int i = aanalyticseventschema.length;
        for (int j = 0; j < i; j++)
        {
            AnalyticsEventSchema analyticseventschema = aanalyticseventschema[j];
            s = (new StringBuilder()).append(s).append(",").append(AnalyticsEventSchema.a(analyticseventschema)).append(" ").append(AnalyticsEventSchema.b(analyticseventschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return AnalyticsEventSchema.values();
    }
}
