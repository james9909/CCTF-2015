// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class ChatTable extends DbTable
{
    public static final class ChatSchema extends Enum
        implements Schema
    {

        public static final ChatSchema a;
        public static final ChatSchema b;
        public static final ChatSchema c;
        public static final ChatSchema d;
        public static final ChatSchema e;
        public static final ChatSchema f;
        public static final ChatSchema g;
        public static final ChatSchema h;
        public static final ChatSchema i;
        public static final ChatSchema j;
        public static final ChatSchema k;
        public static final ChatSchema l;
        public static final ChatSchema m;
        public static final ChatSchema n;
        public static final ChatSchema o;
        public static final ChatSchema p;
        public static final ChatSchema q;
        public static final ChatSchema r;
        public static final ChatSchema s;
        public static final ChatSchema t;
        public static final ChatSchema u;
        private static final ChatSchema z[];
        private int v;
        private String w;
        private DataType x;
        private String y;

        static String a(ChatSchema chatschema)
        {
            return chatschema.w;
        }

        static DataType b(ChatSchema chatschema)
        {
            return chatschema.x;
        }

        public static ChatSchema valueOf(String s1)
        {
            return (ChatSchema)Enum.valueOf(com/snapchat/android/database/table/ChatTable$ChatSchema, s1);
        }

        public static ChatSchema[] values()
        {
            return (ChatSchema[])z.clone();
        }

        public DataType a()
        {
            return x;
        }

        public int b()
        {
            return v;
        }

        public String c()
        {
            return w;
        }

        public String d()
        {
            return y;
        }

        static 
        {
            a = new ChatSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY KEY");
            b = new ChatSchema("TYPE", 1, 1, "type", DataType.a);
            c = new ChatSchema("ACK_ID", 2, 2, "ack_id", DataType.a);
            d = new ChatSchema("RECIPIENT", 3, 3, "recipient", DataType.a);
            e = new ChatSchema("SENDER", 4, 4, "sender", DataType.a);
            f = new ChatSchema("IS_SAVED_BY_SENDER", 5, 5, "is_saved_by_sender", DataType.d);
            g = new ChatSchema("IS_SAVED_BY_RECIPIENT", 6, 6, "is_saved_by_recipient", DataType.d);
            h = new ChatSchema("IS_RELEASED_BY_RECIPIENT", 7, 7, "is_released_by_recipient", DataType.d);
            i = new ChatSchema("SEND_RECEIVE_STATUS", 8, 8, "send_receive_status", DataType.a);
            j = new ChatSchema("TIMESTAMP", 9, 9, "timestamp", DataType.b);
            k = new ChatSchema("SEQ_NUM", 10, 10, "seq_num", DataType.b);
            l = new ChatSchema("USER_TEXT", 11, 11, "text", DataType.a);
            m = new ChatSchema("MEDIA_ID", 12, 12, "media_id", DataType.a);
            n = new ChatSchema("CONVERSATION_ID", 13, 13, "conversation_id", DataType.a);
            o = new ChatSchema("SENDER_MESSAGE_STATE_VERSION", 14, 14, "sender_message_state_version", DataType.b);
            p = new ChatSchema("RECIPIENT_MESSAGE_STATE_VERSION", 15, 15, "recipient_message_state_version", DataType.b);
            q = new ChatSchema("ITER_TOKEN", 16, 16, "iter_token", DataType.a);
            r = new ChatSchema("HAS_LINKS", 17, 17, "has_links", DataType.d);
            s = new ChatSchema("TARGET_VIEW", 18, 18, "target_view", DataType.a);
            t = new ChatSchema("RELEASED_TIMESTAMP", 19, 19, "released_timestamp", DataType.b);
            u = new ChatSchema("STATUS_TEXT", 20, 20, "status_text", DataType.a);
            ChatSchema achatschema[] = new ChatSchema[21];
            achatschema[0] = a;
            achatschema[1] = b;
            achatschema[2] = c;
            achatschema[3] = d;
            achatschema[4] = e;
            achatschema[5] = f;
            achatschema[6] = g;
            achatschema[7] = h;
            achatschema[8] = i;
            achatschema[9] = j;
            achatschema[10] = k;
            achatschema[11] = l;
            achatschema[12] = m;
            achatschema[13] = n;
            achatschema[14] = o;
            achatschema[15] = p;
            achatschema[16] = q;
            achatschema[17] = r;
            achatschema[18] = s;
            achatschema[19] = t;
            achatschema[20] = u;
            z = achatschema;
        }

        private ChatSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            v = j1;
            w = s2;
            x = datatype;
        }

        private ChatSchema(String s1, int i1, int j1, String s2, DataType datatype, String s3)
        {
            super(s1, i1);
            v = j1;
            w = s2;
            x = datatype;
            y = s3;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static ChatTable e;

    private ChatTable()
    {
    }

    public static Map a(SQLiteDatabase sqlitedatabase, Set set)
    {
        HashMap hashmap;
        Cursor cursor;
        hashmap = new HashMap();
        cursor = sqlitedatabase.query("Chat", a, null, null, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        String s = cursor.getString(ChatSchema.s.b());
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
        Chat chat = c(cursor);
        if (chat == null) goto _L8; else goto _L10
_L10:
        String s1;
        Object obj;
        s1 = cursor.getString(ChatSchema.n.b());
        obj = (List)hashmap.get(s1);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        obj = new ArrayList();
        ((List) (obj)).add(chat);
        if (chat.K() == com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING)
        {
            a(chat, s1);
        }
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

    public static void a(Context context, SQLiteDatabase sqlitedatabase, Chat chat, com.snapchat.android.model.Snap.TargetView targetview, boolean flag)
    {
        int i = 1;
        if (chat == null)
        {
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(ChatSchema.a.c(), chat.d());
        contentvalues.put(ChatSchema.b.c(), chat.e());
        contentvalues.put(ChatSchema.j.c(), Long.valueOf(chat.ae()));
        String s = chat.l();
        if (TextUtils.isEmpty(s))
        {
            s = "";
        }
        contentvalues.put(ChatSchema.e.c(), s);
        if (chat.m() != null && !chat.m().isEmpty())
        {
            contentvalues.put(ChatSchema.d.c(), (String)chat.m().get(0));
        }
        contentvalues.put(ChatSchema.c.c(), chat.h());
        contentvalues.put(ChatSchema.l.c(), chat.ap());
        contentvalues.put(ChatSchema.k.c(), Long.valueOf(chat.i()));
        contentvalues.put(ChatSchema.o.c(), Integer.valueOf(chat.o()));
        contentvalues.put(ChatSchema.p.c(), Integer.valueOf(chat.p()));
        contentvalues.put(ChatSchema.n.c(), chat.I());
        String s1 = ChatSchema.h.c();
        int j;
        String s2;
        int k;
        String s3;
        int l;
        if (chat.g())
        {
            j = i;
        } else
        {
            j = 0;
        }
        contentvalues.put(s1, Integer.valueOf(j));
        s2 = ChatSchema.f.c();
        if (chat.q())
        {
            k = i;
        } else
        {
            k = 0;
        }
        contentvalues.put(s2, Integer.valueOf(k));
        s3 = ChatSchema.g.c();
        if (chat.r())
        {
            l = i;
        } else
        {
            l = 0;
        }
        contentvalues.put(s3, Integer.valueOf(l));
        contentvalues.put(ChatSchema.i.c(), chat.K().name());
        contentvalues.put(ChatSchema.q.c(), chat.A());
        contentvalues.put(ChatSchema.s.c(), targetview.name());
        contentvalues.put(ChatSchema.t.c(), Long.valueOf(chat.w()));
        contentvalues.put(ChatSchema.u.c(), chat.b());
        if (chat instanceof ChatText)
        {
            ChatText chattext = (ChatText)chat;
            String s4 = ChatSchema.r.c();
            ChatMedia chatmedia;
            if (!chattext.aq())
            {
                i = 0;
            }
            contentvalues.put(s4, Integer.valueOf(i));
        }
        if (chat instanceof ChatMedia)
        {
            chatmedia = (ChatMedia)chat;
            contentvalues.put(ChatSchema.m.c(), chatmedia.D());
        }
        sqlitedatabase.insertWithOnConflict("Chat", null, contentvalues, 5);
    }

    private static void a(Chat chat, String s)
    {
        long l = System.currentTimeMillis() - chat.ae();
        if (l > 20000L)
        {
            chat.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED);
            return;
        } else
        {
            (new Handler(Looper.getMainLooper())).postDelayed(new Runnable(chat, s) {

                final Chat a;
                final String b;

                public void run()
                {
                    if (a.K().equals(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING))
                    {
                        a.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED);
                        com.snapchat.android.model.chat.ChatConversation chatconversation = ConversationUtils.a(b);
                        if (chatconversation != null)
                        {
                            FeedIconManager.a().a(chatconversation, false);
                        }
                        BusProvider.a().a(new UpdateFeedEvent());
                        BusProvider.a().a(new ChatUpdatedEvent(a.I(), a.d()));
                    }
                }

            
            {
                a = chat;
                b = s;
                super();
            }
            }, 20000L - l);
            return;
        }
    }

    public static ChatTable b()
    {
        com/snapchat/android/database/table/ChatTable;
        JVM INSTR monitorenter ;
        ChatTable chattable;
        if (e == null)
        {
            e = new ChatTable();
        }
        chattable = e;
        com/snapchat/android/database/table/ChatTable;
        JVM INSTR monitorexit ;
        return chattable;
        Exception exception;
        exception;
        throw exception;
    }

    protected static Chat c(Cursor cursor)
    {
        String s = cursor.getString(ChatSchema.a.b());
        String s1 = cursor.getString(ChatSchema.b.b());
        String s2 = cursor.getString(ChatSchema.e.b());
        String s3 = cursor.getString(ChatSchema.d.b());
        String s4 = cursor.getString(ChatSchema.l.b());
        String s5 = cursor.getString(ChatSchema.u.b());
        String s6 = cursor.getString(ChatSchema.m.b());
        long l = cursor.getLong(ChatSchema.j.b());
        String s7 = cursor.getString(ChatSchema.c.b());
        com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus sendreceivestatus = com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.valueOf(cursor.getString(ChatSchema.i.b()));
        boolean flag;
        boolean flag1;
        boolean flag2;
        int i;
        int j;
        long l1;
        String s8;
        boolean flag3;
        Object obj;
        long l2;
        if (cursor.getInt(ChatSchema.h.b()) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (cursor.getInt(ChatSchema.f.b()) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (cursor.getInt(ChatSchema.g.b()) == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        i = cursor.getInt(ChatSchema.o.b());
        j = cursor.getInt(ChatSchema.p.b());
        l1 = cursor.getLong(ChatSchema.k.b());
        s8 = cursor.getString(ChatSchema.q.b());
        if (cursor.getInt(ChatSchema.r.b()) == 1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (s1.equals("text"))
        {
            obj = (new com.snapchat.android.model.chat.ChatText.Builder(s2, s3)).a(s4).a(flag3).a();
        } else
        if (s1.equals("media"))
        {
            obj = (new com.snapchat.android.model.chat.ChatMedia.Builder(s2, s3)).a(s6).a();
        } else
        if (s1.equals("screenshot"))
        {
            obj = (new com.snapchat.android.model.chat.ChatScreenshot.Builder(s2, s3)).a();
        } else
        {
            obj = (new com.snapchat.android.model.chat.ChatUnknown.Builder(s2, s3)).a();
        }
        l2 = cursor.getLong(ChatSchema.t.b());
        ((Chat) (obj)).d(s);
        ((Chat) (obj)).b(s7);
        ((Chat) (obj)).c(l);
        ((Chat) (obj)).b(flag1);
        ((Chat) (obj)).c(flag2);
        ((Chat) (obj)).a(flag);
        ((Chat) (obj)).a(i);
        ((Chat) (obj)).b(j);
        ((Chat) (obj)).a(sendreceivestatus);
        ((Chat) (obj)).b(l1);
        ((Chat) (obj)).a(s8);
        ((Chat) (obj)).d(l2);
        if (flag)
        {
            ((Chat) (obj)).e(l2);
        }
        ((Chat) (obj)).c(s5);
        return ((Chat) (obj));
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
        return "Chat";
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
        ChatSchema achatschema[] = ChatSchema.values();
        int i = achatschema.length;
        for (int j = 0; j < i; j++)
        {
            ChatSchema chatschema = achatschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(ChatSchema.a(chatschema)).append(" ").append(ChatSchema.b(chatschema).toString()).toString());
            String s = chatschema.d();
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
        return ChatSchema.values();
    }

    public boolean e()
    {
        return true;
    }

    static 
    {
        int i = 0;
        ChatSchema achatschema[] = ChatSchema.values();
        int j = achatschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = achatschema[k].c();
        }

        b = new HashMap();
        ChatSchema achatschema1[] = ChatSchema.values();
        for (int l = achatschema1.length; i < l; i++)
        {
            ChatSchema chatschema = achatschema1[i];
            b.put(chatschema.c(), chatschema.c());
        }

    }
}
