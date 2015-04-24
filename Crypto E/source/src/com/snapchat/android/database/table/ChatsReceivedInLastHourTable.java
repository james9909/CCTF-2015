// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable

public class ChatsReceivedInLastHourTable extends DbTable
{
    public static final class ChatReceivedViaTcpSchema extends Enum
        implements Schema
    {

        public static final ChatReceivedViaTcpSchema a;
        public static final ChatReceivedViaTcpSchema b;
        public static final ChatReceivedViaTcpSchema c;
        private static final ChatReceivedViaTcpSchema h[];
        private int d;
        private String e;
        private DataType f;
        private String g;

        static String a(ChatReceivedViaTcpSchema chatreceivedviatcpschema)
        {
            return chatreceivedviatcpschema.e;
        }

        static DataType b(ChatReceivedViaTcpSchema chatreceivedviatcpschema)
        {
            return chatreceivedviatcpschema.f;
        }

        public static ChatReceivedViaTcpSchema valueOf(String s)
        {
            return (ChatReceivedViaTcpSchema)Enum.valueOf(com/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema, s);
        }

        public static ChatReceivedViaTcpSchema[] values()
        {
            return (ChatReceivedViaTcpSchema[])h.clone();
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
            a = new ChatReceivedViaTcpSchema("ID", 0, 0, "_id", DataType.a, "PRIMARY_KEY");
            b = new ChatReceivedViaTcpSchema("TIMESTAMP", 1, 1, "timestamp", DataType.b);
            c = new ChatReceivedViaTcpSchema("SENDER_USERNAME", 2, 2, "sender_username", DataType.a);
            ChatReceivedViaTcpSchema achatreceivedviatcpschema[] = new ChatReceivedViaTcpSchema[3];
            achatreceivedviatcpschema[0] = a;
            achatreceivedviatcpschema[1] = b;
            achatreceivedviatcpschema[2] = c;
            h = achatreceivedviatcpschema;
        }

        private ChatReceivedViaTcpSchema(String s, int i, int j, String s1, DataType datatype)
        {
            super(s, i);
            d = j;
            e = s1;
            f = datatype;
        }

        private ChatReceivedViaTcpSchema(String s, int i, int j, String s1, DataType datatype, String s2)
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
    private static ChatsReceivedInLastHourTable e;

    private ChatsReceivedInLastHourTable()
    {
    }

    public static ChatsReceivedInLastHourTable b()
    {
        com/snapchat/android/database/table/ChatsReceivedInLastHourTable;
        JVM INSTR monitorenter ;
        ChatsReceivedInLastHourTable chatsreceivedinlasthourtable;
        if (e == null)
        {
            e = new ChatsReceivedInLastHourTable();
        }
        chatsreceivedinlasthourtable = e;
        com/snapchat/android/database/table/ChatsReceivedInLastHourTable;
        JVM INSTR monitorexit ;
        return chatsreceivedinlasthourtable;
        Exception exception;
        exception;
        throw exception;
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
        return "ChatsReceivedInLastHour";
    }

    public void a(Context context)
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        long l = System.currentTimeMillis() - 0x36ee80L;
        if (sqlitedatabase != null)
        {
            String s = (new StringBuilder()).append(ChatReceivedViaTcpSchema.b.c()).append(" <? ").toString();
            String as[] = new String[1];
            as[0] = Long.toString(l);
            sqlitedatabase.delete("ChatsReceivedInLastHour", s, as);
        }
    }

    public void a(Context context, ChatFeedItem chatfeeditem)
    {
        String s = PreferenceManager.getDefaultSharedPreferences(context).getString(SharedPreferenceKey.d.a(), "");
        String s1;
        for (s1 = chatfeeditem.l(); TextUtils.equals(s, s1) || chatfeeditem.ae() <= System.currentTimeMillis() - 0x36ee80L;)
        {
            return;
        }

        a(context, chatfeeditem.d(), chatfeeditem.ae(), s1);
    }

    public void a(Context context, ChatMessage chatmessage)
    {
        a(context, chatmessage.getChatMessageId(), chatmessage.getTimestamp(), ChatUtils.b(chatmessage.getHeader().getConvId()));
    }

    public void a(Context context, String s, long l, String s1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(ChatReceivedViaTcpSchema.a.c(), s);
        contentvalues.put(ChatReceivedViaTcpSchema.b.c(), Long.valueOf(l));
        contentvalues.put(ChatReceivedViaTcpSchema.c.c(), s1);
        Timber.c("ChatsReceivedInLastHourTable", (new StringBuilder()).append("insert ").append(contentvalues).toString(), new Object[0]);
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        if (sqlitedatabase != null)
        {
            sqlitedatabase.insertWithOnConflict("ChatsReceivedInLastHour", null, contentvalues, 4);
        }
    }

    public void a(User user)
    {
    }

    public boolean a(Context context, String s)
    {
        return DatabaseUtils.longForQuery(DatabaseHelper.a(context).getReadableDatabase(), (new StringBuilder()).append("SELECT COUNT() from ChatsReceivedInLastHour WHERE ").append(ChatReceivedViaTcpSchema.a.c()).append("=?").toString(), new String[] {
            s
        }) > 0L;
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return null;
    }

    public void b(Context context, String s)
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        if (sqlitedatabase != null)
        {
            sqlitedatabase.delete("ChatsReceivedInLastHour", (new StringBuilder()).append(ChatReceivedViaTcpSchema.a.c()).append("=?").toString(), new String[] {
                s
            });
        }
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        ChatReceivedViaTcpSchema achatreceivedviatcpschema[] = ChatReceivedViaTcpSchema.values();
        int i = achatreceivedviatcpschema.length;
        for (int j = 0; j < i; j++)
        {
            ChatReceivedViaTcpSchema chatreceivedviatcpschema = achatreceivedviatcpschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(ChatReceivedViaTcpSchema.a(chatreceivedviatcpschema)).append(" ").append(ChatReceivedViaTcpSchema.b(chatreceivedviatcpschema).toString()).toString());
            String s = chatreceivedviatcpschema.d();
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
        return ChatReceivedViaTcpSchema.values();
    }

    static 
    {
        int i = 0;
        ChatReceivedViaTcpSchema achatreceivedviatcpschema[] = ChatReceivedViaTcpSchema.values();
        int j = achatreceivedviatcpschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = achatreceivedviatcpschema[k].c();
        }

        b = new HashMap();
        ChatReceivedViaTcpSchema achatreceivedviatcpschema1[] = ChatReceivedViaTcpSchema.values();
        for (int l = achatreceivedviatcpschema1.length; i < l; i++)
        {
            ChatReceivedViaTcpSchema chatreceivedviatcpschema = achatreceivedviatcpschema1[i];
            b.put(chatreceivedviatcpschema.c(), chatreceivedviatcpschema.c());
        }

    }
}
