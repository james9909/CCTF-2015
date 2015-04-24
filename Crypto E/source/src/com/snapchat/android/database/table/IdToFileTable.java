// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public abstract class IdToFileTable extends DbTable
{
    public static final class IdToFileSchema extends Enum
        implements Schema
    {

        public static final IdToFileSchema a;
        public static final IdToFileSchema b;
        private static final IdToFileSchema f[];
        private int c;
        private String d;
        private DataType e;

        static String a(IdToFileSchema idtofileschema)
        {
            return idtofileschema.d;
        }

        static DataType b(IdToFileSchema idtofileschema)
        {
            return idtofileschema.e;
        }

        public static IdToFileSchema valueOf(String s)
        {
            return (IdToFileSchema)Enum.valueOf(com/snapchat/android/database/table/IdToFileTable$IdToFileSchema, s);
        }

        public static IdToFileSchema[] values()
        {
            return (IdToFileSchema[])f.clone();
        }

        public DataType a()
        {
            return e;
        }

        public int b()
        {
            return c;
        }

        public String c()
        {
            return d;
        }

        public String d()
        {
            return null;
        }

        static 
        {
            a = new IdToFileSchema("SNAP_ID", 0, 1, "SnapId", DataType.a);
            b = new IdToFileSchema("FILE_PATH", 1, 2, "FilePath", DataType.a);
            IdToFileSchema aidtofileschema[] = new IdToFileSchema[2];
            aidtofileschema[0] = a;
            aidtofileschema[1] = b;
            f = aidtofileschema;
        }

        private IdToFileSchema(String s, int i, int j, String s1, DataType datatype)
        {
            super(s, i);
            c = j;
            d = s1;
            e = datatype;
        }
    }


    public IdToFileTable()
    {
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((java.util.Map.Entry)obj);
    }

    protected ContentValues a(java.util.Map.Entry entry)
    {
        if (entry == null)
        {
            return null;
        } else
        {
            ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
            contentvaluesbuilder.a(IdToFileSchema.a, (String)entry.getKey());
            contentvaluesbuilder.a(IdToFileSchema.b, (String)entry.getValue());
            return contentvaluesbuilder.a();
        }
    }

    protected java.util.Map.Entry a(Cursor cursor)
    {
        return null;
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        IdToFileSchema aidtofileschema[] = IdToFileSchema.values();
        int i = aidtofileschema.length;
        for (int j = 0; j < i; j++)
        {
            IdToFileSchema idtofileschema = aidtofileschema[j];
            s = (new StringBuilder()).append(s).append(",").append(IdToFileSchema.a(idtofileschema)).append(" ").append(IdToFileSchema.b(idtofileschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return IdToFileSchema.values();
    }

    protected Map f()
    {
        Cursor cursor;
        j().lock();
        cursor = d.query(a(), null, null, null, null, null, null);
        SQLiteDatabase sqlitedatabase = o();
        if (sqlitedatabase == null)
        {
            if (cursor != null)
            {
                cursor.close();
            }
            j().unlock();
            return null;
        }
        HashMap hashmap;
        hashmap = new HashMap();
        Object aobj[] = new Object[1];
        aobj[0] = a();
        Timber.c("IdToFileTable", "Querying [%s] database table", aobj);
        cursor.moveToFirst();
        boolean flag;
        do
        {
            if (cursor.isAfterLast())
            {
                break;
            }
            hashmap.put(cursor.getString(IdToFileSchema.a.b()), cursor.getString(IdToFileSchema.b.b()));
            flag = cursor.moveToNext();
        } while (flag);
        if (cursor != null)
        {
            cursor.close();
        }
        j().unlock();
        return hashmap;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        j().unlock();
        throw exception;
    }
}
