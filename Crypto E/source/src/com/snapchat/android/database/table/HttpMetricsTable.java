// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.HttpMetricSchema;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.User;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public class HttpMetricsTable extends DbTable
{

    public static final String a[];
    public static final HashMap b;
    private static HttpMetricsTable e;
    private static final SnapchatServiceManager f = SnapchatServiceManager.a();

    private HttpMetricsTable()
    {
    }

    public static long a(Context context, ContentValues contentvalues)
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("HttpMetricsTable", (new StringBuilder()).append("save ").append(contentvalues).toString(), new Object[0]);
        long l = sqlitedatabase.insertWithOnConflict("HttpMetrics", null, contentvalues, 5);
        if (b(sqlitedatabase) > 200L)
        {
            a(sqlitedatabase, 20);
        }
        context.getContentResolver().notifyChange(SnapchatProvider.a, null);
        return l;
    }

    public static void a(Context context)
    {
        f.e(context);
    }

    public static void a(Context context, long l, String s, String s1, long l1, long l2, long l3, String s2, int i)
    {
        if (ReleaseManager.f())
        {
            ContentValues contentvalues = (new ContentValuesBuilder()).a(HttpMetricSchema.b, l).a(HttpMetricSchema.c, s).a(HttpMetricSchema.d, s1).a(HttpMetricSchema.e, l1).a(HttpMetricSchema.f, l2).a(HttpMetricSchema.g, l3).a(HttpMetricSchema.h, s2).a(HttpMetricSchema.i, i).a();
            f.a(context, contentvalues);
        }
    }

    public static void a(Context context, long l, String s, String s1, long l1, String s2)
    {
        if (ReleaseManager.f())
        {
            a(context, l, s, s1, 0L, 0L, l1, s2, 0);
        }
    }

    public static void a(SQLiteDatabase sqlitedatabase, int i)
    {
        Cursor cursor;
        String as[] = new String[1];
        as[0] = HttpMetricSchema.b.c();
        cursor = sqlitedatabase.query("HttpMetrics", as, null, null, null, null, HttpMetricSchema.b.c(), String.valueOf(i));
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        if (cursor.moveToLast())
        {
            long l = cursor.getLong(0);
            String s = (new StringBuilder()).append(HttpMetricSchema.b.c()).append(" <=?").toString();
            String as1[] = new String[1];
            as1[0] = String.valueOf(l);
            sqlitedatabase.delete("HttpMetrics", s, as1);
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    public static long b(SQLiteDatabase sqlitedatabase)
    {
        return DatabaseUtils.longForQuery(sqlitedatabase, "SELECT COUNT() FROM HttpMetrics", null);
    }

    public static HttpMetricsTable b()
    {
        com/snapchat/android/database/table/HttpMetricsTable;
        JVM INSTR monitorenter ;
        HttpMetricsTable httpmetricstable;
        if (e == null)
        {
            e = new HttpMetricsTable();
        }
        httpmetricstable = e;
        com/snapchat/android/database/table/HttpMetricsTable;
        JVM INSTR monitorexit ;
        return httpmetricstable;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Context context)
    {
        DatabaseHelper.a(context).getWritableDatabase().delete("HttpMetrics", null, null);
        context.getContentResolver().notifyChange(SnapchatProvider.a, null);
    }

    protected ContentValues a(Object obj)
    {
        return null;
    }

    protected Snap a(Cursor cursor)
    {
        return null;
    }

    public String a()
    {
        return "HttpMetrics";
    }

    public void a(User user)
    {
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return null;
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        HttpMetricSchema ahttpmetricschema[] = HttpMetricSchema.values();
        int i = ahttpmetricschema.length;
        for (int j = 0; j < i; j++)
        {
            HttpMetricSchema httpmetricschema = ahttpmetricschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(httpmetricschema.c()).append(" ").append(httpmetricschema.a().toString()).toString());
            String s = httpmetricschema.d();
            if (!TextUtils.isEmpty(s))
            {
                stringbuilder.append(" ");
                stringbuilder.append(s);
            }
        }

        return stringbuilder.toString();
    }

    public void c(User user)
    {
    }

    public Schema[] d()
    {
        return HttpMetricSchema.values();
    }

    static 
    {
        int i = 0;
        HttpMetricSchema ahttpmetricschema[] = HttpMetricSchema.values();
        int j = ahttpmetricschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = ahttpmetricschema[k].c();
        }

        b = new HashMap();
        HttpMetricSchema ahttpmetricschema1[] = HttpMetricSchema.values();
        for (int l = ahttpmetricschema1.length; i < l; i++)
        {
            HttpMetricSchema httpmetricschema = ahttpmetricschema1[i];
            b.put(httpmetricschema.c(), httpmetricschema.c());
        }

    }
}
