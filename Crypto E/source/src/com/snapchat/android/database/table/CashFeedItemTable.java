// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.ScExecutors;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class CashFeedItemTable extends DbTable
{
    public static final class CashSchema extends Enum
        implements Schema
    {

        private static final CashSchema A[];
        public static final CashSchema a;
        public static final CashSchema b;
        public static final CashSchema c;
        public static final CashSchema d;
        public static final CashSchema e;
        public static final CashSchema f;
        public static final CashSchema g;
        public static final CashSchema h;
        public static final CashSchema i;
        public static final CashSchema j;
        public static final CashSchema k;
        public static final CashSchema l;
        public static final CashSchema m;
        public static final CashSchema n;
        public static final CashSchema o;
        public static final CashSchema p;
        public static final CashSchema q;
        public static final CashSchema r;
        public static final CashSchema s;
        public static final CashSchema t;
        public static final CashSchema u;
        public static final CashSchema v;
        private int w;
        private String x;
        private DataType y;
        private String z;

        static String a(CashSchema cashschema)
        {
            return cashschema.x;
        }

        static DataType b(CashSchema cashschema)
        {
            return cashschema.y;
        }

        public static CashSchema valueOf(String s1)
        {
            return (CashSchema)Enum.valueOf(com/snapchat/android/database/table/CashFeedItemTable$CashSchema, s1);
        }

        public static CashSchema[] values()
        {
            return (CashSchema[])A.clone();
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
            a = new CashSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
            b = new CashSchema("RECIPIENT", 1, 1, "recipient", DataType.a);
            c = new CashSchema("SENDER", 2, 2, "sender", DataType.a);
            d = new CashSchema("RECIPIENT_ID", 3, 3, "recipient_id", DataType.a);
            e = new CashSchema("SENDER_ID", 4, 4, "sender_id", DataType.a);
            f = new CashSchema("AMOUNT", 5, 5, "amount", DataType.b);
            g = new CashSchema("CURRENCY_CODE", 6, 6, "currency_code", DataType.a);
            h = new CashSchema("USER_TEXT", 7, 7, "text", DataType.a);
            i = new CashSchema("IS_VIEWED_BY_SENDER", 8, 8, "sender_viewed", DataType.d);
            j = new CashSchema("IS_VIEWED_BY_RECIPIENT", 9, 9, "recipient_viewed", DataType.d);
            k = new CashSchema("IS_SAVED_BY_SENDER", 10, 10, "sender_saved", DataType.d);
            l = new CashSchema("IS_SAVED_BY_RECIPIENT", 11, 11, "recipient_saved", DataType.d);
            m = new CashSchema("SENDER_SAVE_VERSION", 12, 12, "sender_save_version", DataType.b);
            n = new CashSchema("RECIPIENT_SAVE_VERSION", 13, 13, "recipient_save_version", DataType.b);
            o = new CashSchema("STATUS", 14, 14, "status", DataType.a);
            p = new CashSchema("TIMESTAMP", 15, 15, "timestamp", DataType.b);
            q = new CashSchema("UPDATED_TIMESTAMP", 16, 16, "updated_timestamp", DataType.b);
            r = new CashSchema("IS_FROM_SERVER", 17, 17, "is_from_server", DataType.d);
            s = new CashSchema("ITER_TOKEN", 18, 18, "iter_token", DataType.a);
            t = new CashSchema("TARGET_VIEW", 19, 19, "target_view", DataType.a);
            u = new CashSchema("SEND_RECEIVE_STATUS", 20, 20, "send_receive_status", DataType.a);
            v = new CashSchema("PROVIDER", 21, 21, "provider", DataType.a);
            CashSchema acashschema[] = new CashSchema[22];
            acashschema[0] = a;
            acashschema[1] = b;
            acashschema[2] = c;
            acashschema[3] = d;
            acashschema[4] = e;
            acashschema[5] = f;
            acashschema[6] = g;
            acashschema[7] = h;
            acashschema[8] = i;
            acashschema[9] = j;
            acashschema[10] = k;
            acashschema[11] = l;
            acashschema[12] = m;
            acashschema[13] = n;
            acashschema[14] = o;
            acashschema[15] = p;
            acashschema[16] = q;
            acashschema[17] = r;
            acashschema[18] = s;
            acashschema[19] = t;
            acashschema[20] = u;
            acashschema[21] = v;
            A = acashschema;
        }

        private CashSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            w = j1;
            x = s2;
            y = datatype;
        }

        private CashSchema(String s1, int i1, int j1, String s2, DataType datatype, String s3)
        {
            super(s1, i1);
            w = j1;
            x = s2;
            y = datatype;
            z = s3;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static final String e = com/snapchat/android/database/table/CashFeedItemTable.getSimpleName();
    private static CashFeedItemTable f;
    private static ConcurrentHashMap g = new ConcurrentHashMap();
    private static ConcurrentHashMap h = new ConcurrentHashMap();

    private CashFeedItemTable()
    {
    }

    public static Map a(SQLiteDatabase sqlitedatabase, Set set)
    {
        HashMap hashmap;
        Cursor cursor;
        hashmap = new HashMap();
        cursor = sqlitedatabase.query("CashFeedItem", a, null, null, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        String s = cursor.getString(CashSchema.t.b());
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
        CashFeedItem cashfeeditem = c(cursor);
        if (cashfeeditem == null) goto _L8; else goto _L10
_L10:
        String s1;
        Object obj;
        s1 = cashfeeditem.I();
        obj = (List)hashmap.get(s1);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        obj = new ArrayList();
        ((List) (obj)).add(cashfeeditem);
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

    public static void a(Context context)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        sqlitedatabase.beginTransaction();
        Timber.b(e, "CASH-LOG: Deleting all cash feed icons", new Object[0]);
        String s = (new StringBuilder()).append(CashSchema.t.c()).append("=?").toString();
        String as[] = new String[1];
        as[0] = com.snapchat.android.model.Snap.TargetView.FEED.name();
        sqlitedatabase.delete("CashFeedItem", s, as);
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        throw exception;
    }

    public static void a(Context context, CashFeedItem cashfeeditem)
    {
        com/snapchat/android/database/table/CashFeedItemTable;
        JVM INSTR monitorenter ;
        (new AsyncTask(context, cashfeeditem) {

            final Context a;
            final CashFeedItem b;

            protected transient Void a(Void avoid[])
            {
                SQLiteDatabase sqlitedatabase;
                sqlitedatabase = DatabaseHelper.a(a).getWritableDatabase();
                sqlitedatabase.beginTransaction();
                Cursor cursor;
                String as[] = CashFeedItemTable.a;
                String s = (new StringBuilder()).append(CashSchema.a.c()).append("=? AND ").append(CashSchema.t.c()).append("=?").toString();
                String as1[] = new String[2];
                as1[0] = b.d();
                as1[1] = com.snapchat.android.model.Snap.TargetView.CHAT.name();
                cursor = sqlitedatabase.query("CashFeedItem", as, s, as1, null, null, null);
                if (cursor == null) goto _L2; else goto _L1
_L1:
                int i;
                i = cursor.getCount();
                cursor.close();
                if (i <= 0)
                {
                    break MISSING_BLOCK_LABEL_222;
                }
                ContentValues contentvalues = new ContentValues();
                contentvalues.put(CashSchema.t.c(), com.snapchat.android.model.Snap.TargetView.CHAT_AND_FEED.name());
                String s1 = (new StringBuilder()).append(CashSchema.a.c()).append("=?").toString();
                String as2[] = new String[1];
                as2[0] = b.d();
                sqlitedatabase.update("CashFeedItem", contentvalues, s1, as2);
_L3:
                sqlitedatabase.setTransactionSuccessful();
_L2:
                sqlitedatabase.endTransaction();
                return null;
                CashFeedItemTable.a(sqlitedatabase, b, com.snapchat.android.model.Snap.TargetView.FEED);
                  goto _L3
                Exception exception1;
                exception1;
                sqlitedatabase.endTransaction();
                throw exception1;
            }

            protected Object doInBackground(Object aobj[])
            {
                return a((Void[])aobj);
            }

            
            {
                a = context;
                b = cashfeeditem;
                super();
            }
        }).executeOnExecutor(ScExecutors.g, new Void[0]);
        com/snapchat/android/database/table/CashFeedItemTable;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(Context context, Collection collection)
    {
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            CashFeedItem cashfeeditem = (CashFeedItem)iterator.next();
            if (!cashfeeditem.h().h())
            {
                g.put(cashfeeditem.d(), cashfeeditem);
            }
        } while (true);
        if (context == null)
        {
            return;
        } else
        {
            b(context);
            return;
        }
    }

    protected static void a(SQLiteDatabase sqlitedatabase, CashFeedItem cashfeeditem, com.snapchat.android.model.Snap.TargetView targetview)
    {
        int i = 1;
        if (cashfeeditem == null)
        {
            return;
        }
        CashTransaction cashtransaction = cashfeeditem.h();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(CashSchema.a.c(), cashfeeditem.d());
        contentvalues.put(CashSchema.b.c(), cashfeeditem.J());
        contentvalues.put(CashSchema.c.c(), cashfeeditem.l());
        contentvalues.put(CashSchema.d.c(), cashtransaction.e());
        contentvalues.put(CashSchema.e.c(), cashtransaction.c());
        contentvalues.put(CashSchema.f.c(), Integer.valueOf(cashfeeditem.f()));
        contentvalues.put(CashSchema.g.c(), cashtransaction.k().name());
        contentvalues.put(CashSchema.h.c(), cashfeeditem.ap());
        String s = CashSchema.i.c();
        int j;
        String s1;
        int k;
        String s2;
        int l;
        String s3;
        int i1;
        String s4;
        if (cashtransaction.q())
        {
            j = i;
        } else
        {
            j = 0;
        }
        contentvalues.put(s, Integer.valueOf(j));
        s1 = CashSchema.j.c();
        if (cashtransaction.r())
        {
            k = i;
        } else
        {
            k = 0;
        }
        contentvalues.put(s1, Integer.valueOf(k));
        s2 = CashSchema.k.c();
        if (cashtransaction.s())
        {
            l = i;
        } else
        {
            l = 0;
        }
        contentvalues.put(s2, Integer.valueOf(l));
        s3 = CashSchema.l.c();
        if (cashtransaction.u())
        {
            i1 = i;
        } else
        {
            i1 = 0;
        }
        contentvalues.put(s3, Integer.valueOf(i1));
        contentvalues.put(CashSchema.m.c(), Integer.valueOf(cashtransaction.t()));
        contentvalues.put(CashSchema.n.c(), Integer.valueOf(cashtransaction.v()));
        contentvalues.put(CashSchema.o.c(), cashtransaction.o().name());
        contentvalues.put(CashSchema.p.c(), Long.valueOf(cashtransaction.m()));
        contentvalues.put(CashSchema.q.c(), Long.valueOf(cashtransaction.n()));
        s4 = CashSchema.r.c();
        if (!cashtransaction.i())
        {
            i = 0;
        }
        contentvalues.put(s4, Integer.valueOf(i));
        contentvalues.put(CashSchema.s.c(), cashfeeditem.A());
        contentvalues.put(CashSchema.t.c(), targetview.name());
        contentvalues.put(CashSchema.u.c(), cashfeeditem.K().name());
        contentvalues.put(CashSchema.v.c(), cashfeeditem.g());
        sqlitedatabase.insertWithOnConflict("CashFeedItem", "NULL", contentvalues, 5);
    }

    public static CashFeedItemTable b()
    {
        com/snapchat/android/database/table/CashFeedItemTable;
        JVM INSTR monitorenter ;
        CashFeedItemTable cashfeeditemtable;
        if (f == null)
        {
            f = new CashFeedItemTable();
        }
        cashfeeditemtable = f;
        com/snapchat/android/database/table/CashFeedItemTable;
        JVM INSTR monitorexit ;
        return cashfeeditemtable;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Context context)
    {
        com/snapchat/android/database/table/CashFeedItemTable;
        JVM INSTR monitorenter ;
        if (!g.isEmpty()) goto _L2; else goto _L1
_L1:
        boolean flag = h.isEmpty();
        if (!flag) goto _L2; else goto _L3
_L3:
        com/snapchat/android/database/table/CashFeedItemTable;
        JVM INSTR monitorexit ;
        return;
_L2:
        (new AsyncTask(context) {

            final Context a;

            protected transient Void a(Void avoid[])
            {
                SQLiteDatabase sqlitedatabase;
                sqlitedatabase = DatabaseHelper.a(a).getWritableDatabase();
                sqlitedatabase.beginTransaction();
                HashSet hashset;
                hashset = new HashSet();
                java.util.Map.Entry entry1;
                for (Iterator iterator = CashFeedItemTable.f().entrySet().iterator(); iterator.hasNext(); CashFeedItemTable.a(sqlitedatabase, (CashFeedItem)entry1.getValue(), com.snapchat.android.model.Snap.TargetView.CHAT))
                {
                    entry1 = (java.util.Map.Entry)iterator.next();
                    Timber.b(CashFeedItemTable.g(), (new StringBuilder()).append("CASH-LOG: Saving a cash feed item with ID ").append((String)entry1.getKey()).toString(), new Object[0]);
                    hashset.add(entry1.getKey());
                }

                break MISSING_BLOCK_LABEL_139;
                Exception exception1;
                exception1;
                sqlitedatabase.endTransaction();
                throw exception1;
                HashSet hashset1;
                if (!hashset.isEmpty())
                {
                    UserPrefs.V();
                }
                hashset1 = new HashSet();
                String s;
                String as[];
                for (Iterator iterator1 = CashFeedItemTable.h().entrySet().iterator(); iterator1.hasNext(); sqlitedatabase.delete("CashFeedItem", s, as))
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                    Timber.b(CashFeedItemTable.g(), (new StringBuilder()).append("CASH-LOG: Deleting a cash feed item with ID ").append((String)entry.getKey()).toString(), new Object[0]);
                    hashset1.add(entry.getKey());
                    s = (new StringBuilder()).append(CashSchema.a.c()).append("=?").toString();
                    as = new String[1];
                    as[0] = ((CashFeedItem)entry.getValue()).d();
                }

                CashFeedItemTable.f().keySet().removeAll(hashset);
                CashFeedItemTable.h().keySet().removeAll(hashset1);
                sqlitedatabase.setTransactionSuccessful();
                sqlitedatabase.endTransaction();
                return null;
            }

            protected Object doInBackground(Object aobj[])
            {
                return a((Void[])aobj);
            }

            
            {
                a = context;
                super();
            }
        }).executeOnExecutor(ScExecutors.g, new Void[0]);
        if (true) goto _L3; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Context context, Collection collection)
    {
        CashFeedItem cashfeeditem;
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); h.put(cashfeeditem.d(), cashfeeditem))
        {
            cashfeeditem = (CashFeedItem)iterator.next();
        }

        if (context == null)
        {
            return;
        } else
        {
            b(context);
            return;
        }
    }

    private static CashFeedItem c(Cursor cursor)
    {
        com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus sendreceivestatus;
        String s = cursor.getString(CashSchema.a.b());
        String s1 = cursor.getString(CashSchema.c.b());
        String s2 = cursor.getString(CashSchema.b.b());
        String s3 = cursor.getString(CashSchema.e.b());
        String s4 = cursor.getString(CashSchema.d.b());
        String s5 = cursor.getString(CashSchema.h.b());
        int i = cursor.getInt(CashSchema.f.b());
        String s6 = cursor.getString(CashSchema.g.b());
        long l = cursor.getLong(CashSchema.p.b());
        long l1 = cursor.getLong(CashSchema.q.b());
        String s7 = cursor.getString(CashSchema.o.b());
        String s8 = cursor.getString(CashSchema.u.b());
        String s9 = cursor.getString(CashSchema.v.b());
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        int j;
        int k;
        String s10;
        com.snapchat.android.model.CashTransaction.Builder builder;
        CashTransaction cashtransaction;
        CashFeedItem cashfeeditem;
        if (cursor.getInt(CashSchema.r.b()) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (cursor.getInt(CashSchema.i.b()) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (cursor.getInt(CashSchema.j.b()) == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (cursor.getInt(CashSchema.k.b()) == 1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (cursor.getInt(CashSchema.l.b()) == 1)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        j = cursor.getInt(CashSchema.m.b());
        k = cursor.getInt(CashSchema.n.b());
        s10 = cursor.getString(CashSchema.s.b());
        builder = new com.snapchat.android.model.CashTransaction.Builder(s1, s2, i);
        cashtransaction = builder.c(s).e(s9).a(s3).b(s4).a(com.snapchat.android.util.CashUtils.CurrencyCode.valueOf(s6)).d(s5).b(l).a(l1).a(com.snapchat.android.model.CashTransaction.TransactionStatus.valueOf(s7)).b(flag).a();
        cashtransaction.c(flag1);
        cashtransaction.d(flag2);
        cashtransaction.e(flag3);
        cashtransaction.f(flag4);
        cashtransaction.b(j);
        cashtransaction.c(k);
        cashfeeditem = new CashFeedItem(cashtransaction);
        cashfeeditem.a(s10);
        sendreceivestatus = com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.valueOf(s8);
        if (!sendreceivestatus.equals(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING)) goto _L2; else goto _L1
_L1:
        sendreceivestatus = com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED;
_L4:
        cashfeeditem.a(sendreceivestatus);
        return cashfeeditem;
_L2:
        if (sendreceivestatus.equals(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.RECEIVING))
        {
            sendreceivestatus = com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.RECEIVED;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static ConcurrentHashMap f()
    {
        return g;
    }

    static String g()
    {
        return e;
    }

    static ConcurrentHashMap h()
    {
        return h;
    }

    protected ContentValues a(CashFeedItem cashfeeditem)
    {
        return null;
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((CashFeedItem)obj);
    }

    protected CashFeedItem a(Cursor cursor)
    {
        return null;
    }

    public String a()
    {
        return "CashFeedItem";
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
        CashSchema acashschema[] = CashSchema.values();
        int i = acashschema.length;
        for (int j = 0; j < i; j++)
        {
            CashSchema cashschema = acashschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(CashSchema.a(cashschema)).append(" ").append(CashSchema.b(cashschema).toString()).toString());
            String s = cashschema.d();
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
        return CashSchema.values();
    }

    public boolean e()
    {
        return true;
    }

    static 
    {
        int i = 0;
        CashSchema acashschema[] = CashSchema.values();
        int j = acashschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = acashschema[k].c();
        }

        b = new HashMap();
        CashSchema acashschema1[] = CashSchema.values();
        for (int l = acashschema1.length; i < l; i++)
        {
            CashSchema cashschema = acashschema1[i];
            b.put(cashschema.c(), cashschema.c());
        }

    }
}
