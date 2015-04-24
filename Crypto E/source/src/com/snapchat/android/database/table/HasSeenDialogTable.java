// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.HasSeenDialogLog;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public abstract class HasSeenDialogTable extends DbTable
{
    static final class HasSeenDialogTableSchema extends Enum
        implements Schema
    {

        public static final HasSeenDialogTableSchema a;
        public static final HasSeenDialogTableSchema b;
        private static final HasSeenDialogTableSchema f[];
        private int c;
        private String d;
        private DataType e;

        static String a(HasSeenDialogTableSchema hasseendialogtableschema)
        {
            return hasseendialogtableschema.d;
        }

        static DataType b(HasSeenDialogTableSchema hasseendialogtableschema)
        {
            return hasseendialogtableschema.e;
        }

        public static HasSeenDialogTableSchema valueOf(String s)
        {
            return (HasSeenDialogTableSchema)Enum.valueOf(com/snapchat/android/database/table/HasSeenDialogTable$HasSeenDialogTableSchema, s);
        }

        public static HasSeenDialogTableSchema[] values()
        {
            return (HasSeenDialogTableSchema[])f.clone();
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
            a = new HasSeenDialogTableSchema("STORY_ID", 0, 1, "StoryId", DataType.a);
            b = new HasSeenDialogTableSchema("TIMESTAMP", 1, 2, "Timestamp", DataType.a);
            HasSeenDialogTableSchema ahasseendialogtableschema[] = new HasSeenDialogTableSchema[2];
            ahasseendialogtableschema[0] = a;
            ahasseendialogtableschema[1] = b;
            f = ahasseendialogtableschema;
        }

        private HasSeenDialogTableSchema(String s, int i, int j, String s1, DataType datatype)
        {
            super(s, i);
            c = j;
            d = s1;
            e = datatype;
        }
    }


    private final String a;
    private final HasSeenDialogLog b;

    protected HasSeenDialogTable(String s, HasSeenDialogLog hasseendialoglog)
    {
        a = s;
        b = hasseendialoglog;
    }

    protected ContentValues a(com.snapchat.android.database.HasSeenDialogLog.Entry entry)
    {
        if (entry == null || entry.a())
        {
            return null;
        } else
        {
            ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
            contentvaluesbuilder.a(HasSeenDialogTableSchema.a, entry.b());
            contentvaluesbuilder.a(HasSeenDialogTableSchema.b, entry.c());
            return contentvaluesbuilder.a();
        }
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((com.snapchat.android.database.HasSeenDialogLog.Entry)obj);
    }

    protected com.snapchat.android.database.HasSeenDialogLog.Entry a(Cursor cursor)
    {
        return new com.snapchat.android.database.HasSeenDialogLog.Entry(cursor.getString(HasSeenDialogTableSchema.a.b()), cursor.getLong(HasSeenDialogTableSchema.b.b()));
    }

    public String a()
    {
        return a;
    }

    public void a(User user)
    {
        b.a(a(null, null));
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return b.a();
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        HasSeenDialogTableSchema ahasseendialogtableschema[] = HasSeenDialogTableSchema.values();
        int i = ahasseendialogtableschema.length;
        for (int j = 0; j < i; j++)
        {
            HasSeenDialogTableSchema hasseendialogtableschema = ahasseendialogtableschema[j];
            s = (new StringBuilder()).append(s).append(",").append(HasSeenDialogTableSchema.a(hasseendialogtableschema)).append(" ").append(HasSeenDialogTableSchema.b(hasseendialogtableschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return HasSeenDialogTableSchema.values();
    }
}
