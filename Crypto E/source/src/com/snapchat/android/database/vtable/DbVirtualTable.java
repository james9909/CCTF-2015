// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.vtable;

import android.database.sqlite.SQLiteDatabase;
import com.snapchat.android.Timber;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;

public abstract class DbVirtualTable
{
    public static final class DatabaseVirtualTable extends Enum
    {

        public static final DatabaseVirtualTable a;
        public static final DatabaseVirtualTable b;
        private static final DatabaseVirtualTable d[];
        private DbVirtualTable c;

        public static DatabaseVirtualTable valueOf(String s)
        {
            return (DatabaseVirtualTable)Enum.valueOf(com/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable, s);
        }

        public static DatabaseVirtualTable[] values()
        {
            return (DatabaseVirtualTable[])d.clone();
        }

        public DbVirtualTable a()
        {
            return c;
        }

        static 
        {
            a = new DatabaseVirtualTable("PUBLISHER_AND_EDITION", 0, PublisherAndEditionVirtualTable.e());
            b = new DatabaseVirtualTable("DSNAP_PAGE", 1, DSnapPageVirtualTable.e());
            DatabaseVirtualTable adatabasevirtualtable[] = new DatabaseVirtualTable[2];
            adatabasevirtualtable[0] = a;
            adatabasevirtualtable[1] = b;
            d = adatabasevirtualtable;
        }

        private DatabaseVirtualTable(String s, int i, DbVirtualTable dbvirtualtable)
        {
            super(s, i);
            c = dbvirtualtable;
        }
    }


    public DbVirtualTable()
    {
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        DatabaseVirtualTable adatabasevirtualtable[] = DatabaseVirtualTable.values();
        int i = adatabasevirtualtable.length;
        for (int j = 0; j < i; j++)
        {
            DatabaseVirtualTable databasevirtualtable = adatabasevirtualtable[j];
            Timber.c("DbVirtualTable", (new StringBuilder()).append("Create virtual table ").append(databasevirtualtable.a().a()).toString(), new Object[0]);
            sqlitedatabase.execSQL(databasevirtualtable.a().b());
        }

    }

    public static void a(SQLiteDatabase sqlitedatabase, String s)
    {
        Timber.c("DbVirtualTable", (new StringBuilder()).append("Drop virtual table ").append(s).toString(), new Object[0]);
        sqlitedatabase.execSQL((new StringBuilder()).append("DROP VIEW IF EXISTS ").append(s).toString());
    }

    public abstract String a();

    public abstract String b();

    public abstract Schema[] c();

    public String[] d()
    {
        Schema aschema[] = c();
        int i = aschema.length;
        String as[] = new String[i];
        for (int j = 0; j < i; j++)
        {
            as[j] = aschema[j].c();
        }

        return as;
    }
}
