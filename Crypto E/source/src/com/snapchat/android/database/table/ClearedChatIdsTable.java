// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class ClearedChatIdsTable extends DbTable
{
    public static final class ClearedChatIdsSchema extends Enum
        implements Schema
    {

        public static final ClearedChatIdsSchema a;
        public static final ClearedChatIdsSchema b;
        public static final ClearedChatIdsSchema c;
        private static final ClearedChatIdsSchema h[];
        private int d;
        private String e;
        private DataType f;
        private String g;

        static String a(ClearedChatIdsSchema clearedchatidsschema)
        {
            return clearedchatidsschema.e;
        }

        static DataType b(ClearedChatIdsSchema clearedchatidsschema)
        {
            return clearedchatidsschema.f;
        }

        public static ClearedChatIdsSchema valueOf(String s)
        {
            return (ClearedChatIdsSchema)Enum.valueOf(com/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema, s);
        }

        public static ClearedChatIdsSchema[] values()
        {
            return (ClearedChatIdsSchema[])h.clone();
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
            return g;
        }

        static 
        {
            a = new ClearedChatIdsSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY_KEY");
            b = new ClearedChatIdsSchema("CONVERSATION_ID", 1, 1, "conversationId", DataType.a);
            c = new ClearedChatIdsSchema("TIMESTAMP", 2, 2, "timestamp", DataType.b);
            ClearedChatIdsSchema aclearedchatidsschema[] = new ClearedChatIdsSchema[3];
            aclearedchatidsschema[0] = a;
            aclearedchatidsschema[1] = b;
            aclearedchatidsschema[2] = c;
            h = aclearedchatidsschema;
        }

        private ClearedChatIdsSchema(String s, int i, int j, String s1, DataType datatype)
        {
            super(s, i);
            d = j;
            e = s1;
            f = datatype;
        }

        private ClearedChatIdsSchema(String s, int i, int j, String s1, DataType datatype, String s2)
        {
            super(s, i);
            d = j;
            e = s1;
            f = datatype;
            g = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static ClearedChatIdsTable e;

    private ClearedChatIdsTable()
    {
    }

    public static Set a(SQLiteDatabase sqlitedatabase, String s)
    {
        HashSet hashset;
        Cursor cursor;
        hashset = new HashSet();
        if (s == null)
        {
            return hashset;
        }
        cursor = sqlitedatabase.query("ClearedChatIdsTable", a, (new StringBuilder()).append(ClearedChatIdsSchema.b.c()).append(" =? ").toString(), new String[] {
            s
        }, null, null, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                hashset.add(cursor.getString(ClearedChatIdsSchema.a.b()));
                flag = cursor.moveToNext();
            } while (flag);
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return hashset;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    public static void a(Context context)
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        long l = System.currentTimeMillis() - 0x5265c00L;
        if (sqlitedatabase != null)
        {
            String s = (new StringBuilder()).append(ClearedChatIdsSchema.c.c()).append(" <? ").toString();
            String as[] = new String[1];
            as[0] = Long.toString(l);
            sqlitedatabase.delete("ClearedChatIdsTable", s, as);
        }
    }

    public static void a(Context context, String s)
    {
        (new Thread(new Runnable(context, s) {

            final Context a;
            final String b;

            public void run()
            {
                ClearedChatIdsTable.b(a, b);
            }

            
            {
                a = context;
                b = s;
                super();
            }
        })).start();
    }

    public static void a(Context context, String s, String s1)
    {
        (new Thread(new Runnable(context, s, s1) {

            final Context a;
            final String b;
            final String c;

            public void run()
            {
                ClearedChatIdsTable.b(a, b, c);
            }

            
            {
                a = context;
                b = s;
                c = s1;
                super();
            }
        })).start();
    }

    public static void a(Context context, String s, String s1, long l)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(ClearedChatIdsSchema.a.c(), s);
        contentvalues.put(ClearedChatIdsSchema.b.c(), s1);
        contentvalues.put(ClearedChatIdsSchema.c.c(), Long.valueOf(l));
        Timber.c("ClearedChatIdsTable", (new StringBuilder()).append("insert ").append(contentvalues).toString(), new Object[0]);
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        if (sqlitedatabase != null)
        {
            sqlitedatabase.insertWithOnConflict("ClearedChatIdsTable", null, contentvalues, 5);
        }
    }

    public static ClearedChatIdsTable b()
    {
        com/snapchat/android/database/table/ClearedChatIdsTable;
        JVM INSTR monitorenter ;
        ClearedChatIdsTable clearedchatidstable;
        if (e == null)
        {
            e = new ClearedChatIdsTable();
        }
        clearedchatidstable = e;
        com/snapchat/android/database/table/ClearedChatIdsTable;
        JVM INSTR monitorexit ;
        return clearedchatidstable;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Context context, String s)
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        if (sqlitedatabase != null)
        {
            sqlitedatabase.delete("ClearedChatIdsTable", (new StringBuilder()).append(ClearedChatIdsSchema.a.c()).append("=?").toString(), new String[] {
                s
            });
        }
    }

    public static void b(Context context, String s, String s1)
    {
        a(context, s, s1, System.currentTimeMillis());
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((String)obj);
    }

    protected ContentValues a(String s)
    {
        return null;
    }

    public String a()
    {
        return "ClearedChatIdsTable";
    }

    protected String a(Cursor cursor)
    {
        return null;
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
        ClearedChatIdsSchema aclearedchatidsschema[] = ClearedChatIdsSchema.values();
        int i = aclearedchatidsschema.length;
        for (int j = 0; j < i; j++)
        {
            ClearedChatIdsSchema clearedchatidsschema = aclearedchatidsschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(ClearedChatIdsSchema.a(clearedchatidsschema)).append(" ").append(ClearedChatIdsSchema.b(clearedchatidsschema).toString()).toString());
            String s = clearedchatidsschema.d();
            if (!TextUtils.isEmpty(s))
            {
                stringbuilder.append(" ");
                stringbuilder.append(s);
            }
        }

        return stringbuilder.toString();
    }

    public Schema[] d()
    {
        return ClearedChatIdsSchema.values();
    }

    static 
    {
        int i = 0;
        ClearedChatIdsSchema aclearedchatidsschema[] = ClearedChatIdsSchema.values();
        int j = aclearedchatidsschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = aclearedchatidsschema[k].c();
        }

        b = new HashMap();
        ClearedChatIdsSchema aclearedchatidsschema1[] = ClearedChatIdsSchema.values();
        for (int l = aclearedchatidsschema1.length; i < l; i++)
        {
            ClearedChatIdsSchema clearedchatidsschema = aclearedchatidsschema1[i];
            b.put(clearedchatidsschema.c(), clearedchatidsschema.c());
        }

    }
}
