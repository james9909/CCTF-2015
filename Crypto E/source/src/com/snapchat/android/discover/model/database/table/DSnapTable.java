// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.ContentValuesBuilder;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.User;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.data.gson.rich_story.RichStoryChannelResponse;
import com.snapchat.data.gson.rich_story.RichStoryMetadataResponse;
import com.snapchat.data.gson.rich_story.RichStorySectionResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.TextUtils;

// Referenced classes of package com.snapchat.android.discover.model.database.table:
//            DSnapItemTable

public class DSnapTable extends DbTable
{
    public static final class DSnapSchema extends Enum
        implements Schema
    {

        public static final DSnapSchema a;
        public static final DSnapSchema b;
        private static final DSnapSchema f[];
        private String c;
        private DataType d;
        private String e;

        static String a(DSnapSchema dsnapschema)
        {
            return dsnapschema.c;
        }

        static DataType b(DSnapSchema dsnapschema)
        {
            return dsnapschema.d;
        }

        public static DSnapSchema valueOf(String s)
        {
            return (DSnapSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema, s);
        }

        public static DSnapSchema[] values()
        {
            return (DSnapSchema[])f.clone();
        }

        public DataType a()
        {
            return d;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return c;
        }

        public String d()
        {
            return e;
        }

        static 
        {
            a = new DSnapSchema("HASH", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new DSnapSchema("TYPE", 1, "type", DataType.a);
            DSnapSchema adsnapschema[] = new DSnapSchema[2];
            adsnapschema[0] = a;
            adsnapschema[1] = b;
            f = adsnapschema;
        }

        private DSnapSchema(String s, int i, String s1, DataType datatype)
        {
            super(s, i);
            c = s1;
            d = datatype;
        }

        private DSnapSchema(String s, int i, String s1, DataType datatype, String s2)
        {
            this(s, i, s1, datatype);
            e = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static DSnapTable e;

    protected DSnapTable()
    {
    }

    private void a(Context context)
    {
        ContentResolver contentresolver = context.getContentResolver();
        contentresolver.notifyChange(SnapchatProvider.c, null);
        contentresolver.notifyChange(SnapchatProvider.b, null);
    }

    public static DSnapTable b()
    {
        com/snapchat/android/discover/model/database/table/DSnapTable;
        JVM INSTR monitorenter ;
        DSnapTable dsnaptable;
        if (e == null)
        {
            e = new DSnapTable();
        }
        dsnaptable = e;
        com/snapchat/android/discover/model/database/table/DSnapTable;
        JVM INSTR monitorexit ;
        return dsnaptable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(RichStorySectionResponse richstorysectionresponse)
    {
        if (richstorysectionresponse == null)
        {
            return null;
        } else
        {
            return (new ContentValuesBuilder()).a(DSnapSchema.b, richstorysectionresponse.a()).a();
        }
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((RichStorySectionResponse)obj);
    }

    public String a()
    {
        return "DSnap";
    }

    public void a(Context context, String s, RichStoryMetadataResponse richstorymetadataresponse)
    {
        List list;
        SQLiteDatabase sqlitedatabase;
        int i;
        if (richstorymetadataresponse == null)
        {
            if (ReleaseManager.e())
            {
                throw new NullPointerException("Attempt to initialize with null metadata response.");
            }
            break MISSING_BLOCK_LABEL_149;
        }
        list = richstorymetadataresponse.a();
        if (list == null)
        {
            if (ReleaseManager.e())
            {
                throw new NullPointerException("Attempt to initialize with null chunk metadata section list.");
            }
            break MISSING_BLOCK_LABEL_149;
        }
        sqlitedatabase = DatabaseHelper.a(context).getWritableDatabase();
        Timber.c("DSnapTable", "safeUpdate - beginTransaction", new Object[0]);
        sqlitedatabase.beginTransaction();
        i = 0;
_L2:
        if (i >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        a(sqlitedatabase, s, (RichStorySectionResponse)list.get(i));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        a(context);
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        Timber.c("DSnapTable", "safeUpdate - endTransaction", new Object[0]);
        context.getContentResolver().notifyChange(SnapchatProvider.c, null);
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        Timber.c("DSnapTable", "safeUpdate - endTransaction", new Object[0]);
        throw exception;
    }

    protected void a(SQLiteDatabase sqlitedatabase, String s, RichStorySectionResponse richstorysectionresponse)
    {
        if (richstorysectionresponse != null && richstorysectionresponse.b() != null) goto _L2; else goto _L1
_L1:
        ContentValues contentvalues;
        return;
_L2:
        if ((contentvalues = a(richstorysectionresponse)) != null)
        {
            contentvalues.put(DSnapSchema.a.c(), s);
            if (sqlitedatabase.insertWithOnConflict("DSnap", null, contentvalues, 5) == -1L)
            {
                throw new SQLiteException("Insertion in DB failed for DSnap");
            }
            Iterator iterator = richstorysectionresponse.b().iterator();
            while (iterator.hasNext()) 
            {
                RichStoryChannelResponse richstorychannelresponse = (RichStoryChannelResponse)iterator.next();
                DSnapItemTable.b().a(sqlitedatabase, s, richstorychannelresponse);
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
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
        DSnapSchema adsnapschema[] = DSnapSchema.values();
        int i = adsnapschema.length;
        for (int j = 0; j < i; j++)
        {
            DSnapSchema dsnapschema = adsnapschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(DSnapSchema.a(dsnapschema)).append(" ").append(DSnapSchema.b(dsnapschema).toString()).toString());
            String s = dsnapschema.d();
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
        return DSnapSchema.values();
    }

    public boolean m()
    {
        return false;
    }

    static 
    {
        DSnapSchema adsnapschema[] = DSnapSchema.values();
        int i = adsnapschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            DSnapSchema dsnapschema = adsnapschema[j];
            a[j] = adsnapschema[j].c();
            b.put(dsnapschema.c(), dsnapschema.c());
        }

    }
}
