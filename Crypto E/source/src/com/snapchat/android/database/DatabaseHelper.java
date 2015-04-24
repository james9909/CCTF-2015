// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.vtable.DbVirtualTable;
import com.snapchat.android.model.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DatabaseHelper extends SQLiteOpenHelper
{
    public static final class TableType extends Enum
    {

        public static final TableType a;
        public static final TableType b;
        private static final TableType d[];
        private final String c;

        public static TableType valueOf(String s)
        {
            return (TableType)Enum.valueOf(com/snapchat/android/database/DatabaseHelper$TableType, s);
        }

        public static TableType[] values()
        {
            return (TableType[])d.clone();
        }

        public String a()
        {
            return c;
        }

        static 
        {
            a = new TableType("TABLE", 0, "table");
            b = new TableType("VIEW", 1, "view");
            TableType atabletype[] = new TableType[2];
            atabletype[0] = a;
            atabletype[1] = b;
            d = atabletype;
        }

        private TableType(String s, int i, String s1)
        {
            super(s, i);
            c = s1;
        }
    }


    private static DatabaseHelper a;

    private DatabaseHelper(Context context)
    {
        super(context, "tcspahn.db", null, 147);
    }

    public static DatabaseHelper a(Context context)
    {
        com/snapchat/android/database/DatabaseHelper;
        JVM INSTR monitorenter ;
        DatabaseHelper databasehelper;
        if (a == null)
        {
            a = new DatabaseHelper(context);
        }
        databasehelper = a;
        com/snapchat/android/database/DatabaseHelper;
        JVM INSTR monitorexit ;
        return databasehelper;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(SQLiteDatabase sqlitedatabase)
    {
        a(sqlitedatabase);
        onCreate(sqlitedatabase);
        UserPrefs.m("");
        UserPrefs.l("");
    }

    protected void a(SQLiteDatabase sqlitedatabase)
    {
        a(sqlitedatabase, TableType.a);
        a(sqlitedatabase, TableType.b);
    }

    protected void a(SQLiteDatabase sqlitedatabase, TableType tabletype)
    {
        Iterator iterator = b(sqlitedatabase, tabletype).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (tabletype == TableType.a)
            {
                DbTable.b(sqlitedatabase, s);
            } else
            if (tabletype == TableType.b)
            {
                DbVirtualTable.a(sqlitedatabase, s);
            }
        } while (true);
    }

    protected List b(SQLiteDatabase sqlitedatabase, TableType tabletype)
    {
        ArrayList arraylist = new ArrayList();
        String as[] = {
            "name"
        };
        String as1[] = new String[3];
        as1[0] = tabletype.a();
        as1[1] = "sqlite_%";
        as1[2] = "android_metadata";
        Cursor cursor = sqlitedatabase.query("sqlite_master", as, "type=? AND name NOT LIKE ? AND name NOT LIKE ?", as1, null, null, null);
        if (cursor != null && cursor.moveToFirst())
        {
            do
            {
                String s = cursor.getString(0);
                if (!TextUtils.isEmpty(s))
                {
                    arraylist.add(s);
                }
            } while (cursor.moveToNext());
        }
        return arraylist;
    }

    public void close()
    {
        super.close();
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        int i = 0;
        Timber.c("DatabaseHelper", "Creating Database", new Object[0]);
        com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = com.snapchat.android.database.table.DbTable.DatabaseTable.values();
        for (int j = adatabasetable.length; i < j; i++)
        {
            sqlitedatabase.execSQL(adatabasetable[i].a().n());
        }

        DbVirtualTable.a(sqlitedatabase);
    }

    public void onDowngrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        Timber.d("DatabaseHelper", "Downgrading database from version %d to %d, which will destroy all old data", aobj);
        b(sqlitedatabase);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        Timber.d("DatabaseHelper", "Upgrading database from version %d to %d, which will destroy all old data", aobj);
        b(sqlitedatabase);
    }
}
