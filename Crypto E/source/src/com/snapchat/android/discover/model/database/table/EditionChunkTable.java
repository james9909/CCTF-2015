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
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.ContentValuesBuilder;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.User;
import com.snapchat.data.gson.discover.EditionChunkResponse;
import java.util.Collection;
import java.util.HashMap;

public class EditionChunkTable extends DbTable
{
    public static final class EditionChunkSchema extends Enum
        implements Schema
    {

        public static final EditionChunkSchema a;
        public static final EditionChunkSchema b;
        public static final EditionChunkSchema c;
        public static final EditionChunkSchema d;
        public static final EditionChunkSchema e;
        public static final EditionChunkSchema f;
        public static final EditionChunkSchema g;
        public static final EditionChunkSchema h;
        public static final EditionChunkSchema i;
        public static final EditionChunkSchema j;
        private static final EditionChunkSchema n[];
        private String k;
        private DataType l;
        private String m;

        static String a(EditionChunkSchema editionchunkschema)
        {
            return editionchunkschema.k;
        }

        static DataType b(EditionChunkSchema editionchunkschema)
        {
            return editionchunkschema.l;
        }

        public static EditionChunkSchema valueOf(String s)
        {
            return (EditionChunkSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema, s);
        }

        public static EditionChunkSchema[] values()
        {
            return (EditionChunkSchema[])n.clone();
        }

        public DataType a()
        {
            return l;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return k;
        }

        public String d()
        {
            return m;
        }

        static 
        {
            a = new EditionChunkSchema("ID", 0, "_id", DataType.b, "PRIMARY KEY");
            b = new EditionChunkSchema("EDITION_ID", 1, "edition_id", DataType.a);
            c = new EditionChunkSchema("URL", 2, "url", DataType.a);
            d = new EditionChunkSchema("HASH", 3, "hash", DataType.a);
            e = new EditionChunkSchema("COLOR", 4, "color", DataType.a);
            f = new EditionChunkSchema("AD_TYPE", 5, "ad_type", DataType.b);
            g = new EditionChunkSchema("AD_POSITION", 6, "ad_position", DataType.b);
            h = new EditionChunkSchema("POSITION", 7, "position", DataType.b);
            i = new EditionChunkSchema("ACTIVE", 8, "active", DataType.d);
            j = new EditionChunkSchema("SHAREABLE", 9, "shareable", DataType.d);
            EditionChunkSchema aeditionchunkschema[] = new EditionChunkSchema[10];
            aeditionchunkschema[0] = a;
            aeditionchunkschema[1] = b;
            aeditionchunkschema[2] = c;
            aeditionchunkschema[3] = d;
            aeditionchunkschema[4] = e;
            aeditionchunkschema[5] = f;
            aeditionchunkschema[6] = g;
            aeditionchunkschema[7] = h;
            aeditionchunkschema[8] = i;
            aeditionchunkschema[9] = j;
            n = aeditionchunkschema;
        }

        private EditionChunkSchema(String s, int i1, String s1, DataType datatype)
        {
            super(s, i1);
            k = s1;
            l = datatype;
        }

        private EditionChunkSchema(String s, int i1, String s1, DataType datatype, String s2)
        {
            this(s, i1, s1, datatype);
            m = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static EditionChunkTable e;

    protected EditionChunkTable()
    {
    }

    private void a(Context context)
    {
        context.getContentResolver().notifyChange(SnapchatProvider.c, null);
    }

    private void a(SQLiteDatabase sqlitedatabase, ContentValues contentvalues)
    {
        if (sqlitedatabase.insertWithOnConflict("EditionChunk", null, contentvalues, 5) == -1L)
        {
            throw new SQLiteException("Insertion in DB failed for EditionChunk");
        } else
        {
            return;
        }
    }

    private void a(SQLiteDatabase sqlitedatabase, String s, ContentValues contentvalues)
    {
        if (sqlitedatabase.update("EditionChunk", (new ContentValuesBuilder()).a(EditionChunkSchema.i, true).a(), (new StringBuilder()).append(EditionChunkSchema.a.c()).append("=?").toString(), new String[] {
    s
}) <= 0)
        {
            a(sqlitedatabase, contentvalues);
        }
    }

    public static EditionChunkTable b()
    {
        com/snapchat/android/discover/model/database/table/EditionChunkTable;
        JVM INSTR monitorenter ;
        EditionChunkTable editionchunktable;
        if (e == null)
        {
            e = new EditionChunkTable();
        }
        editionchunktable = e;
        com/snapchat/android/discover/model/database/table/EditionChunkTable;
        JVM INSTR monitorexit ;
        return editionchunktable;
        Exception exception;
        exception;
        throw exception;
    }

    protected int a(SQLiteDatabase sqlitedatabase, String s, String s1, String s2)
    {
        ContentValues contentvalues = (new ContentValuesBuilder()).a(EditionChunkSchema.c, s1).a(EditionChunkSchema.d, s2).a();
        String s3 = (new StringBuilder()).append(EditionChunkSchema.a.c()).append("=?").toString();
        String as[] = new String[1];
        as[0] = String.valueOf(s);
        return sqlitedatabase.updateWithOnConflict("EditionChunk", contentvalues, s3, as, 5);
    }

    protected ContentValues a(EditionChunkResponse editionchunkresponse)
    {
        if (editionchunkresponse == null)
        {
            return null;
        } else
        {
            ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
            contentvaluesbuilder.a(EditionChunkSchema.a, editionchunkresponse.b());
            contentvaluesbuilder.a(EditionChunkSchema.e, editionchunkresponse.d());
            contentvaluesbuilder.a(EditionChunkSchema.f, editionchunkresponse.e().intValue());
            contentvaluesbuilder.a(EditionChunkSchema.i, true);
            contentvaluesbuilder.a(EditionChunkSchema.c, editionchunkresponse.a());
            contentvaluesbuilder.a(EditionChunkSchema.d, editionchunkresponse.c());
            contentvaluesbuilder.a(EditionChunkSchema.j, false);
            return contentvaluesbuilder.a();
        }
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((EditionChunkResponse)obj);
    }

    public String a()
    {
        return "EditionChunk";
    }

    public void a(Context context, String s, String s1, String s2)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("EditionChunkTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        int i;
        i = a(sqlitedatabase, s, s1, s2);
        Timber.c("EditionChunkTable", (new StringBuilder()).append("updateUrlSaveToDatabase numRowsAffected: ").append(i).toString(), new Object[0]);
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("EditionChunkTable", "safeUpdate - endTransaction", new Object[0]);
        if (i > 0)
        {
            a(context);
        }
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("EditionChunkTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
    }

    protected void a(SQLiteDatabase sqlitedatabase, EditionChunkResponse editionchunkresponse, int i, int j, String s)
    {
        ContentValues contentvalues = a(editionchunkresponse);
        if (contentvalues == null)
        {
            return;
        }
        contentvalues.put(EditionChunkSchema.b.c(), s);
        contentvalues.put(EditionChunkSchema.h.c(), Integer.valueOf(i));
        contentvalues.put(EditionChunkSchema.g.c(), Integer.valueOf(j));
        if (editionchunkresponse.e().intValue() != 0)
        {
            a(sqlitedatabase, editionchunkresponse.b(), contentvalues);
            return;
        } else
        {
            a(sqlitedatabase, contentvalues);
            return;
        }
    }

    public void a(User user)
    {
    }

    protected Collection b(User user)
    {
        return null;
    }

    public void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.updateWithOnConflict("EditionChunk", (new ContentValuesBuilder()).a(EditionChunkSchema.i, false).a(), null, null, 5);
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        EditionChunkSchema aeditionchunkschema[] = EditionChunkSchema.values();
        int i = aeditionchunkschema.length;
        for (int j = 0; j < i; j++)
        {
            EditionChunkSchema editionchunkschema = aeditionchunkschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(EditionChunkSchema.a(editionchunkschema)).append(" ").append(EditionChunkSchema.b(editionchunkschema).toString()).toString());
            String s = editionchunkschema.d();
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
        return EditionChunkSchema.values();
    }

    public boolean m()
    {
        return false;
    }

    static 
    {
        EditionChunkSchema aeditionchunkschema[] = EditionChunkSchema.values();
        int i = aeditionchunkschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            EditionChunkSchema editionchunkschema = aeditionchunkschema[j];
            a[j] = aeditionchunkschema[j].c();
            b.put(editionchunkschema.c(), editionchunkschema.c());
        }

    }
}
