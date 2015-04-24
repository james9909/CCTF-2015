// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class SentSnapTable extends DbTable
{
    public static final class SnapSchema extends Enum
        implements Schema
    {

        public static final SnapSchema a;
        public static final SnapSchema b;
        public static final SnapSchema c;
        public static final SnapSchema d;
        public static final SnapSchema e;
        public static final SnapSchema f;
        public static final SnapSchema g;
        public static final SnapSchema h;
        public static final SnapSchema i;
        public static final SnapSchema j;
        public static final SnapSchema k;
        public static final SnapSchema l;
        public static final SnapSchema m;
        private static final SnapSchema r[];
        private int n;
        private String o;
        private DataType p;
        private String q;

        static String a(SnapSchema snapschema)
        {
            return snapschema.o;
        }

        static DataType b(SnapSchema snapschema)
        {
            return snapschema.p;
        }

        public static SnapSchema valueOf(String s)
        {
            return (SnapSchema)Enum.valueOf(com/snapchat/android/database/table/SentSnapTable$SnapSchema, s);
        }

        public static SnapSchema[] values()
        {
            return (SnapSchema[])r.clone();
        }

        public DataType a()
        {
            return p;
        }

        public int b()
        {
            return n;
        }

        public String c()
        {
            return o;
        }

        public String d()
        {
            return q;
        }

        static 
        {
            a = new SnapSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
            b = new SnapSchema("CLIENT_ID", 1, 1, "ClientId", DataType.a);
            c = new SnapSchema("TIMESTAMP", 2, 2, "Timestamp", DataType.b);
            d = new SnapSchema("MEDIA_TYPE", 3, 3, "MediaType", DataType.b);
            e = new SnapSchema("STATUS", 4, 4, "Status", DataType.a);
            f = new SnapSchema("RECIPIENT", 5, 5, "Recipient", DataType.a);
            g = new SnapSchema("DISPLAY_TIME", 6, 6, "DisplayTime", DataType.e);
            h = new SnapSchema("URI", 7, 7, "Uri", DataType.a);
            i = new SnapSchema("TIME_OF_LAST_SEND_ATTEMPT", 8, 8, "TimeOfLastSendAttempt", DataType.b);
            j = new SnapSchema("IS_ZIPPED", 9, 9, "IsZipped", DataType.b);
            k = new SnapSchema("CONVERSATION_ID", 10, 10, "ConversationId", DataType.a);
            l = new SnapSchema("SENT_TIMESTAMP", 11, 11, "SentTimestamp", DataType.b);
            m = new SnapSchema("TARGET_VIEW", 12, 12, "TargetView", DataType.a);
            SnapSchema asnapschema[] = new SnapSchema[13];
            asnapschema[0] = a;
            asnapschema[1] = b;
            asnapschema[2] = c;
            asnapschema[3] = d;
            asnapschema[4] = e;
            asnapschema[5] = f;
            asnapschema[6] = g;
            asnapschema[7] = h;
            asnapschema[8] = i;
            asnapschema[9] = j;
            asnapschema[10] = k;
            asnapschema[11] = l;
            asnapschema[12] = m;
            r = asnapschema;
        }

        private SnapSchema(String s, int i1, int j1, String s1, DataType datatype)
        {
            super(s, i1);
            n = j1;
            o = s1;
            p = datatype;
        }

        private SnapSchema(String s, int i1, int j1, String s1, DataType datatype, String s2)
        {
            super(s, i1);
            n = j1;
            o = s1;
            p = datatype;
            q = s2;
        }
    }


    public static final String a[];
    private static SentSnapTable b;

    private SentSnapTable()
    {
    }

    private static SentSnap a(Cursor cursor)
    {
        String s = cursor.getString(SnapSchema.a.b());
        String s1 = cursor.getString(SnapSchema.b.b());
        long l = cursor.getLong(SnapSchema.c.b());
        long l1 = cursor.getLong(SnapSchema.l.b());
        int i = cursor.getInt(SnapSchema.d.b());
        String s2 = cursor.getString(SnapSchema.e.b());
        String s3 = cursor.getString(SnapSchema.f.b());
        String s4 = cursor.getString(SnapSchema.g.b());
        String s5 = cursor.getString(SnapSchema.h.b());
        long l2 = cursor.getLong(SnapSchema.i.b());
        boolean flag;
        Uri uri;
        if (cursor.getInt(SnapSchema.j.b()) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (TextUtils.isEmpty(s5))
        {
            uri = null;
        } else
        {
            uri = Uri.parse(s5);
        }
        return new SentSnap(s, s1, l, l1, i, com.snapchat.android.model.Snap.ClientSnapStatus.a(s2), s3, s4, uri, l2, flag);
    }

    public static Map a(SQLiteDatabase sqlitedatabase, Set set)
    {
        HashMap hashmap;
        Cursor cursor;
        hashmap = new HashMap();
        cursor = sqlitedatabase.query("SentSnaps", a, null, null, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        com.snapchat.android.model.Snap.TargetView targetview = com.snapchat.android.model.Snap.TargetView.valueOf(cursor.getString(SnapSchema.m.b()));
        if (set == null) goto _L5; else goto _L4
_L4:
        if (set.contains(targetview)) goto _L5; else goto _L6
_L6:
        boolean flag = cursor.moveToNext();
        if (flag) goto _L3; else goto _L2
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        return hashmap;
_L5:
        SentSnap sentsnap;
        String s;
        Object obj;
        sentsnap = a(cursor);
        s = cursor.getString(SnapSchema.k.b());
        obj = (List)hashmap.get(s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        obj = new ArrayList();
        ((List) (obj)).add(sentsnap);
        if (sentsnap.V() && sentsnap.y())
        {
            sentsnap.h();
            SnapWomb.a().c(sentsnap.x());
        }
        hashmap.put(s, obj);
          goto _L6
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    public static void a(Context context, SQLiteDatabase sqlitedatabase, String s, SentSnap sentsnap, com.snapchat.android.model.Snap.TargetView targetview)
    {
        if (sentsnap == null || TextUtils.isEmpty(s))
        {
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(SnapSchema.a.c(), sentsnap.ak());
        contentvalues.put(SnapSchema.b.c(), sentsnap.x());
        contentvalues.put(SnapSchema.c.c(), Long.valueOf(sentsnap.af()));
        contentvalues.put(SnapSchema.l.c(), Long.valueOf(sentsnap.ae()));
        contentvalues.put(SnapSchema.f.c(), sentsnap.g());
        contentvalues.put(SnapSchema.d.c(), Integer.valueOf(sentsnap.ao()));
        String s1 = SnapSchema.j.c();
        int i;
        if (sentsnap.k())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put(s1, Integer.valueOf(i));
        contentvalues.put(SnapSchema.e.c(), sentsnap.al().name());
        contentvalues.put(SnapSchema.g.c(), sentsnap.f());
        contentvalues.put(SnapSchema.h.c(), sentsnap.q());
        contentvalues.put(SnapSchema.i.c(), Long.valueOf(sentsnap.r()));
        contentvalues.put(SnapSchema.k.c(), s);
        contentvalues.put(SnapSchema.m.c(), targetview.name());
        Timber.c("SentSnapTable", (new StringBuilder()).append("saveSnapInTransaction values=").append(contentvalues).toString(), new Object[0]);
        sqlitedatabase.insertWithOnConflict("SentSnaps", null, contentvalues, 5);
    }

    public static SentSnapTable b()
    {
        com/snapchat/android/database/table/SentSnapTable;
        JVM INSTR monitorenter ;
        SentSnapTable sentsnaptable;
        if (b == null)
        {
            b = new SentSnapTable();
        }
        sentsnaptable = b;
        com/snapchat/android/database/table/SentSnapTable;
        JVM INSTR monitorexit ;
        return sentsnaptable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(SentSnap sentsnap)
    {
        return null;
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((SentSnap)obj);
    }

    public String a()
    {
        return "SentSnaps";
    }

    public void a(User user)
    {
    }

    protected Collection b(User user)
    {
        return null;
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        SnapSchema asnapschema[] = SnapSchema.values();
        int i = asnapschema.length;
        for (int j = 0; j < i; j++)
        {
            SnapSchema snapschema = asnapschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(SnapSchema.a(snapschema)).append(" ").append(SnapSchema.b(snapschema).toString()).toString());
            String s = snapschema.d();
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
        return SnapSchema.values();
    }

    public boolean e()
    {
        return true;
    }

    static 
    {
        SnapSchema asnapschema[] = SnapSchema.values();
        int i = asnapschema.length;
        a = new String[i];
        for (int j = 0; j < i; j++)
        {
            a[j] = asnapschema[j].c();
        }

    }
}
