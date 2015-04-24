// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.util.crypto.CbcSlightlySecurePreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ClearedChatIdsTable, SentSnapTable, ReceivedSnapTable, 
//            ChatsReceivedInLastHourTable, CashFeedItemTable, ChatTable

public class ConversationTable extends DbTable
{
    public static final class ConversationSchema extends Enum
        implements Schema
    {

        public static final ConversationSchema a;
        public static final ConversationSchema b;
        public static final ConversationSchema c;
        public static final ConversationSchema d;
        public static final ConversationSchema e;
        public static final ConversationSchema f;
        public static final ConversationSchema g;
        public static final ConversationSchema h;
        public static final ConversationSchema i;
        public static final ConversationSchema j;
        public static final ConversationSchema k;
        public static final ConversationSchema l;
        public static final ConversationSchema m;
        public static final ConversationSchema n;
        public static final ConversationSchema o;
        public static final ConversationSchema p;
        public static final ConversationSchema q;
        public static final ConversationSchema r;
        private static final ConversationSchema w[];
        private int s;
        private String t;
        private DataType u;
        private String v;

        static String a(ConversationSchema conversationschema)
        {
            return conversationschema.t;
        }

        static DataType b(ConversationSchema conversationschema)
        {
            return conversationschema.u;
        }

        public static ConversationSchema valueOf(String s1)
        {
            return (ConversationSchema)Enum.valueOf(com/snapchat/android/database/table/ConversationTable$ConversationSchema, s1);
        }

        public static ConversationSchema[] values()
        {
            return (ConversationSchema[])w.clone();
        }

        public DataType a()
        {
            return u;
        }

        public int b()
        {
            return s;
        }

        public String c()
        {
            return t;
        }

        public String d()
        {
            return v;
        }

        static 
        {
            a = new ConversationSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
            b = new ConversationSchema("SENDER", 1, 1, "sender", DataType.a);
            c = new ConversationSchema("RECIPIENT", 2, 2, "recipient", DataType.a);
            d = new ConversationSchema("TIMESTAMP", 3, 3, "timestamp", DataType.b);
            e = new ConversationSchema("HAS_UNVIEWED_CHATS", 4, 4, "has_unviewed_chats", DataType.d);
            f = new ConversationSchema("HAS_UNVIEWED_SNAPS", 5, 5, "has_unviewed_snaps", DataType.d);
            g = new ConversationSchema("HAS_UNVIEWED_AUDIO_SNAPS", 6, 6, "has_unviewed_audio_snap", DataType.d);
            h = new ConversationSchema("HAS_UNVIEWED_CASH", 7, 7, "has_unviewed_cash", DataType.d);
            i = new ConversationSchema("ITER_TOKEN", 8, 8, "iter_token", DataType.a);
            j = new ConversationSchema("CHATS_ITER_TOKEN", 9, 9, "chats_iter_token", DataType.a);
            k = new ConversationSchema("LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED", 10, 10, "last_seq_num_of_my_chat_they_released", DataType.b);
            l = new ConversationSchema("LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED", 11, 11, "last_seq_num_of_their_chat_i_released", DataType.b);
            m = new ConversationSchema("LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED", 12, 12, "last_seq_num_of_my_chat_i_deleted", DataType.b);
            n = new ConversationSchema("LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED", 13, 13, "last_seq_num_of_their_chat_i_deleted", DataType.b);
            o = new ConversationSchema("LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED", 14, 14, "last_timestamp_of_sent_snap_read_receipt_i_deleted", DataType.b);
            p = new ConversationSchema("LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED", 15, 15, "last_timestamp_of_received_snap_read_receipt_i_deleted", DataType.b);
            q = new ConversationSchema("MY_LAST_SEQ_NUM", 16, 16, "my_last_seq_num", DataType.b);
            r = new ConversationSchema("THEIR_LAST_SEQ_NUM", 17, 17, "their_last_seq_num", DataType.b);
            ConversationSchema aconversationschema[] = new ConversationSchema[18];
            aconversationschema[0] = a;
            aconversationschema[1] = b;
            aconversationschema[2] = c;
            aconversationschema[3] = d;
            aconversationschema[4] = e;
            aconversationschema[5] = f;
            aconversationschema[6] = g;
            aconversationschema[7] = h;
            aconversationschema[8] = i;
            aconversationschema[9] = j;
            aconversationschema[10] = k;
            aconversationschema[11] = l;
            aconversationschema[12] = m;
            aconversationschema[13] = n;
            aconversationschema[14] = o;
            aconversationschema[15] = p;
            aconversationschema[16] = q;
            aconversationschema[17] = r;
            w = aconversationschema;
        }

        private ConversationSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            s = j1;
            t = s2;
            u = datatype;
        }

        private ConversationSchema(String s1, int i1, int j1, String s2, DataType datatype, String s3)
        {
            super(s1, i1);
            s = j1;
            t = s2;
            u = datatype;
            v = s3;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static ConversationTable e;
    private final ChatsReceivedInLastHourTable f;

    ConversationTable(ChatsReceivedInLastHourTable chatsreceivedinlasthourtable)
    {
        f = chatsreceivedinlasthourtable;
    }

    static ChatConversation a(SQLiteDatabase sqlitedatabase, Cursor cursor, Map map, Map map1)
    {
        String s = cursor.getString(ConversationSchema.a.b());
        String s1 = cursor.getString(ConversationSchema.b.b());
        String s2 = cursor.getString(ConversationSchema.c.b());
        long l = cursor.getLong(ConversationSchema.q.b());
        long l1 = cursor.getLong(ConversationSchema.r.b());
        long l2 = cursor.getLong(ConversationSchema.d.b());
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        String s3;
        String s4;
        long l3;
        long l4;
        long l5;
        long l6;
        long l7;
        long l8;
        Object obj;
        Set set;
        ChatConversation chatconversation;
        if (cursor.getInt(ConversationSchema.e.b()) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (cursor.getInt(ConversationSchema.f.b()) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (cursor.getInt(ConversationSchema.g.b()) == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (cursor.getInt(ConversationSchema.h.b()) == 1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        s3 = cursor.getString(ConversationSchema.i.b());
        s4 = cursor.getString(ConversationSchema.j.b());
        l3 = cursor.getLong(ConversationSchema.k.b());
        l4 = cursor.getLong(ConversationSchema.l.b());
        l5 = cursor.getLong(ConversationSchema.m.b());
        l6 = cursor.getLong(ConversationSchema.n.b());
        l7 = cursor.getLong(ConversationSchema.o.b());
        l8 = cursor.getLong(ConversationSchema.p.b());
        obj = (List)map.get(s);
        if (obj == null)
        {
            obj = new ArrayList();
        }
        ClearedChatIdsTable.a(SnapchatApplication.e());
        set = ClearedChatIdsTable.a(sqlitedatabase, s);
        chatconversation = ChatConversationManager.a().a(s2, true);
        if (chatconversation == null || chatconversation.aC())
        {
            String s5;
            String s6;
            List list;
            if (chatconversation == null)
            {
                chatconversation = new ChatConversation(s1, s2, false);
            } else
            {
                chatconversation.n(false);
            }
            chatconversation.d(l);
            chatconversation.e(l1);
            chatconversation.b(((List) (obj)));
            chatconversation.c(l2);
            chatconversation.g(flag);
            chatconversation.j(flag1);
            chatconversation.i(flag2);
            chatconversation.h(flag3);
            if (TextUtils.isEmpty(s3))
            {
                s5 = null;
            } else
            {
                s5 = s3;
            }
            chatconversation.j(s5);
            if (TextUtils.isEmpty(s4))
            {
                s6 = null;
            } else
            {
                s6 = s4;
            }
            chatconversation.k(s6);
            chatconversation.i(l3);
            chatconversation.h(l4);
            chatconversation.g(l4);
            chatconversation.a(set);
            list = (List)map1.get(s);
            if (list != null && !list.isEmpty())
            {
                FeedIconManager.a().a(chatconversation, list);
                chatconversation.aq();
                int i = list.size();
                if (i != 1)
                {
                    Timber.e("ConversationTable", (new StringBuilder()).append("ChatConversation should contain at most 1 chatsForFeedIcon. chatsForFeedIconCount=").append(i).toString(), new Object[0]);
                }
            }
        } else
        {
            chatconversation.b(((List) (obj)));
            chatconversation.b(set);
            FeedIconManager.a().a(chatconversation, true);
        }
        if (l5 > chatconversation.ae())
        {
            chatconversation.k(l5);
        }
        if (l6 > chatconversation.ad())
        {
            chatconversation.j(l6);
        }
        if (l7 > chatconversation.af())
        {
            chatconversation.l(l7);
        }
        if (l8 > chatconversation.ai())
        {
            chatconversation.o(l8);
        }
        if (l7 > chatconversation.ag())
        {
            chatconversation.m(l7);
        }
        if (l8 > chatconversation.ah())
        {
            chatconversation.n(l8);
        }
        return chatconversation;
    }

    private static List a(SQLiteDatabase sqlitedatabase, Map map, Map map1)
    {
        ArrayList arraylist;
        Cursor cursor;
        arraylist = new ArrayList();
        cursor = sqlitedatabase.query("Conversation", a, null, null, null, null, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                arraylist.add(a(sqlitedatabase, cursor, map, map1));
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

    private static transient Map a(Map amap[])
    {
        HashMap hashmap = new HashMap();
        int i = amap.length;
        int j = 0;
        while (j < i) 
        {
            Map map = amap[j];
            Iterator iterator = map.keySet().iterator();
            while (iterator.hasNext()) 
            {
                String s = (String)iterator.next();
                List list = (List)hashmap.get(s);
                Object obj;
                List list1;
                if (list == null)
                {
                    obj = new ArrayList();
                } else
                {
                    obj = list;
                }
                list1 = (List)map.get(s);
                if (list1 != null)
                {
                    ((List) (obj)).addAll(list1);
                }
                hashmap.put(s, obj);
            }
            j++;
        }
        return hashmap;
    }

    private static void a(Context context, SQLiteDatabase sqlitedatabase, String s, Snap snap, com.snapchat.android.model.Snap.TargetView targetview, CbcSlightlySecurePreferences cbcslightlysecurepreferences)
    {
        if (snap instanceof SentSnap)
        {
            if (((SentSnap)snap).e())
            {
                SentSnapTable.a(context, sqlitedatabase, s, (SentSnap)snap, targetview);
            }
        } else
        if (snap instanceof ReceivedSnap)
        {
            ReceivedSnapTable.b().a(context, sqlitedatabase, s, (ReceivedSnap)snap, targetview);
            return;
        }
    }

    public static ConversationTable b()
    {
        com/snapchat/android/database/table/ConversationTable;
        JVM INSTR monitorenter ;
        ConversationTable conversationtable;
        if (e == null)
        {
            e = new ConversationTable(ChatsReceivedInLastHourTable.b());
        }
        conversationtable = e;
        com/snapchat/android/database/table/ConversationTable;
        JVM INSTR monitorexit ;
        return conversationtable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(ChatConversation chatconversation)
    {
        return null;
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((ChatConversation)obj);
    }

    protected ChatConversation a(Cursor cursor)
    {
        return null;
    }

    public String a()
    {
        return "Conversation";
    }

    void a(Context context, SQLiteDatabase sqlitedatabase, ChatConversation chatconversation, CbcSlightlySecurePreferences cbcslightlysecurepreferences, User user)
    {
        if (chatconversation != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        ChatFeedItem chatfeeditem;
        boolean flag2;
        ChatFeedItem chatfeeditem1;
        com.snapchat.android.model.Snap.TargetView targetview;
        s = chatconversation.u();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(ConversationSchema.a.c(), s);
        contentvalues.put(ConversationSchema.b.c(), chatconversation.b());
        contentvalues.put(ConversationSchema.c.c(), chatconversation.c());
        contentvalues.put(ConversationSchema.d.c(), Long.valueOf(chatconversation.T()));
        String s1 = ConversationSchema.e.c();
        int i;
        String s2;
        int j;
        String s3;
        int k;
        String s4;
        int l;
        Object obj;
        boolean flag;
        boolean flag1;
        HashSet hashset;
        Iterator iterator;
        if (chatconversation.ak())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put(s1, Integer.valueOf(i));
        s2 = ConversationSchema.f.c();
        if (chatconversation.as())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        contentvalues.put(s2, Integer.valueOf(j));
        s3 = ConversationSchema.g.c();
        if (chatconversation.ar())
        {
            k = 1;
        } else
        {
            k = 0;
        }
        contentvalues.put(s3, Integer.valueOf(k));
        s4 = ConversationSchema.h.c();
        if (chatconversation.al())
        {
            l = 1;
        } else
        {
            l = 0;
        }
        contentvalues.put(s4, Integer.valueOf(l));
        contentvalues.put(ConversationSchema.i.c(), chatconversation.V());
        contentvalues.put(ConversationSchema.j.c(), chatconversation.W());
        contentvalues.put(ConversationSchema.k.c(), Long.valueOf(chatconversation.ac()));
        contentvalues.put(ConversationSchema.l.c(), Long.valueOf(chatconversation.ab()));
        contentvalues.put(ConversationSchema.m.c(), Long.valueOf(chatconversation.ae()));
        contentvalues.put(ConversationSchema.n.c(), Long.valueOf(chatconversation.ad()));
        contentvalues.put(ConversationSchema.o.c(), Long.valueOf(chatconversation.af()));
        contentvalues.put(ConversationSchema.p.c(), Long.valueOf(chatconversation.ai()));
        contentvalues.put(ConversationSchema.q.c(), Long.valueOf(chatconversation.X()));
        contentvalues.put(ConversationSchema.r.c(), Long.valueOf(chatconversation.Y()));
        Timber.b("ConversationTable", false, (new StringBuilder()).append("Save conversation recipient=").append(chatconversation.c()).append(" timestamp=").append(chatconversation.T()).toString(), new Object[0]);
        sqlitedatabase.insertWithOnConflict("Conversation", null, contentvalues, 5);
        chatfeeditem = chatconversation.aw();
        if (chatfeeditem == null)
        {
            FeedIconManager.a().a(chatconversation, true);
            chatfeeditem = chatconversation.aw();
        }
        if (chatfeeditem == null)
        {
            obj = null;
        } else
        {
            obj = chatfeeditem.d();
        }
        CashFeedItemTable.b(context);
        flag = chatfeeditem instanceof CashFeedItem;
        flag1 = false;
        if (flag)
        {
            CashFeedItemTable.a(context, (CashFeedItem)chatfeeditem);
            flag1 = true;
        }
        if (chatconversation.t() != null)
        {
            hashset = new HashSet(chatconversation.t());
        } else
        {
            hashset = new HashSet();
        }
        iterator = hashset.iterator();
        flag2 = flag1;
_L5:
        if (!iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        chatfeeditem1 = (ChatFeedItem)iterator.next();
        if (TextUtils.equals(chatfeeditem1.d(), ((CharSequence) (obj))))
        {
            targetview = com.snapchat.android.model.Snap.TargetView.CHAT_AND_FEED;
        } else
        {
            targetview = com.snapchat.android.model.Snap.TargetView.CHAT;
        }
        if (!(chatfeeditem1 instanceof Chat) || (chatfeeditem1 instanceof ChatMedia)) goto _L4; else goto _L3
_L3:
        ChatTable.a(context, sqlitedatabase, (Chat)chatfeeditem1, targetview, false);
        f.a(context, chatfeeditem1);
_L6:
        boolean flag3;
        if (TextUtils.equals(chatfeeditem1.d(), ((CharSequence) (obj))))
        {
            flag3 = true;
        } else
        {
            flag3 = flag2;
        }
        flag2 = flag3;
        if (true) goto _L5; else goto _L4
_L4:
        if (chatfeeditem1 instanceof Snap)
        {
            a(context, sqlitedatabase, s, (Snap)chatfeeditem1, targetview, cbcslightlysecurepreferences);
        }
          goto _L6
        if (chatfeeditem == null || flag2) goto _L1; else goto _L7
_L7:
        if (chatfeeditem instanceof Snap)
        {
            a(context, sqlitedatabase, s, (Snap)chatfeeditem, com.snapchat.android.model.Snap.TargetView.FEED, cbcslightlysecurepreferences);
            return;
        }
        if (chatfeeditem instanceof Chat)
        {
            ChatTable.a(context, sqlitedatabase, (Chat)chatfeeditem, com.snapchat.android.model.Snap.TargetView.FEED, false);
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void a(User user)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(user.I()).getReadableDatabase();
        Timber.c("ConversationTable", "populateUserObjectFromTable - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        List list;
        Iterator iterator;
        Map map = ChatTable.a(sqlitedatabase, Snap.TARGET_VIEWS_CHAT);
        Map map1 = CashFeedItemTable.a(sqlitedatabase, Snap.TARGET_VIEWS_CHAT);
        Map map2 = ReceivedSnapTable.b().a(sqlitedatabase, Snap.TARGET_VIEWS_CHAT);
        Map map3 = a(new Map[] {
            map, map2, SentSnapTable.a(sqlitedatabase, Snap.TARGET_VIEWS_CHAT), map1
        });
        Map map4 = ChatTable.a(sqlitedatabase, Snap.TARGET_VIEWS_FEED);
        Map map5 = CashFeedItemTable.a(sqlitedatabase, Snap.TARGET_VIEWS_FEED);
        list = a(sqlitedatabase, map3, a(new Map[] {
            map4, ReceivedSnapTable.b().a(sqlitedatabase, Snap.TARGET_VIEWS_FEED), SentSnapTable.a(sqlitedatabase, Snap.TARGET_VIEWS_FEED), map5
        }));
        iterator = map2.values().iterator();
_L2:
        List list1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_288;
            }
            list1 = (List)iterator.next();
        } while (list1 == null);
        Iterator iterator1 = list1.iterator();
        while (iterator1.hasNext()) 
        {
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator1.next();
            if (chatfeeditem instanceof ReceivedSnap)
            {
                ReceivedSnap receivedsnap = (ReceivedSnap)chatfeeditem;
                if (!receivedsnap.j() && receivedsnap.F())
                {
                    user.a(receivedsnap);
                }
            }
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("ConversationTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
        throw exception;
        ChatConversationManager.a().a(list, true);
        sqlitedatabase.endTransaction();
        Timber.c("ConversationTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
        return;
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return ChatConversationManager.a().d();
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        ConversationSchema aconversationschema[] = ConversationSchema.values();
        int i = aconversationschema.length;
        for (int j = 0; j < i; j++)
        {
            ConversationSchema conversationschema = aconversationschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(ConversationSchema.a(conversationschema)).append(" ").append(ConversationSchema.b(conversationschema).toString()).toString());
            String s = conversationschema.d();
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
        Context context;
        SQLiteDatabase sqlitedatabase;
        context = user.I();
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("ConversationTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        Timber.c("ConversationTable", "Delete the tables for conversations, chats and snaps for safeUpdate", new Object[0]);
        sqlitedatabase.delete("Conversation", null, null);
        sqlitedatabase.delete("Chat", null, null);
        sqlitedatabase.delete("ReceivedSnaps", null, null);
        sqlitedatabase.delete("SentSnaps", null, null);
        CashFeedItemTable.a(context);
        List list = ChatConversationManager.a().d();
        CbcSlightlySecurePreferences cbcslightlysecurepreferences = new CbcSlightlySecurePreferences();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatConversation chatconversation = (ChatConversation)iterator.next();
            if (!chatconversation.aC() && chatconversation.aD())
            {
                a(context, sqlitedatabase, chatconversation, cbcslightlysecurepreferences, user);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_184;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("ConversationTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("ConversationTable", "safeUpdate - endTransaction", new Object[0]);
        return;
    }

    public Schema[] d()
    {
        return ConversationSchema.values();
    }

    static 
    {
        int i = 0;
        ConversationSchema aconversationschema[] = ConversationSchema.values();
        int j = aconversationschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = aconversationschema[k].c();
        }

        b = new HashMap();
        ConversationSchema aconversationschema1[] = ConversationSchema.values();
        for (int l = aconversationschema1.length; i < l; i++)
        {
            ConversationSchema conversationschema = aconversationschema1[i];
            b.put(conversationschema.c(), conversationschema.c());
        }

    }
}
