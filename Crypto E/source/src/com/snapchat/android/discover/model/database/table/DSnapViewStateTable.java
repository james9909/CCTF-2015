// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.SqlHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.ContentValuesBuilder;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.model.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.TextUtils;

public class DSnapViewStateTable extends DbTable
{
    public static final class DSnapViewStateSchema extends Enum
        implements Schema
    {

        public static final DSnapViewStateSchema a;
        public static final DSnapViewStateSchema b;
        private static final DSnapViewStateSchema f[];
        private String c;
        private DataType d;
        private String e;

        static String a(DSnapViewStateSchema dsnapviewstateschema)
        {
            return dsnapviewstateschema.c;
        }

        static DataType b(DSnapViewStateSchema dsnapviewstateschema)
        {
            return dsnapviewstateschema.d;
        }

        public static DSnapViewStateSchema valueOf(String s)
        {
            return (DSnapViewStateSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema, s);
        }

        public static DSnapViewStateSchema[] values()
        {
            return (DSnapViewStateSchema[])f.clone();
        }

        public DataType a()
        {
            return d;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return c;
        }

        public String d()
        {
            return e;
        }

        static 
        {
            a = new DSnapViewStateSchema("ID", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new DSnapViewStateSchema("TIME_LAST_VIEWED_MILLISECONDS", 1, "time_last_viewed_milli", DataType.b);
            DSnapViewStateSchema adsnapviewstateschema[] = new DSnapViewStateSchema[2];
            adsnapviewstateschema[0] = a;
            adsnapviewstateschema[1] = b;
            f = adsnapviewstateschema;
        }

        private DSnapViewStateSchema(String s, int i, String s1, DataType datatype)
        {
            super(s, i);
            c = s1;
            d = datatype;
        }

        private DSnapViewStateSchema(String s, int i, String s1, DataType datatype, String s2)
        {
            this(s, i, s1, datatype);
            e = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static final DSnapViewStateTable e = new DSnapViewStateTable();
    private final DiscoverViewTrackingManager f;

    protected DSnapViewStateTable()
    {
        this(DiscoverViewTrackingManager.a());
    }

    private DSnapViewStateTable(DiscoverViewTrackingManager discoverviewtrackingmanager)
    {
        f = discoverviewtrackingmanager;
    }

    public static DSnapViewStateTable b()
    {
        return e;
    }

    protected ContentValues a(com.snapchat.android.discover.model.DiscoverViewTrackingManager.DSnapViewState dsnapviewstate)
    {
        return (new ContentValuesBuilder()).a(DSnapViewStateSchema.a, dsnapviewstate.a()).a(DSnapViewStateSchema.b, dsnapviewstate.b()).a();
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((com.snapchat.android.discover.model.DiscoverViewTrackingManager.DSnapViewState)obj);
    }

    protected com.snapchat.android.discover.model.DiscoverViewTrackingManager.DSnapViewState a(Cursor cursor)
    {
        return new com.snapchat.android.discover.model.DiscoverViewTrackingManager.DSnapViewState(cursor.getString(DSnapViewStateSchema.a.b()), cursor.getLong(DSnapViewStateSchema.b.b()));
    }

    public String a()
    {
        return "DSnapViewState";
    }

    public void a(Context context)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("DSnapViewStateTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        Timber.c("DSnapViewStateTable", "Delete the table for DSnapViewState", new Object[0]);
        sqlitedatabase.delete("DSnapViewState", null, null);
        for (Iterator iterator = f.d().iterator(); iterator.hasNext(); a(sqlitedatabase, (com.snapchat.android.discover.model.DiscoverViewTrackingManager.DSnapViewState)iterator.next())) { }
        break MISSING_BLOCK_LABEL_103;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("DSnapViewStateTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
        Timber.c("DSnapViewStateTable", "Remove redundant entries in DSnapViewState", new Object[0]);
        sqlitedatabase.execSQL(SqlHelper.a("DSnapViewState", DSnapViewStateSchema.a, "EditionChunk", EditionChunkTable.EditionChunkSchema.a));
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("DSnapViewStateTable", "safeUpdate - endTransaction", new Object[0]);
        return;
    }

    public void a(SQLiteDatabase sqlitedatabase, com.snapchat.android.discover.model.DiscoverViewTrackingManager.DSnapViewState dsnapviewstate)
    {
        for (ContentValues contentvalues = a(dsnapviewstate); contentvalues == null || sqlitedatabase.insertWithOnConflict("DSnapViewState", null, contentvalues, 5) != -1L;)
        {
            return;
        }

        throw new SQLiteException("Insertion in DB failed for DSnapViewState");
    }

    public void a(User user)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(user.I()).getReadableDatabase();
        Timber.c("DSnapViewStateTable", "populateUserObjectFromTable - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        List list = b(sqlitedatabase);
        f.c(list);
        sqlitedatabase.endTransaction();
        Timber.c("DSnapViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("DSnapViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
        throw exception;
    }

    protected Collection b(User user)
    {
        return null;
    }

    protected List b(SQLiteDatabase sqlitedatabase)
    {
        ArrayList arraylist;
        Cursor cursor;
        arraylist = new ArrayList();
        cursor = sqlitedatabase.query("DSnapViewState", a, null, null, null, null, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                arraylist.add(a(cursor));
                flag = cursor.moveToNext();
            } while (flag);
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return arraylist;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        DSnapViewStateSchema adsnapviewstateschema[] = DSnapViewStateSchema.values();
        int i = adsnapviewstateschema.length;
        for (int j = 0; j < i; j++)
        {
            DSnapViewStateSchema dsnapviewstateschema = adsnapviewstateschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(DSnapViewStateSchema.a(dsnapviewstateschema)).append(" ").append(DSnapViewStateSchema.b(dsnapviewstateschema).toString()).toString());
            String s = dsnapviewstateschema.d();
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
        return DSnapViewStateSchema.values();
    }

    static 
    {
        DSnapViewStateSchema adsnapviewstateschema[] = DSnapViewStateSchema.values();
        int i = adsnapviewstateschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            DSnapViewStateSchema dsnapviewstateschema = adsnapviewstateschema[j];
            a[j] = adsnapviewstateschema[j].c();
            b.put(dsnapviewstateschema.c(), dsnapviewstateschema.c());
        }

    }
}
