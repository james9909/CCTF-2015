// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.table;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.ContentValuesBuilder;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.User;
import com.snapchat.data.gson.rich_story.RichStoryChannelResponse;
import com.snapchat.data.gson.rich_story.RichStoryItemPropertiesResponse;
import com.snapchat.data.gson.rich_story.RichStoryItemResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.apache.http.util.TextUtils;

public class DSnapItemTable extends DbTable
{
    public static final class DSnapItemSchema extends Enum
        implements Schema
    {

        public static final DSnapItemSchema a;
        public static final DSnapItemSchema b;
        public static final DSnapItemSchema c;
        public static final DSnapItemSchema d;
        public static final DSnapItemSchema e;
        public static final DSnapItemSchema f;
        public static final DSnapItemSchema g;
        public static final DSnapItemSchema h;
        public static final DSnapItemSchema i;
        public static final DSnapItemSchema j;
        private static final DSnapItemSchema n[];
        private String k;
        private DataType l;
        private String m;

        static String a(DSnapItemSchema dsnapitemschema)
        {
            return dsnapitemschema.k;
        }

        static DataType b(DSnapItemSchema dsnapitemschema)
        {
            return dsnapitemschema.l;
        }

        public static DSnapItemSchema valueOf(String s)
        {
            return (DSnapItemSchema)Enum.valueOf(com/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema, s);
        }

        public static DSnapItemSchema[] values()
        {
            return (DSnapItemSchema[])n.clone();
        }

        public DataType a()
        {
            return l;
        }

        public int b()
        {
            return ordinal();
        }

        public String c()
        {
            return k;
        }

        public String d()
        {
            return m;
        }

        static 
        {
            a = new DSnapItemSchema("ID", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new DSnapItemSchema("FORM", 1, "form", DataType.a);
            c = new DSnapItemSchema("MEDIA_TYPE", 2, "media_type", DataType.a);
            d = new DSnapItemSchema("URI", 3, "uri", DataType.a);
            e = new DSnapItemSchema("VIDEO_ID", 4, "video_id", DataType.a);
            f = new DSnapItemSchema("OVERLAY_URI", 5, "overlay_uri", DataType.a);
            g = new DSnapItemSchema("SPONSORED_OVERLAY_URI", 6, "sponsored_overlay_uri", DataType.a);
            h = new DSnapItemSchema("DOCKING", 7, "docking", DataType.a);
            i = new DSnapItemSchema("MODE", 8, "mode", DataType.a);
            j = new DSnapItemSchema("HASH", 9, "hash", DataType.a);
            DSnapItemSchema adsnapitemschema[] = new DSnapItemSchema[10];
            adsnapitemschema[0] = a;
            adsnapitemschema[1] = b;
            adsnapitemschema[2] = c;
            adsnapitemschema[3] = d;
            adsnapitemschema[4] = e;
            adsnapitemschema[5] = f;
            adsnapitemschema[6] = g;
            adsnapitemschema[7] = h;
            adsnapitemschema[8] = i;
            adsnapitemschema[9] = j;
            n = adsnapitemschema;
        }

        private DSnapItemSchema(String s, int i1, String s1, DataType datatype)
        {
            super(s, i1);
            k = s1;
            l = datatype;
        }

        private DSnapItemSchema(String s, int i1, String s1, DataType datatype, String s2)
        {
            this(s, i1, s1, datatype);
            m = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static DSnapItemTable e;

    protected DSnapItemTable()
    {
    }

    public static DSnapItemTable b()
    {
        com/snapchat/android/discover/model/database/table/DSnapItemTable;
        JVM INSTR monitorenter ;
        DSnapItemTable dsnapitemtable;
        if (e == null)
        {
            e = new DSnapItemTable();
        }
        dsnapitemtable = e;
        com/snapchat/android/discover/model/database/table/DSnapItemTable;
        JVM INSTR monitorexit ;
        return dsnapitemtable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(RichStoryChannelResponse richstorychannelresponse)
    {
        if (richstorychannelresponse != null && richstorychannelresponse.c().size() != 0 && richstorychannelresponse.b() != null) goto _L2; else goto _L1
_L1:
        RichStoryItemResponse richstoryitemresponse;
        return null;
_L2:
        RichStoryItemPropertiesResponse richstoryitempropertiesresponse;
        if ((richstoryitemresponse = (RichStoryItemResponse)richstorychannelresponse.c().get(0)) == null || (richstoryitempropertiesresponse = richstoryitemresponse.b()) == null) goto _L1; else goto _L3
_L3:
        String s1;
        String s = richstoryitempropertiesresponse.c();
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.discover.model.DSnapPanel.MediaType.values().length];
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        com.snapchat.android.discover.model.DSnapPanel.MediaType mediatype;
        int i;
        if (s != null)
        {
            mediatype = com.snapchat.android.discover.model.DSnapPanel.MediaType.a(s);
        } else
        {
            mediatype = com.snapchat.android.discover.model.DSnapPanel.MediaType.a(richstoryitemresponse.a());
        }
        i = _cls1.a[mediatype.ordinal()];
        s1 = null;
        i;
        JVM INSTR tableswitch 1 3: default 112
    //                   1 204
    //                   2 213
    //                   3 222;
           goto _L4 _L5 _L6 _L7
_L4:
        return (new ContentValuesBuilder()).a(DSnapItemSchema.c, mediatype.name()).a(DSnapItemSchema.f, richstoryitempropertiesresponse.d()).a(DSnapItemSchema.g, richstoryitempropertiesresponse.h()).a(DSnapItemSchema.d, s1).a(DSnapItemSchema.e, richstoryitempropertiesresponse.e()).a(DSnapItemSchema.i, richstoryitempropertiesresponse.f()).a(DSnapItemSchema.h, richstoryitempropertiesresponse.g()).a();
_L5:
        s1 = richstoryitempropertiesresponse.b();
        continue; /* Loop/switch isn't completed */
_L6:
        s1 = richstoryitempropertiesresponse.b();
        continue; /* Loop/switch isn't completed */
_L7:
        s1 = richstoryitempropertiesresponse.a();
        if (true) goto _L4; else goto _L8
_L8:
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((RichStoryChannelResponse)obj);
    }

    public String a()
    {
        return "DSnapItem";
    }

    protected void a(SQLiteDatabase sqlitedatabase, String s, RichStoryChannelResponse richstorychannelresponse)
    {
        ContentValues contentvalues = a(richstorychannelresponse);
        if (contentvalues != null && richstorychannelresponse != null)
        {
            com.snapchat.android.discover.model.DSnapPage.Form form = com.snapchat.android.discover.model.DSnapPage.Form.a(richstorychannelresponse.a());
            contentvalues.put(DSnapItemSchema.j.c(), s);
            contentvalues.put(DSnapItemSchema.b.c(), form.name());
            contentvalues.put(DSnapItemSchema.a.c(), (new StringBuilder()).append(s).append("-").append(form.name()).toString());
            if (sqlitedatabase.insertWithOnConflict("DSnapItem", null, contentvalues, 5) == -1L)
            {
                throw new SQLiteException("Insertion in DB failed for DSnapItem");
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
        DSnapItemSchema adsnapitemschema[] = DSnapItemSchema.values();
        int i = adsnapitemschema.length;
        for (int j = 0; j < i; j++)
        {
            DSnapItemSchema dsnapitemschema = adsnapitemschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(DSnapItemSchema.a(dsnapitemschema)).append(" ").append(DSnapItemSchema.b(dsnapitemschema).toString()).toString());
            String s = dsnapitemschema.d();
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
        return DSnapItemSchema.values();
    }

    public boolean m()
    {
        return false;
    }

    static 
    {
        DSnapItemSchema adsnapitemschema[] = DSnapItemSchema.values();
        int i = adsnapitemschema.length;
        a = new String[i];
        b = new HashMap(i);
        for (int j = 0; j < i; j++)
        {
            DSnapItemSchema dsnapitemschema = adsnapitemschema[j];
            a[j] = adsnapitemschema[j].c();
            b.put(dsnapitemschema.c(), dsnapitemschema.c());
        }

    }
}
