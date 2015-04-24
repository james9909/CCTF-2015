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

public class ChannelViewStateTable extends DbTable
{
    public static final class ChannelViewStateSchema extends Enum
        implements Schema
    {

        public static final ChannelViewStateSchema a;
        public static final ChannelViewStateSchema b;
        private static final ChannelViewStateSchema f[];
        private String c;
        private DataType d;
        private String e;

        static String a(ChannelViewStateSchema channelviewstateschema)
        {
            return channelviewstateschema.c;
        }

        static DataType b(ChannelViewStateSchema channelviewstateschema)
        {
            return channelviewstateschema.d;
        }

        public static ChannelViewStateSchema valueOf(String s)
        {
            return (ChannelViewStateSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema, s);
        }

        public static ChannelViewStateSchema[] values()
        {
            return (ChannelViewStateSchema[])f.clone();
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
            a = new ChannelViewStateSchema("ID", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new ChannelViewStateSchema("TIME_LAST_VIEWED_MILLISECONDS", 1, "time_last_viewed_milli", DataType.b);
            ChannelViewStateSchema achannelviewstateschema[] = new ChannelViewStateSchema[2];
            achannelviewstateschema[0] = a;
            achannelviewstateschema[1] = b;
            f = achannelviewstateschema;
        }

        private ChannelViewStateSchema(String s, int i, String s1, DataType datatype)
        {
            super(s, i);
            c = s1;
            d = datatype;
        }

        private ChannelViewStateSchema(String s, int i, String s1, DataType datatype, String s2)
        {
            this(s, i, s1, datatype);
            e = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static final ChannelViewStateTable e = new ChannelViewStateTable();
    private final DiscoverViewTrackingManager f;

    protected ChannelViewStateTable()
    {
        this(DiscoverViewTrackingManager.a());
    }

    private ChannelViewStateTable(DiscoverViewTrackingManager discoverviewtrackingmanager)
    {
        f = discoverviewtrackingmanager;
    }

    public static ChannelViewStateTable b()
    {
        return e;
    }

    protected ContentValues a(com.snapchat.android.discover.model.DiscoverViewTrackingManager.ChannelViewState channelviewstate)
    {
        return (new ContentValuesBuilder()).a(ChannelViewStateSchema.a, channelviewstate.a()).a(ChannelViewStateSchema.b, channelviewstate.b()).a();
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((com.snapchat.android.discover.model.DiscoverViewTrackingManager.ChannelViewState)obj);
    }

    protected com.snapchat.android.discover.model.DiscoverViewTrackingManager.ChannelViewState a(Cursor cursor)
    {
        return new com.snapchat.android.discover.model.DiscoverViewTrackingManager.ChannelViewState(cursor.getString(ChannelViewStateSchema.a.b()), cursor.getLong(ChannelViewStateSchema.b.b()));
    }

    public String a()
    {
        return "ChannelViewState";
    }

    public void a(Context context)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("ChannelViewStateTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        Timber.c("ChannelViewStateTable", "Delete the table for ChannelViewState", new Object[0]);
        sqlitedatabase.delete("ChannelViewState", null, null);
        for (Iterator iterator = f.c().iterator(); iterator.hasNext(); a(sqlitedatabase, (com.snapchat.android.discover.model.DiscoverViewTrackingManager.ChannelViewState)iterator.next())) { }
        break MISSING_BLOCK_LABEL_103;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("ChannelViewStateTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
        Timber.c("ChannelViewStateTable", "Remove redundant entries in ChannelViewState", new Object[0]);
        sqlitedatabase.execSQL(SqlHelper.a("ChannelViewState", ChannelViewStateSchema.a, "PublisherChannel", PublisherChannelTable.PublisherChannelSchema.a));
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("ChannelViewStateTable", "safeUpdate - endTransaction", new Object[0]);
        return;
    }

    public void a(SQLiteDatabase sqlitedatabase, com.snapchat.android.discover.model.DiscoverViewTrackingManager.ChannelViewState channelviewstate)
    {
        for (ContentValues contentvalues = a(channelviewstate); contentvalues == null || sqlitedatabase.insertWithOnConflict("ChannelViewState", null, contentvalues, 5) != -1L;)
        {
            return;
        }

        throw new SQLiteException("Insertion in DB failed for ChannelViewState");
    }

    public void a(User user)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(user.I()).getReadableDatabase();
        Timber.c("ChannelViewStateTable", "populateUserObjectFromTable - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        List list = b(sqlitedatabase);
        f.b(list);
        sqlitedatabase.endTransaction();
        Timber.c("ChannelViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("ChannelViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
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
        cursor = sqlitedatabase.query("ChannelViewState", a, null, null, null, null, null);
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
        ChannelViewStateSchema achannelviewstateschema[] = ChannelViewStateSchema.values();
        int i = achannelviewstateschema.length;
        for (int j = 0; j < i; j++)
        {
            ChannelViewStateSchema channelviewstateschema = achannelviewstateschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(ChannelViewStateSchema.a(channelviewstateschema)).append(" ").append(ChannelViewStateSchema.b(channelviewstateschema).toString()).toString());
            String s = channelviewstateschema.d();
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
        return ChannelViewStateSchema.values();
    }

    static 
    {
        ChannelViewStateSchema achannelviewstateschema[] = ChannelViewStateSchema.values();
        int i = achannelviewstateschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            ChannelViewStateSchema channelviewstateschema = achannelviewstateschema[j];
            a[j] = achannelviewstateschema[j].c();
            b.put(channelviewstateschema.c(), channelviewstateschema.c());
        }

    }
}
