// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import java.util.Collection;
import java.util.List;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public class FriendTable extends DbTable
{
    public static final class FriendSchema extends Enum
        implements Schema
    {

        public static final FriendSchema a;
        public static final FriendSchema b;
        public static final FriendSchema c;
        public static final FriendSchema d;
        public static final FriendSchema e;
        public static final FriendSchema f;
        public static final FriendSchema g;
        public static final FriendSchema h;
        public static final FriendSchema i;
        public static final FriendSchema j;
        public static final FriendSchema k;
        public static final FriendSchema l;
        public static final FriendSchema m;
        public static final FriendSchema n;
        public static final FriendSchema o;
        public static final FriendSchema p;
        public static final FriendSchema q;
        public static final FriendSchema r;
        public static final FriendSchema s;
        public static final FriendSchema t;
        public static final FriendSchema u;
        public static final FriendSchema v;
        private static final FriendSchema z[];
        private int w;
        private String x;
        private DataType y;

        static String a(FriendSchema friendschema)
        {
            return friendschema.x;
        }

        static DataType b(FriendSchema friendschema)
        {
            return friendschema.y;
        }

        public static FriendSchema valueOf(String s1)
        {
            return (FriendSchema)Enum.valueOf(com/snapchat/android/database/table/FriendTable$FriendSchema, s1);
        }

        public static FriendSchema[] values()
        {
            return (FriendSchema[])z.clone();
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
            return null;
        }

        static 
        {
            a = new FriendSchema("USERNAME", 0, 1, "Username", DataType.a);
            b = new FriendSchema("DISPLAY_NAME", 1, 2, "DisplayName", DataType.a);
            c = new FriendSchema("PHONE_NUMBER", 2, 3, "PhoneNumber", DataType.a);
            d = new FriendSchema("BEST_FRIEND_INDEX", 3, 4, "BestFriendIndex", DataType.b);
            e = new FriendSchema("IS_BLOCKED", 4, 5, "IsBlocked", DataType.d);
            f = new FriendSchema("IS_PENDING", 5, 6, "IsPending", DataType.d);
            g = new FriendSchema("IS_DUPLICATE_DISPLAY_NAME", 6, 7, "IsDuplicateDisplayName", DataType.d);
            h = new FriendSchema("IS_ADDED_AS_FRIEND", 7, 8, "isAddedAsFriend", DataType.d);
            i = new FriendSchema("ADDED_ME_TIMESTAMP", 8, 9, "AddedMeTimestamp", DataType.b);
            j = new FriendSchema("ADDED_THEM_TIMESTAMP", 9, 10, "AddedThemTimestamp", DataType.b);
            k = new FriendSchema("IS_SHARED_STORY", 10, 11, "IsSharedStory", DataType.d);
            l = new FriendSchema("SHARED_STORY_ID", 11, 12, "SharedStoryId", DataType.a);
            m = new FriendSchema("SHOULD_FETCH_CUSTOM_DESCRIPTION", 12, 13, "ShouldFetchCustomDescription", DataType.d);
            n = new FriendSchema("CUSTOM_TITLE", 13, 14, "CustomTitle", DataType.a);
            o = new FriendSchema("CUSTOM_DESCRIPTION", 14, 15, "CustomDescription", DataType.a);
            p = new FriendSchema("IS_LOCAL_STORY", 15, 16, "IsLocalStory", DataType.d);
            q = new FriendSchema("CASH_ELIGIBILITY", 16, 17, "CashEligibility", DataType.b);
            r = new FriendSchema("IS_IGNORED", 17, 18, "IsIgnored", DataType.d);
            s = new FriendSchema("IS_HIDDEN", 18, 19, "IsHidden", DataType.d);
            t = new FriendSchema("DIRECTION", 19, 20, "Direction", DataType.a);
            u = new FriendSchema("ADD_SOURCE", 20, 21, "AddSource", DataType.a);
            v = new FriendSchema("ADD_SOURCE_TYPE", 21, 22, "AddSourceType", DataType.a);
            FriendSchema afriendschema[] = new FriendSchema[22];
            afriendschema[0] = a;
            afriendschema[1] = b;
            afriendschema[2] = c;
            afriendschema[3] = d;
            afriendschema[4] = e;
            afriendschema[5] = f;
            afriendschema[6] = g;
            afriendschema[7] = h;
            afriendschema[8] = i;
            afriendschema[9] = j;
            afriendschema[10] = k;
            afriendschema[11] = l;
            afriendschema[12] = m;
            afriendschema[13] = n;
            afriendschema[14] = o;
            afriendschema[15] = p;
            afriendschema[16] = q;
            afriendschema[17] = r;
            afriendschema[18] = s;
            afriendschema[19] = t;
            afriendschema[20] = u;
            afriendschema[21] = v;
            z = afriendschema;
        }

        private FriendSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            w = j1;
            x = s2;
            y = datatype;
        }
    }


    private static FriendTable a;

    protected FriendTable()
    {
    }

    public static FriendTable f()
    {
        com/snapchat/android/database/table/FriendTable;
        JVM INSTR monitorenter ;
        FriendTable friendtable;
        if (a == null)
        {
            a = new FriendTable();
        }
        friendtable = a;
        com/snapchat/android/database/table/FriendTable;
        JVM INSTR monitorexit ;
        return friendtable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(Friend friend)
    {
        if (friend == null)
        {
            return null;
        } else
        {
            ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
            contentvaluesbuilder.a(FriendSchema.a, friend.a());
            contentvaluesbuilder.a(FriendSchema.b, friend.b());
            contentvaluesbuilder.a(FriendSchema.c, friend.u());
            contentvaluesbuilder.a(FriendSchema.d, friend.r());
            contentvaluesbuilder.a(FriendSchema.e, a(friend.x()));
            contentvaluesbuilder.a(FriendSchema.f, a(friend.y()));
            contentvaluesbuilder.a(FriendSchema.h, a(friend.e()));
            contentvaluesbuilder.a(FriendSchema.i, friend.i());
            contentvaluesbuilder.a(FriendSchema.j, friend.j());
            contentvaluesbuilder.a(FriendSchema.k, a(friend.H()));
            contentvaluesbuilder.a(FriendSchema.l, friend.n());
            contentvaluesbuilder.a(FriendSchema.m, a(friend.k()));
            contentvaluesbuilder.a(FriendSchema.n, friend.l());
            contentvaluesbuilder.a(FriendSchema.o, friend.m());
            contentvaluesbuilder.a(FriendSchema.p, a(friend.J()));
            contentvaluesbuilder.a(FriendSchema.q, friend.M().ordinal());
            contentvaluesbuilder.a(FriendSchema.r, a(friend.K()));
            contentvaluesbuilder.a(FriendSchema.s, a(friend.L()));
            contentvaluesbuilder.a(FriendSchema.t, friend.P().name());
            contentvaluesbuilder.a(FriendSchema.u, friend.R());
            contentvaluesbuilder.a(FriendSchema.v, friend.S().name());
            return contentvaluesbuilder.a();
        }
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((Friend)obj);
    }

    protected Friend a(Cursor cursor)
    {
        Friend friend = new Friend("", null);
        friend.e(cursor.getString(FriendSchema.a.b()));
        friend.d(cursor.getString(FriendSchema.b.b()));
        friend.f(cursor.getString(FriendSchema.c.b()));
        friend.a(cursor.getInt(FriendSchema.d.b()));
        friend.d(a(cursor.getInt(FriendSchema.e.b())));
        friend.e(a(cursor.getInt(FriendSchema.f.b())));
        friend.b(a(cursor.getInt(FriendSchema.h.b())));
        friend.a(cursor.getLong(FriendSchema.i.b()));
        friend.b(cursor.getLong(FriendSchema.j.b()));
        friend.h(a(cursor.getInt(FriendSchema.k.b())));
        friend.c(cursor.getString(FriendSchema.l.b()));
        friend.a(a(cursor.getInt(FriendSchema.m.b())));
        friend.a(cursor.getString(FriendSchema.n.b()));
        friend.b(cursor.getString(FriendSchema.o.b()));
        friend.i(a(cursor.getInt(FriendSchema.p.b())));
        friend.a(com.snapchat.android.api2.cash.ScCashResponsePayload.Status.values()[cursor.getInt(FriendSchema.q.b())]);
        friend.j(a(cursor.getInt(FriendSchema.r.b())));
        friend.k(a(cursor.getInt(FriendSchema.s.b())));
        friend.a(com.snapchat.android.model.Friend.Direction.a(cursor.getString(FriendSchema.t.b())));
        friend.g(cursor.getString(FriendSchema.u.b()));
        friend.a(com.snapchat.android.model.Friend.AddSourceType.a(cursor.getString(FriendSchema.v.b())));
        return friend;
    }

    public String a()
    {
        return "Friends";
    }

    public void a(User user)
    {
        user.d(g());
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return user.s();
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        FriendSchema afriendschema[] = FriendSchema.values();
        int i = afriendschema.length;
        for (int j = 0; j < i; j++)
        {
            FriendSchema friendschema = afriendschema[j];
            s = (new StringBuilder()).append(s).append(",").append(FriendSchema.a(friendschema)).append(" ").append(FriendSchema.b(friendschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return FriendSchema.values();
    }

    public List g()
    {
        return a(null, h());
    }

    protected String h()
    {
        return (new StringBuilder()).append(FriendSchema.e.c()).append(", (CASE WHEN length(").append(FriendSchema.b.c()).append(") = 0 ").append("THEN ").append(FriendSchema.a.c()).append(" ELSE ").append(FriendSchema.b.c()).append(" END) ").append("COLLATE NOCASE").toString();
    }
}
