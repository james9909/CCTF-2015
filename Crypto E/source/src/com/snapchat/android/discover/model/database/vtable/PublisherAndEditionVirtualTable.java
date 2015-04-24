// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import android.database.Cursor;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.SqlHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.vtable.DbVirtualTable;
import java.util.HashMap;

public class PublisherAndEditionVirtualTable extends DbVirtualTable
{
    public static final class ChannelSchema extends Enum
        implements Schema
    {

        public static final ChannelSchema a;
        public static final ChannelSchema b;
        public static final ChannelSchema c;
        public static final ChannelSchema d;
        public static final ChannelSchema e;
        public static final ChannelSchema f;
        public static final ChannelSchema g;
        public static final ChannelSchema h;
        public static final ChannelSchema i;
        public static final ChannelSchema j;
        public static final ChannelSchema k;
        private static final ChannelSchema o[];
        private String l;
        private DataType m;
        private String n;

        public static ChannelSchema valueOf(String s)
        {
            return (ChannelSchema)Enum.valueOf(com/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema, s);
        }

        public static ChannelSchema[] values()
        {
            return (ChannelSchema[])o.clone();
        }

        public DataType a()
        {
            return m;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return l;
        }

        public String d()
        {
            return n;
        }

        static 
        {
            a = new ChannelSchema("PUBLISHER_NAME", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new ChannelSchema("PRIMARY_COLOR", 1, "primary_color", DataType.a);
            c = new ChannelSchema("SECONDARY_COLOR", 2, "secondary_color", DataType.a);
            d = new ChannelSchema("FILLED_ICON", 3, "filled_icon", DataType.a);
            e = new ChannelSchema("INVERTED_ICON", 4, "inverted_icon", DataType.a);
            f = new ChannelSchema("LOADING_ICON", 5, "loading_icon", DataType.a);
            g = new ChannelSchema("INTRO_MOVIE", 6, "intro_movie", DataType.a);
            h = new ChannelSchema("POSITION", 7, "position", DataType.b);
            i = new ChannelSchema("ENABLED", 8, "enabled", DataType.d);
            j = new ChannelSchema("CURRENT_EDITION_ID", 9, "current_edition_id", DataType.a);
            k = new ChannelSchema("NUM_CHUNKS", 10, "num_chunks", DataType.b);
            ChannelSchema achannelschema[] = new ChannelSchema[11];
            achannelschema[0] = a;
            achannelschema[1] = b;
            achannelschema[2] = c;
            achannelschema[3] = d;
            achannelschema[4] = e;
            achannelschema[5] = f;
            achannelschema[6] = g;
            achannelschema[7] = h;
            achannelschema[8] = i;
            achannelschema[9] = j;
            achannelschema[10] = k;
            o = achannelschema;
        }

        private ChannelSchema(String s, int i1, String s1, DataType datatype)
        {
            super(s, i1);
            l = s1;
            m = datatype;
        }

        private ChannelSchema(String s, int i1, String s1, DataType datatype, String s2)
        {
            this(s, i1, s1, datatype);
            n = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static PublisherAndEditionVirtualTable c;
    private static final String d = f();

    public PublisherAndEditionVirtualTable()
    {
    }

    public static PublisherAndEditionVirtualTable e()
    {
        if (c == null)
        {
            c = new PublisherAndEditionVirtualTable();
        }
        return c;
    }

    private static String f()
    {
        return (new StringBuilder()).append(" CREATE VIEW ").append("PublisherAndEdition").append(" AS SELECT * FROM ").append("PublisherChannel").append(" LEFT JOIN ").append(g()).append(" ON ").append(SqlHelper.a("PublisherChannel", com.snapchat.android.discover.model.database.table.PublisherChannelTable.PublisherChannelSchema.a)).append('=').append(SqlHelper.a("OldestEditionQueriesAlias", ChannelSchema.a)).toString();
    }

    private static StringBuilder g()
    {
        return (new StringBuilder()).append("(SELECT ").append(SqlHelper.a("NumDSnapsAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append((new StringBuilder()).append(" AS ").append(ChannelSchema.a.c()).toString()).append(',').append(SqlHelper.a("NumDSnapsAlias", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b)).append((new StringBuilder()).append(" AS ").append(ChannelSchema.j.c()).toString()).append(',').append(SqlHelper.a("NumDSnapsAlias", ChannelSchema.k)).append((new StringBuilder()).append(" AS ").append(ChannelSchema.k.c()).toString()).append(" FROM ").append(h()).append(" INNER JOIN ").append(j()).append(" ON ").append(SqlHelper.a("OldestEditionAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append('=').append(SqlHelper.a("NumDSnapsAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append(" AND ").append(SqlHelper.a("OldestEditionAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c)).append('=').append(SqlHelper.a("NumDSnapsAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c)).append(") AS ").append("OldestEditionQueriesAlias");
    }

    private static StringBuilder h()
    {
        return (new StringBuilder()).append("(SELECT ").append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b.c()).toString()).append(", MIN(").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c.c()).append(") AS ").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c.c()).append(" FROM ").append("Edition").append(" GROUP BY ").append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append(") AS ").append("OldestEditionAlias");
    }

    private static StringBuilder i()
    {
        return (new StringBuilder()).append("(SELECT ").append(SqlHelper.a("EditionChunk", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b.c()).toString()).append(',').append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b.c()).toString()).append(',').append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c.c()).toString()).append(',').append(SqlHelper.a("EditionChunk", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.a)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.a.c()).toString()).append(" FROM ").append("Edition").append(" INNER JOIN ").append("EditionChunk").append(" ON ").append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.a)).append('=').append(SqlHelper.a("EditionChunk", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b)).append(") AS ").append("DSnapsEditionAlias");
    }

    private static StringBuilder j()
    {
        return (new StringBuilder()).append("(SELECT ").append(SqlHelper.a("DSnapsEditionAlias", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b.c()).toString()).append(',').append(SqlHelper.a("DSnapsEditionAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b.c()).toString()).append(',').append(SqlHelper.a("DSnapsEditionAlias", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c)).append((new StringBuilder()).append(" AS ").append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.c.c()).toString()).append(',').append(" COUNT(*) AS ").append(ChannelSchema.k.c()).append(" FROM ").append(i()).append(" GROUP BY ").append(SqlHelper.a("DSnapsEditionAlias", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b)).append(") AS ").append("NumDSnapsAlias");
    }

    public com.snapchat.android.discover.model.ChannelPage.Builder a(Cursor cursor)
    {
        String s = cursor.getString(ChannelSchema.a.b());
        String s1 = cursor.getString(ChannelSchema.b.b());
        String s2 = cursor.getString(ChannelSchema.c.b());
        String s3 = cursor.getString(ChannelSchema.d.b());
        String s4 = cursor.getString(ChannelSchema.e.b());
        String s5 = cursor.getString(ChannelSchema.f.b());
        String s6 = cursor.getString(ChannelSchema.g.b());
        boolean flag;
        int k;
        boolean flag1;
        String s7;
        boolean flag2;
        int l;
        if (cursor.getInt(ChannelSchema.i.b()) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = cursor.getInt(ChannelSchema.h.b());
        flag1 = cursor.isNull(ChannelSchema.j.b());
        s7 = null;
        if (!flag1)
        {
            s7 = cursor.getString(ChannelSchema.j.b());
        }
        flag2 = cursor.isNull(ChannelSchema.k.b());
        l = 0;
        if (!flag2)
        {
            l = cursor.getInt(ChannelSchema.k.b());
        }
        return (new com.snapchat.android.discover.model.ChannelPage.Builder()).a(s).b(s1).c(s2).d(s3).e(s4).f(s5).g(s6).b(k).a(flag).l(s7).a(l);
    }

    public String a()
    {
        return "PublisherAndEdition";
    }

    public String b()
    {
        return d;
    }

    public Schema[] c()
    {
        return ChannelSchema.values();
    }

    static 
    {
        ChannelSchema achannelschema[] = ChannelSchema.values();
        int k = achannelschema.length;
        a = new String[k];
        b = new HashMap(k);
        for (int l = 0; l < k; l++)
        {
            ChannelSchema channelschema = achannelschema[l];
            a[l] = achannelschema[l].c();
            b.put(channelschema.c(), channelschema.c());
        }

    }
}
