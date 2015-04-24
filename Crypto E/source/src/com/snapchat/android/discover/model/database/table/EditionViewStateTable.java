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

public class EditionViewStateTable extends DbTable
{
    public static final class EditionViewStateSchema extends Enum
        implements Schema
    {

        public static final EditionViewStateSchema a;
        public static final EditionViewStateSchema b;
        public static final EditionViewStateSchema c;
        private static final EditionViewStateSchema g[];
        private String d;
        private DataType e;
        private String f;

        static String a(EditionViewStateSchema editionviewstateschema)
        {
            return editionviewstateschema.d;
        }

        static DataType b(EditionViewStateSchema editionviewstateschema)
        {
            return editionviewstateschema.e;
        }

        public static EditionViewStateSchema valueOf(String s)
        {
            return (EditionViewStateSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema, s);
        }

        public static EditionViewStateSchema[] values()
        {
            return (EditionViewStateSchema[])g.clone();
        }

        public DataType a()
        {
            return e;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return d;
        }

        public String d()
        {
            return f;
        }

        static 
        {
            a = new EditionViewStateSchema("ID", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new EditionViewStateSchema("LAST_INDEX_VIEWED", 1, "last_index_viewed", DataType.b);
            c = new EditionViewStateSchema("VIEWED_ALL_DSNAPS", 2, "viewed_all_dsnaps", DataType.d);
            EditionViewStateSchema aeditionviewstateschema[] = new EditionViewStateSchema[3];
            aeditionviewstateschema[0] = a;
            aeditionviewstateschema[1] = b;
            aeditionviewstateschema[2] = c;
            g = aeditionviewstateschema;
        }

        private EditionViewStateSchema(String s, int i, String s1, DataType datatype)
        {
            super(s, i);
            d = s1;
            e = datatype;
        }

        private EditionViewStateSchema(String s, int i, String s1, DataType datatype, String s2)
        {
            this(s, i, s1, datatype);
            f = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static final EditionViewStateTable e = new EditionViewStateTable();
    private final DiscoverViewTrackingManager f;

    protected EditionViewStateTable()
    {
        this(DiscoverViewTrackingManager.a());
    }

    private EditionViewStateTable(DiscoverViewTrackingManager discoverviewtrackingmanager)
    {
        f = discoverviewtrackingmanager;
    }

    public static EditionViewStateTable b()
    {
        return e;
    }

    protected ContentValues a(com.snapchat.android.discover.model.DiscoverViewTrackingManager.EditionViewState editionviewstate)
    {
        return (new ContentValuesBuilder()).a(EditionViewStateSchema.a, editionviewstate.a()).a(EditionViewStateSchema.b, editionviewstate.b()).a(EditionViewStateSchema.c, editionviewstate.c()).a();
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((com.snapchat.android.discover.model.DiscoverViewTrackingManager.EditionViewState)obj);
    }

    protected com.snapchat.android.discover.model.DiscoverViewTrackingManager.EditionViewState a(Cursor cursor)
    {
        String s = cursor.getString(EditionViewStateSchema.a.b());
        int i = cursor.getInt(EditionViewStateSchema.b.b());
        boolean flag;
        if (cursor.getInt(EditionViewStateSchema.c.b()) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return (new com.snapchat.android.discover.model.DiscoverViewTrackingManager.EditionViewState.Builder()).a(s).a(i).a(flag).a();
    }

    public String a()
    {
        return "EditionViewState";
    }

    public void a(Context context)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("EditionViewStateTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        Timber.c("EditionViewStateTable", "Delete the table for EditionViewState", new Object[0]);
        sqlitedatabase.delete("EditionViewState", null, null);
        for (Iterator iterator = f.b().iterator(); iterator.hasNext(); a(sqlitedatabase, (com.snapchat.android.discover.model.DiscoverViewTrackingManager.EditionViewState)iterator.next())) { }
        break MISSING_BLOCK_LABEL_103;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("EditionViewStateTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
        Timber.c("EditionViewStateTable", "Remove redundant entries in EditionViewState", new Object[0]);
        sqlitedatabase.execSQL(SqlHelper.a("EditionViewState", EditionViewStateSchema.a, "Edition", EditionTable.EditionSchema.a));
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("EditionViewStateTable", "safeUpdate - endTransaction", new Object[0]);
        return;
    }

    public void a(SQLiteDatabase sqlitedatabase, com.snapchat.android.discover.model.DiscoverViewTrackingManager.EditionViewState editionviewstate)
    {
        for (ContentValues contentvalues = a(editionviewstate); contentvalues == null || sqlitedatabase.insertWithOnConflict("EditionViewState", null, contentvalues, 5) != -1L;)
        {
            return;
        }

        throw new SQLiteException("Insertion in DB failed for EditionViewState");
    }

    public void a(User user)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(user.I()).getReadableDatabase();
        Timber.c("EditionViewStateTable", "populateUserObjectFromTable - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        List list = b(sqlitedatabase);
        f.a(list);
        sqlitedatabase.endTransaction();
        Timber.c("EditionViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("EditionViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
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
        cursor = sqlitedatabase.query("EditionViewState", a, null, null, null, null, null);
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
        EditionViewStateSchema aeditionviewstateschema[] = EditionViewStateSchema.values();
        int i = aeditionviewstateschema.length;
        for (int j = 0; j < i; j++)
        {
            EditionViewStateSchema editionviewstateschema = aeditionviewstateschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(EditionViewStateSchema.a(editionviewstateschema)).append(" ").append(EditionViewStateSchema.b(editionviewstateschema).toString()).toString());
            String s = editionviewstateschema.d();
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
        return EditionViewStateSchema.values();
    }

    static 
    {
        EditionViewStateSchema aeditionviewstateschema[] = EditionViewStateSchema.values();
        int i = aeditionviewstateschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            EditionViewStateSchema editionviewstateschema = aeditionviewstateschema[j];
            a[j] = aeditionviewstateschema[j].c();
            b.put(editionviewstateschema.c(), editionviewstateschema.c());
        }

    }
}
