// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.SqlHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.ContentValuesBuilder;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.User;
import com.snapchat.android.util.system.Clock;
import com.snapchat.data.gson.discover.EditionChunkResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            EditionChunkTable

public class EditionTable extends DbTable
{
    public static final class EditionSchema extends Enum
        implements Schema
    {

        public static final EditionSchema a;
        public static final EditionSchema b;
        public static final EditionSchema c;
        public static final EditionSchema d;
        private static final EditionSchema h[];
        private String e;
        private DataType f;
        private String g;

        static String a(EditionSchema editionschema)
        {
            return editionschema.e;
        }

        static DataType b(EditionSchema editionschema)
        {
            return editionschema.f;
        }

        public static EditionSchema valueOf(String s)
        {
            return (EditionSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/EditionTable$EditionSchema, s);
        }

        public static EditionSchema[] values()
        {
            return (EditionSchema[])h.clone();
        }

        public DataType a()
        {
            return f;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return e;
        }

        public String d()
        {
            return g;
        }

        static 
        {
            a = new EditionSchema("ID", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new EditionSchema("PUBLISHER_NAME", 1, "publisher_name", DataType.a);
            c = new EditionSchema("TIME_ADDED", 2, "time_added", DataType.b);
            d = new EditionSchema("ACTIVE", 3, "active", DataType.d);
            EditionSchema aeditionschema[] = new EditionSchema[4];
            aeditionschema[0] = a;
            aeditionschema[1] = b;
            aeditionschema[2] = c;
            aeditionschema[3] = d;
            h = aeditionschema;
        }

        private EditionSchema(String s, int i, String s1, DataType datatype)
        {
            super(s, i);
            e = s1;
            f = datatype;
        }

        private EditionSchema(String s, int i, String s1, DataType datatype, String s2)
        {
            this(s, i, s1, datatype);
            g = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static EditionTable e;
    private final EditionChunkTable f;
    private final Clock g;

    private EditionTable()
    {
        this(new Clock(), EditionChunkTable.b());
    }

    protected EditionTable(Clock clock, EditionChunkTable editionchunktable)
    {
        g = clock;
        f = editionchunktable;
    }

    private void a(SQLiteDatabase sqlitedatabase, String s, Schema schema)
    {
        sqlitedatabase.delete(s, (new StringBuilder()).append(schema.c()).append("!=?").toString(), new String[] {
            "1"
        });
    }

    public static EditionTable b()
    {
        com/snapchat/android/discover/model/database/table/EditionTable;
        JVM INSTR monitorenter ;
        EditionTable editiontable;
        if (e == null)
        {
            e = new EditionTable();
        }
        editiontable = e;
        com/snapchat/android/discover/model/database/table/EditionTable;
        JVM INSTR monitorexit ;
        return editiontable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(Object obj)
    {
        return null;
    }

    public String a()
    {
        return "Edition";
    }

    public void a(Context context)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("EditionTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        c(sqlitedatabase);
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("EditionTable", "safeUpdate - endTransaction", new Object[0]);
        b(context);
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("EditionTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
    }

    protected void a(SQLiteDatabase sqlitedatabase, List list, String s, String s1)
    {
        if (list != null && s1 != null)
        {
            if (sqlitedatabase.insertWithOnConflict("Edition", null, (new ContentValuesBuilder()).a(EditionSchema.a, s1).a(EditionSchema.b, s).a(EditionSchema.c, g.a()).a(EditionSchema.d, true).a(), 5) == -1L)
            {
                throw new SQLiteException("Insertion in DB failed for Edition");
            }
            HashSet hashset = new HashSet();
            int i = 0;
            int j = 0;
            int k = 1;
            while (i < list.size()) 
            {
                EditionChunkResponse editionchunkresponse = (EditionChunkResponse)list.get(i);
                int l;
                if (editionchunkresponse != null && !hashset.contains(editionchunkresponse.b()))
                {
                    int i1;
                    int j1;
                    if (editionchunkresponse.e().intValue() != 0)
                    {
                        int k1 = k + 1;
                        i1 = k;
                        j1 = k1;
                    } else
                    {
                        i1 = -1;
                        j1 = k;
                    }
                    f.a(sqlitedatabase, editionchunkresponse, j, i1, s1);
                    hashset.add(editionchunkresponse.b());
                    j++;
                    l = j1;
                } else
                {
                    l = k;
                }
                i++;
                k = l;
            }
        }
    }

    public void a(User user)
    {
    }

    protected Collection b(User user)
    {
        return null;
    }

    public void b(Context context)
    {
        ContentResolver contentresolver = context.getContentResolver();
        contentresolver.notifyChange(SnapchatProvider.b, null);
        contentresolver.notifyChange(SnapchatProvider.c, null);
    }

    public void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.updateWithOnConflict("Edition", (new ContentValuesBuilder()).a(EditionSchema.d, false).a(), null, null, 5);
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        EditionSchema aeditionschema[] = EditionSchema.values();
        int i = aeditionschema.length;
        for (int j = 0; j < i; j++)
        {
            EditionSchema editionschema = aeditionschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(EditionSchema.a(editionschema)).append(" ").append(EditionSchema.b(editionschema).toString()).toString());
            String s = editionschema.d();
            if (!TextUtils.isEmpty(s))
            {
                stringbuilder.append(" ");
                stringbuilder.append(s);
            }
        }

        return stringbuilder.toString();
    }

    protected void c(SQLiteDatabase sqlitedatabase)
    {
        Timber.c("EditionTable", "Deleting the tables for editions, edition chunks, dsnaps, dsnap items", new Object[0]);
        sqlitedatabase.execSQL(SqlHelper.a("Edition", EditionSchema.b, "PublisherChannel", PublisherChannelTable.PublisherChannelSchema.a));
        a(sqlitedatabase, "Edition", EditionSchema.d);
        sqlitedatabase.execSQL(SqlHelper.a("EditionChunk", EditionChunkTable.EditionChunkSchema.b, "Edition", EditionSchema.a));
        a(sqlitedatabase, "EditionChunk", EditionChunkTable.EditionChunkSchema.i);
        sqlitedatabase.execSQL(SqlHelper.a("DSnap", DSnapTable.DSnapSchema.a, "EditionChunk", EditionChunkTable.EditionChunkSchema.d));
        sqlitedatabase.execSQL(SqlHelper.a("DSnapItem", DSnapItemTable.DSnapItemSchema.j, "DSnap", DSnapTable.DSnapSchema.a));
    }

    public void c(User user)
    {
    }

    public Schema[] d()
    {
        return EditionSchema.values();
    }

    public boolean m()
    {
        return false;
    }

    static 
    {
        EditionSchema aeditionschema[] = EditionSchema.values();
        int i = aeditionschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            EditionSchema editionschema = aeditionschema[j];
            a[j] = aeditionschema[j].c();
            b.put(editionschema.c(), editionschema.c());
        }

    }
}
