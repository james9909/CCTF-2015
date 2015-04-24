// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.Chat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class NotificationTable extends DbTable
{
    public static final class NotificationSchema extends Enum
        implements Schema
    {

        public static final NotificationSchema a;
        public static final NotificationSchema b;
        public static final NotificationSchema c;
        public static final NotificationSchema d;
        public static final NotificationSchema e;
        public static final NotificationSchema f;
        public static final NotificationSchema g;
        public static final NotificationSchema h;
        public static final NotificationSchema i;
        private static final NotificationSchema n[];
        private int j;
        private String k;
        private DataType l;
        private String m;

        static String a(NotificationSchema notificationschema)
        {
            return notificationschema.k;
        }

        static DataType b(NotificationSchema notificationschema)
        {
            return notificationschema.l;
        }

        public static NotificationSchema valueOf(String s)
        {
            return (NotificationSchema)Enum.valueOf(com/snapchat/android/database/table/NotificationTable$NotificationSchema, s);
        }

        public static NotificationSchema[] values()
        {
            return (NotificationSchema[])n.clone();
        }

        public DataType a()
        {
            return l;
        }

        public int b()
        {
            return j;
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
            a = new NotificationSchema("ID", 0, 0, "_id", DataType.a);
            b = new NotificationSchema("TIMESTAMP", 1, 1, "timestamp", DataType.b);
            c = new NotificationSchema("SENDER", 2, 2, "sender", DataType.a);
            d = new NotificationSchema("SENDER_USERNAME", 3, 3, "sender_username", DataType.a);
            e = new NotificationSchema("TEXT", 4, 4, "text", DataType.a);
            f = new NotificationSchema("CHAT_MESSAGE_ID", 5, 5, "chat_message_id", DataType.a);
            g = new NotificationSchema("TYPE", 6, 6, "type", DataType.a);
            h = new NotificationSchema("NINJA_MODE", 7, 7, "ninja_mode", DataType.b);
            i = new NotificationSchema("CASH_AMOUNT", 8, 8, "cash_amount", DataType.a);
            NotificationSchema anotificationschema[] = new NotificationSchema[9];
            anotificationschema[0] = a;
            anotificationschema[1] = b;
            anotificationschema[2] = c;
            anotificationschema[3] = d;
            anotificationschema[4] = e;
            anotificationschema[5] = f;
            anotificationschema[6] = g;
            anotificationschema[7] = h;
            anotificationschema[8] = i;
            n = anotificationschema;
        }

        private NotificationSchema(String s, int i1, int j1, String s1, DataType datatype)
        {
            super(s, i1);
            j = j1;
            k = s1;
            l = datatype;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static NotificationTable e;

    private NotificationTable()
    {
    }

    public static long a(Context context, String s, String s1)
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getReadableDatabase();
        if (s.equals(com.snapchat.android.notification.AndroidNotificationManager.Type.e.name()))
        {
            return DatabaseUtils.longForQuery(sqlitedatabase, (new StringBuilder()).append("SELECT MAX(").append(NotificationSchema.b).append(") from ").append("Notification").append(" WHERE ").append(NotificationSchema.d).append("=?").append(" AND (").append(NotificationSchema.g).append(" ='").append(s).append("' OR ").append(NotificationSchema.g).append(" ='").append(com.snapchat.android.notification.AndroidNotificationManager.Type.b.name()).append("') AND ").append(NotificationSchema.h).append("=0").toString(), new String[] {
                s1
            });
        } else
        {
            return DatabaseUtils.longForQuery(sqlitedatabase, (new StringBuilder()).append("SELECT MAX(").append(NotificationSchema.b).append(") from ").append("Notification").append(" WHERE ").append(NotificationSchema.d).append("=?").append(" AND ").append(NotificationSchema.g).append(" ='").append(s).append("'").append(" AND ").append(NotificationSchema.h).append("=0").toString(), new String[] {
                s1
            });
        }
    }

    public static Cursor a(Context context, String as[])
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getReadableDatabase();
        StringBuilder stringbuilder = new StringBuilder();
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String _tmp = as[j];
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(" OR ");
            }
            stringbuilder.append(NotificationSchema.g.c());
            stringbuilder.append("=?");
        }

        return sqlitedatabase.query("Notification", a, stringbuilder.toString(), as, null, null, (new StringBuilder()).append(NotificationSchema.b.c()).append(" ASC").toString());
    }

    public static List a(Context context)
    {
        ArrayList arraylist;
        Cursor cursor;
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getReadableDatabase();
        arraylist = new ArrayList();
        String as[] = new String[1];
        as[0] = NotificationSchema.g.c();
        cursor = sqlitedatabase.query(true, "Notification", as, null, null, null, null, null, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                String s = cursor.getString(0);
                if (!TextUtils.isEmpty(s))
                {
                    arraylist.add(s);
                }
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

    public static void a(Context context, String s)
    {
        DatabaseHelper.a(context).getWritableDatabase().delete("Notification", (new StringBuilder()).append(NotificationSchema.g.c()).append("=?").toString(), new String[] {
            s
        });
    }

    public static void a(Context context, String s, long l, String s1, String s2, String s3, String s4, 
            String s5, boolean flag)
    {
        a(context, s, l, s1, s2, s3, s4, s5, flag, null);
    }

    public static void a(Context context, String s, long l, String s1, String s2, String s3, String s4, 
            String s5, boolean flag, String s6)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(NotificationSchema.a.c(), s);
        contentvalues.put(NotificationSchema.b.c(), Long.valueOf(l));
        contentvalues.put(NotificationSchema.c.c(), s1);
        contentvalues.put(NotificationSchema.d.c(), s2);
        contentvalues.put(NotificationSchema.e.c(), s3);
        contentvalues.put(NotificationSchema.f.c(), s4);
        contentvalues.put(NotificationSchema.g.c(), s5);
        String s7 = NotificationSchema.h.c();
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put(s7, Integer.valueOf(i));
        contentvalues.put(NotificationSchema.i.c(), s6);
        Timber.c("NotificationTable", (new StringBuilder()).append("insert ").append(contentvalues).toString(), new Object[0]);
        DatabaseHelper.a(context).getWritableDatabase().insertWithOnConflict("Notification", null, contentvalues, 5);
    }

    public static NotificationTable b()
    {
        com/snapchat/android/database/table/NotificationTable;
        JVM INSTR monitorenter ;
        NotificationTable notificationtable;
        if (e == null)
        {
            e = new NotificationTable();
        }
        notificationtable = e;
        com/snapchat/android/database/table/NotificationTable;
        JVM INSTR monitorexit ;
        return notificationtable;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Context context, String s, String s1)
    {
        DatabaseHelper.a(context).getWritableDatabase().delete("Notification", (new StringBuilder()).append(NotificationSchema.g.c()).append("=? AND ").append(NotificationSchema.d.c()).append("=?").toString(), new String[] {
            s, s1
        });
    }

    public static void c(Context context, String s, String s1)
    {
        (new Thread(new Runnable(s1, context, s) {

            final String a;
            final Context b;
            final String c;

            public void run()
            {
                if (a == null)
                {
                    NotificationTable.a(b, c);
                    return;
                } else
                {
                    NotificationTable.b(b, c, a);
                    return;
                }
            }

            
            {
                a = s;
                b = context;
                c = s1;
                super();
            }
        })).start();
    }

    protected ContentValues a(Chat chat)
    {
        return null;
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((Chat)obj);
    }

    protected Chat a(Cursor cursor)
    {
        return null;
    }

    public String a()
    {
        return "Notification";
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
        NotificationSchema anotificationschema[] = NotificationSchema.values();
        int i = anotificationschema.length;
        for (int j = 0; j < i; j++)
        {
            NotificationSchema notificationschema = anotificationschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(NotificationSchema.a(notificationschema)).append(" ").append(NotificationSchema.b(notificationschema).toString()).toString());
            String s = notificationschema.d();
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
        return NotificationSchema.values();
    }

    static 
    {
        int i = 0;
        NotificationSchema anotificationschema[] = NotificationSchema.values();
        int j = anotificationschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = anotificationschema[k].c();
        }

        b = new HashMap();
        NotificationSchema anotificationschema1[] = NotificationSchema.values();
        for (int l = anotificationschema1.length; i < l; i++)
        {
            NotificationSchema notificationschema = anotificationschema1[i];
            b.put(notificationschema.c(), notificationschema.c());
        }

    }
}
