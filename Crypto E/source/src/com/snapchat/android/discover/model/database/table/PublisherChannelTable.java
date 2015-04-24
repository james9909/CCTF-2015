// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.ContentValuesBuilder;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.User;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.data.gson.discover.ChannelListResponse;
import com.snapchat.data.gson.discover.ChannelResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            EditionChunkTable, EditionTable

public class PublisherChannelTable extends DbTable
{
    public static final class PublisherChannelSchema extends Enum
        implements Schema
    {

        public static final PublisherChannelSchema a;
        public static final PublisherChannelSchema b;
        public static final PublisherChannelSchema c;
        public static final PublisherChannelSchema d;
        public static final PublisherChannelSchema e;
        public static final PublisherChannelSchema f;
        public static final PublisherChannelSchema g;
        public static final PublisherChannelSchema h;
        public static final PublisherChannelSchema i;
        private static final PublisherChannelSchema m[];
        private String j;
        private DataType k;
        private String l;

        static String a(PublisherChannelSchema publisherchannelschema)
        {
            return publisherchannelschema.j;
        }

        static DataType b(PublisherChannelSchema publisherchannelschema)
        {
            return publisherchannelschema.k;
        }

        public static PublisherChannelSchema valueOf(String s)
        {
            return (PublisherChannelSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema, s);
        }

        public static PublisherChannelSchema[] values()
        {
            return (PublisherChannelSchema[])m.clone();
        }

        public DataType a()
        {
            return k;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return j;
        }

        public String d()
        {
            return l;
        }

        static 
        {
            a = new PublisherChannelSchema("NAME", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new PublisherChannelSchema("PRIMARY_COLOR", 1, "primary_color", DataType.a);
            c = new PublisherChannelSchema("SECONDARY_COLOR", 2, "secondary_color", DataType.a);
            d = new PublisherChannelSchema("FILLED_ICON", 3, "filled_icon", DataType.a);
            e = new PublisherChannelSchema("INVERTED_ICON", 4, "inverted_icon", DataType.a);
            f = new PublisherChannelSchema("LOADING_ICON", 5, "loading_icon", DataType.a);
            g = new PublisherChannelSchema("INTRO_MOVIE", 6, "intro_movie", DataType.a);
            h = new PublisherChannelSchema("POSITION", 7, "position", DataType.b);
            i = new PublisherChannelSchema("ENABLED", 8, "enabled", DataType.d);
            PublisherChannelSchema apublisherchannelschema[] = new PublisherChannelSchema[9];
            apublisherchannelschema[0] = a;
            apublisherchannelschema[1] = b;
            apublisherchannelschema[2] = c;
            apublisherchannelschema[3] = d;
            apublisherchannelschema[4] = e;
            apublisherchannelschema[5] = f;
            apublisherchannelschema[6] = g;
            apublisherchannelschema[7] = h;
            apublisherchannelschema[8] = i;
            m = apublisherchannelschema;
        }

        private PublisherChannelSchema(String s, int i1, String s1, DataType datatype)
        {
            super(s, i1);
            j = s1;
            k = datatype;
        }

        private PublisherChannelSchema(String s, int i1, String s1, DataType datatype, String s2)
        {
            this(s, i1, s1, datatype);
            l = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static PublisherChannelTable e;

    protected PublisherChannelTable()
    {
    }

    public static PublisherChannelTable b()
    {
        com/snapchat/android/discover/model/database/table/PublisherChannelTable;
        JVM INSTR monitorenter ;
        PublisherChannelTable publisherchanneltable;
        if (e == null)
        {
            e = new PublisherChannelTable();
        }
        publisherchanneltable = e;
        com/snapchat/android/discover/model/database/table/PublisherChannelTable;
        JVM INSTR monitorexit ;
        return publisherchanneltable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(ChannelResponse channelresponse)
    {
        if (channelresponse == null)
        {
            return null;
        }
        ContentValuesBuilder contentvaluesbuilder = (new ContentValuesBuilder()).a(PublisherChannelSchema.a, channelresponse.a()).a(PublisherChannelSchema.b, channelresponse.f()).a(PublisherChannelSchema.c, channelresponse.g()).a(PublisherChannelSchema.d, channelresponse.b()).a(PublisherChannelSchema.e, channelresponse.c()).a(PublisherChannelSchema.f, channelresponse.d()).a(PublisherChannelSchema.g, channelresponse.e());
        PublisherChannelSchema publisherchannelschema = PublisherChannelSchema.i;
        boolean flag;
        if (!TextUtils.isEmpty(channelresponse.h()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return contentvaluesbuilder.a(publisherchannelschema, flag).a();
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((ChannelResponse)obj);
    }

    public String a()
    {
        return "PublisherChannel";
    }

    public void a(Context context)
    {
        ContentResolver contentresolver = context.getContentResolver();
        contentresolver.notifyChange(SnapchatProvider.b, null);
        contentresolver.notifyChange(SnapchatProvider.c, null);
    }

    public void a(Context context, ChannelListResponse channellistresponse)
    {
        List list;
        SQLiteDatabase sqlitedatabase;
        if (channellistresponse == null)
        {
            if (ReleaseManager.e())
            {
                throw new NullPointerException("Attempt to initialize with null channel list response.");
            } else
            {
                a(context);
                return;
            }
        }
        list = channellistresponse.a();
        if (list == null)
        {
            if (ReleaseManager.e())
            {
                throw new NullPointerException("Attempt to initialize with null channel response list.");
            } else
            {
                a(context);
                return;
            }
        }
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("PublisherChannelTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        Timber.c("PublisherChannelTable", "Delete the tables for channels", new Object[0]);
        sqlitedatabase.delete("PublisherChannel", null, null);
        EditionChunkTable.b().b(sqlitedatabase);
        EditionTable.b().b(sqlitedatabase);
        int i = 0;
_L2:
        if (i >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        a(sqlitedatabase, (ChannelResponse)list.get(i), i);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("PublisherChannelTable", "safeUpdate - endTransaction", new Object[0]);
        a(context);
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("PublisherChannelTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
    }

    protected void a(SQLiteDatabase sqlitedatabase, ChannelResponse channelresponse, int i)
    {
        ContentValues contentvalues = a(channelresponse);
        if (contentvalues != null)
        {
            contentvalues.put(PublisherChannelSchema.h.c(), Integer.valueOf(i));
            if (sqlitedatabase.insertWithOnConflict("PublisherChannel", null, contentvalues, 5) == -1L)
            {
                throw new SQLiteException("Insertion in DB failed for PublisherChannel");
            }
            if (channelresponse != null)
            {
                EditionTable.b().a(sqlitedatabase, channelresponse.i(), channelresponse.a(), channelresponse.h());
                return;
            }
        }
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
        PublisherChannelSchema apublisherchannelschema[] = PublisherChannelSchema.values();
        int i = apublisherchannelschema.length;
        for (int j = 0; j < i; j++)
        {
            PublisherChannelSchema publisherchannelschema = apublisherchannelschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(PublisherChannelSchema.a(publisherchannelschema)).append(" ").append(PublisherChannelSchema.b(publisherchannelschema).toString()).toString());
            String s = publisherchannelschema.d();
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
    }

    public Schema[] d()
    {
        return PublisherChannelSchema.values();
    }

    public boolean m()
    {
        return false;
    }

    static 
    {
        PublisherChannelSchema apublisherchannelschema[] = PublisherChannelSchema.values();
        int i = apublisherchannelschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            PublisherChannelSchema publisherchannelschema = apublisherchannelschema[j];
            a[j] = apublisherchannelschema[j].c();
            b.put(publisherchannelschema.c(), publisherchannelschema.c());
        }

    }
}
