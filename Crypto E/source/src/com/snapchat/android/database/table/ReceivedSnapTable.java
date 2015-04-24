// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.BroadcastSnap;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class ReceivedSnapTable extends DbTable
{
    public static final class SnapSchema extends Enum
        implements Schema
    {

        private static final SnapSchema A[];
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
        public static final SnapSchema n;
        public static final SnapSchema o;
        public static final SnapSchema p;
        public static final SnapSchema q;
        public static final SnapSchema r;
        public static final SnapSchema s;
        public static final SnapSchema t;
        public static final SnapSchema u;
        public static final SnapSchema v;
        private int w;
        private String x;
        private DataType y;
        private String z;

        static String a(SnapSchema snapschema)
        {
            return snapschema.x;
        }

        static DataType b(SnapSchema snapschema)
        {
            return snapschema.y;
        }

        public static SnapSchema valueOf(String s1)
        {
            return (SnapSchema)Enum.valueOf(com/snapchat/android/database/table/ReceivedSnapTable$SnapSchema, s1);
        }

        public static SnapSchema[] values()
        {
            return (SnapSchema[])A.clone();
        }

        public DataType a()
        {
            return y;
        }

        public int b()
        {
            return w;
        }

        public String c()
        {
            return x;
        }

        public String d()
        {
            return z;
        }

        static 
        {
            a = new SnapSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
            b = new SnapSchema("TIMESTAMP", 1, 1, "Timestamp", DataType.b);
            c = new SnapSchema("MEDIA_TYPE", 2, 2, "MediaType", DataType.b);
            d = new SnapSchema("IS_ZIPPED", 3, 3, "IsZipped", DataType.d);
            e = new SnapSchema("STATUS", 4, 4, "Status", DataType.a);
            f = new SnapSchema("SENDER", 5, 5, "Sender", DataType.a);
            g = new SnapSchema("DISPLAY_TIME", 6, 6, "DisplayTime", DataType.e);
            h = new SnapSchema("CAPTION_TEXT", 7, 7, "CaptionText", DataType.a);
            i = new SnapSchema("CAPTION_ORIENTATION", 8, 8, "CaptionOrientation", DataType.b);
            j = new SnapSchema("CAPTION_POSITION", 9, 9, "CaptionPosition", DataType.e);
            k = new SnapSchema("IS_VIEWED", 10, 10, "IsViewed", DataType.d);
            l = new SnapSchema("IS_SCREENSHOTTED", 11, 11, "IsScreenshotted", DataType.d);
            m = new SnapSchema("IS_UPDATED", 12, 12, "IsUpdated", DataType.d);
            n = new SnapSchema("VIEWED_TIMESTAMP", 13, 13, "ViewedTimestamp", DataType.b);
            o = new SnapSchema("CONVERSATION_ID", 14, 14, "ConversationId", DataType.a);
            p = new SnapSchema("SENT_TIMESTAMP", 15, 15, "SentTimestamp", DataType.b);
            q = new SnapSchema("TARGET_VIEW", 16, 16, "TargetView", DataType.a);
            r = new SnapSchema("BROADCAST_MEDIA_URL", 17, 17, "BroadcastMediaUrl", DataType.a);
            s = new SnapSchema("BROADCAST_URL", 18, 18, "BroadcastUrl", DataType.a);
            t = new SnapSchema("BROADCAST_TEXT", 19, 19, "BroadcastText", DataType.a);
            u = new SnapSchema("BROADCAST_HIDE_TIMER", 20, 20, "BroadcastHideTimer", DataType.d);
            v = new SnapSchema("FILTER_ID", 21, 21, "FilterId", DataType.a);
            SnapSchema asnapschema[] = new SnapSchema[22];
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
            asnapschema[13] = n;
            asnapschema[14] = o;
            asnapschema[15] = p;
            asnapschema[16] = q;
            asnapschema[17] = r;
            asnapschema[18] = s;
            asnapschema[19] = t;
            asnapschema[20] = u;
            asnapschema[21] = v;
            A = asnapschema;
        }

        private SnapSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            w = j1;
            x = s2;
            y = datatype;
        }

        private SnapSchema(String s1, int i1, int j1, String s2, DataType datatype, String s3)
        {
            super(s1, i1);
            w = j1;
            x = s2;
            y = datatype;
            z = s3;
        }
    }


    public static final String a[];
    private static ReceivedSnapTable b;

    private ReceivedSnapTable()
    {
    }

    private ReceivedSnap a(Cursor cursor)
    {
        String s = cursor.getString(SnapSchema.a.b());
        long l = cursor.getLong(SnapSchema.b.b());
        long l1 = cursor.getLong(SnapSchema.p.b());
        int i = cursor.getInt(SnapSchema.c.b());
        boolean flag;
        String s1;
        String s2;
        boolean flag1;
        double d1;
        String s3;
        int j;
        double d2;
        long l2;
        String s4;
        String s5;
        String s6;
        String s7;
        boolean flag2;
        boolean flag3;
        Object obj;
        if (cursor.getInt(SnapSchema.d.b()) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s1 = cursor.getString(SnapSchema.e.b());
        s2 = cursor.getString(SnapSchema.f.b());
        if (cursor.getInt(SnapSchema.l.b()) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        d1 = cursor.getDouble(SnapSchema.g.b());
        s3 = cursor.getString(SnapSchema.h.b());
        j = cursor.getInt(SnapSchema.i.b());
        d2 = cursor.getDouble(SnapSchema.j.b());
        l2 = cursor.getLong(SnapSchema.n.b());
        s4 = cursor.getString(SnapSchema.v.b());
        s5 = cursor.getString(SnapSchema.r.b());
        s6 = cursor.getString(SnapSchema.s.b());
        s7 = cursor.getString(SnapSchema.t.b());
        if (cursor.getInt(SnapSchema.u.b()) == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (cursor.getInt(SnapSchema.m.b()) == 1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (s6 == null)
        {
            obj = new ReceivedSnap(s, l, l1, l2, i, flag, com.snapchat.android.model.Snap.ClientSnapStatus.a(s1), s2, d1, s3, flag1, j, d2, s4);
        } else
        {
            com.snapchat.android.model.Snap.ClientSnapStatus clientsnapstatus = com.snapchat.android.model.Snap.ClientSnapStatus.a(s1);
            long l3 = j;
            obj = new BroadcastSnap(s, l, l1, i, flag, clientsnapstatus, s2, d1, s3, l3, d2, s5, s7, s6, flag2, s4);
        }
        ((ReceivedSnap) (obj)).a(flag3);
        return ((ReceivedSnap) (obj));
    }

    public static ReceivedSnapTable b()
    {
        com/snapchat/android/database/table/ReceivedSnapTable;
        JVM INSTR monitorenter ;
        ReceivedSnapTable receivedsnaptable;
        if (b == null)
        {
            b = new ReceivedSnapTable();
        }
        receivedsnaptable = b;
        com/snapchat/android/database/table/ReceivedSnapTable;
        JVM INSTR monitorexit ;
        return receivedsnaptable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(ReceivedSnap receivedsnap)
    {
        return null;
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((ReceivedSnap)obj);
    }

    public String a()
    {
        return "ReceivedSnaps";
    }

    public Map a(SQLiteDatabase sqlitedatabase, Set set)
    {
        HashMap hashmap;
        Cursor cursor;
        hashmap = new HashMap();
        cursor = sqlitedatabase.query("ReceivedSnaps", a, null, null, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        String s = cursor.getString(SnapSchema.q.b());
        if (!TextUtils.isEmpty(s)) goto _L5; else goto _L4
_L4:
        com.snapchat.android.model.Snap.TargetView targetview = com.snapchat.android.model.Snap.TargetView.CHAT;
_L9:
        if (set == null) goto _L7; else goto _L6
_L6:
        if (set.contains(targetview)) goto _L7; else goto _L8
_L8:
        boolean flag = cursor.moveToNext();
        if (flag) goto _L3; else goto _L2
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        return hashmap;
_L5:
        targetview = com.snapchat.android.model.Snap.TargetView.valueOf(s);
          goto _L9
_L7:
        ReceivedSnap receivedsnap = a(cursor);
        if (receivedsnap == null) goto _L8; else goto _L10
_L10:
        String s1;
        Object obj;
        s1 = cursor.getString(SnapSchema.o.b());
        obj = (List)hashmap.get(s1);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        obj = new ArrayList();
        ((List) (obj)).add(receivedsnap);
        hashmap.put(s1, obj);
          goto _L8
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
          goto _L9
    }

    public void a(Context context, SQLiteDatabase sqlitedatabase, String s, ReceivedSnap receivedsnap, com.snapchat.android.model.Snap.TargetView targetview)
    {
        int i = 1;
        if (receivedsnap == null || TextUtils.isEmpty(s))
        {
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(SnapSchema.a.c(), receivedsnap.d());
        contentvalues.put(SnapSchema.b.c(), Long.valueOf(receivedsnap.af()));
        contentvalues.put(SnapSchema.p.c(), Long.valueOf(receivedsnap.ae()));
        contentvalues.put(SnapSchema.h.c(), receivedsnap.ab());
        contentvalues.put(SnapSchema.j.c(), Double.valueOf(receivedsnap.ad()));
        contentvalues.put(SnapSchema.i.c(), Long.valueOf(receivedsnap.ac()));
        String s1 = receivedsnap.l();
        if (TextUtils.isEmpty(s1))
        {
            s1 = "";
        }
        contentvalues.put(SnapSchema.f.c(), s1);
        contentvalues.put(SnapSchema.c.c(), Integer.valueOf(receivedsnap.ao()));
        String s2 = SnapSchema.d.c();
        int j;
        String s3;
        int k;
        String s4;
        int l;
        String s5;
        int i1;
        if (receivedsnap.k())
        {
            j = i;
        } else
        {
            j = 0;
        }
        contentvalues.put(s2, Integer.valueOf(j));
        contentvalues.put(SnapSchema.e.c(), receivedsnap.al().name());
        s3 = SnapSchema.l.c();
        if (receivedsnap.H())
        {
            k = i;
        } else
        {
            k = 0;
        }
        contentvalues.put(s3, Integer.valueOf(k));
        contentvalues.put(SnapSchema.g.c(), Double.valueOf(receivedsnap.M()));
        s4 = SnapSchema.k.c();
        if (receivedsnap.D())
        {
            l = i;
        } else
        {
            l = 0;
        }
        contentvalues.put(s4, Integer.valueOf(l));
        s5 = SnapSchema.m.c();
        if (receivedsnap.j())
        {
            i1 = i;
        } else
        {
            i1 = 0;
        }
        contentvalues.put(s5, Integer.valueOf(i1));
        contentvalues.put(SnapSchema.o.c(), s);
        contentvalues.put(SnapSchema.q.c(), targetview.name());
        contentvalues.put(SnapSchema.n.c(), Long.valueOf(receivedsnap.L()));
        if (!TextUtils.isEmpty(receivedsnap.O()))
        {
            contentvalues.put(SnapSchema.v.c(), receivedsnap.O());
        }
        if (receivedsnap instanceof BroadcastSnap)
        {
            contentvalues.put(SnapSchema.r.c(), ((BroadcastSnap)receivedsnap).e());
            contentvalues.put(SnapSchema.s.c(), ((BroadcastSnap)receivedsnap).f());
            contentvalues.put(SnapSchema.t.c(), ((BroadcastSnap)receivedsnap).g());
            String s6 = SnapSchema.u.c();
            if (!((BroadcastSnap)receivedsnap).h())
            {
                i = 0;
            }
            contentvalues.put(s6, Integer.valueOf(i));
        }
        sqlitedatabase.insertWithOnConflict("ReceivedSnaps", null, contentvalues, 5);
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
