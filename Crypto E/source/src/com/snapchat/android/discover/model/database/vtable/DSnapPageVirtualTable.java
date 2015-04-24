// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import android.database.Cursor;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.SqlHelper;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.vtable.DbVirtualTable;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.DiscoverVideoCatalog;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.EnumUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;

public class DSnapPageVirtualTable extends DbVirtualTable
{
    public static final class DSnapPageSchema extends Enum
        implements Schema
    {

        public static final DSnapPageSchema a;
        public static final DSnapPageSchema b;
        public static final DSnapPageSchema c;
        public static final DSnapPageSchema d;
        public static final DSnapPageSchema e;
        public static final DSnapPageSchema f;
        public static final DSnapPageSchema g;
        public static final DSnapPageSchema h;
        public static final DSnapPageSchema i;
        public static final DSnapPageSchema j;
        public static final DSnapPageSchema k;
        public static final DSnapPageSchema l;
        public static final DSnapPageSchema m;
        public static final DSnapPageSchema n;
        public static final DSnapPageSchema o;
        public static final DSnapPageSchema p;
        public static final DSnapPageSchema q;
        public static final DSnapPageSchema r;
        public static final DSnapPageSchema s;
        public static final DSnapPageSchema t;
        public static final DSnapPageSchema u;
        public static final DSnapPageSchema v;
        private static final DSnapPageSchema z[];
        private String w;
        private DataType x;
        private String y;

        public static DSnapPageSchema valueOf(String s1)
        {
            return (DSnapPageSchema)Enum.valueOf(com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema, s1);
        }

        public static DSnapPageSchema[] values()
        {
            return (DSnapPageSchema[])z.clone();
        }

        public DataType a()
        {
            return x;
        }

        public int b()
        {
            return ordinal();
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
            a = new DSnapPageSchema("ID", 0, "_id", DataType.a, "PRIMARY KEY");
            b = new DSnapPageSchema("TYPE", 1, "type", DataType.a);
            c = new DSnapPageSchema("PUBLISHER_NAME", 2, "publisher_name", DataType.a);
            d = new DSnapPageSchema("POSITION", 3, "position", DataType.b);
            e = new DSnapPageSchema("EDITION_ID", 4, "edition_id", DataType.a);
            f = new DSnapPageSchema("URL", 5, "url", DataType.a);
            g = new DSnapPageSchema("HASH", 6, "hash", DataType.a);
            h = new DSnapPageSchema("COLOR", 7, "color", DataType.a);
            i = new DSnapPageSchema("AD_TYPE", 8, "ad_type", DataType.b);
            j = new DSnapPageSchema("AD_POSITION", 9, "ad_position", DataType.b);
            k = new DSnapPageSchema("SHAREABLE", 10, "shareable", DataType.d);
            l = new DSnapPageSchema("TOP_SNAP_URI", 11, "top_snap_uri", DataType.a);
            m = new DSnapPageSchema("TOP_SNAP_OVERLAY_URI", 12, "top_snap_overlay_uri", DataType.a);
            n = new DSnapPageSchema("TOP_SNAP_SPONSORED_OVERLAY_URI", 13, "top_snap_sponsored_overlay_uri", DataType.a);
            o = new DSnapPageSchema("TOP_SNAP_MEDIA_TYPE", 14, "top_snap_media_type", DataType.a);
            p = new DSnapPageSchema("TOP_SNAP_DOCKING", 15, "top_snap_docking", DataType.a);
            q = new DSnapPageSchema("TOP_SNAP_MODE", 16, "top_snap_mode", DataType.a);
            r = new DSnapPageSchema("LONGFORM_OVERLAY_URI", 17, "longform_overlay_uri", DataType.a);
            s = new DSnapPageSchema("LONGFORM_SPONSORED_OVERLAY_URI", 18, "longform_sponsored_overlay_uri", DataType.a);
            t = new DSnapPageSchema("LONGFORM_URI", 19, "longform_uri", DataType.a);
            u = new DSnapPageSchema("LONGFORM_MEDIA_TYPE", 20, "longform_media_type", DataType.a);
            v = new DSnapPageSchema("LONGFORM_VIDEO_ID", 21, "longform_video_id", DataType.a);
            DSnapPageSchema adsnappageschema[] = new DSnapPageSchema[22];
            adsnappageschema[0] = a;
            adsnappageschema[1] = b;
            adsnappageschema[2] = c;
            adsnappageschema[3] = d;
            adsnappageschema[4] = e;
            adsnappageschema[5] = f;
            adsnappageschema[6] = g;
            adsnappageschema[7] = h;
            adsnappageschema[8] = i;
            adsnappageschema[9] = j;
            adsnappageschema[10] = k;
            adsnappageschema[11] = l;
            adsnappageschema[12] = m;
            adsnappageschema[13] = n;
            adsnappageschema[14] = o;
            adsnappageschema[15] = p;
            adsnappageschema[16] = q;
            adsnappageschema[17] = r;
            adsnappageschema[18] = s;
            adsnappageschema[19] = t;
            adsnappageschema[20] = u;
            adsnappageschema[21] = v;
            z = adsnappageschema;
        }

        private DSnapPageSchema(String s1, int i1, String s2, DataType datatype)
        {
            super(s1, i1);
            w = s2;
            x = datatype;
        }

        private DSnapPageSchema(String s1, int i1, String s2, DataType datatype, String s3)
        {
            this(s1, i1, s2, datatype);
            y = s3;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static final com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema f[];
    private static final String g[] = j();
    private static DSnapPageVirtualTable h;
    private static final String i = f();
    private final DiscoverMediaStateTracker c;
    private final DiscoverVideoCatalog d;
    private final ReleaseManager e;

    private DSnapPageVirtualTable()
    {
        this(DiscoverMediaStateTracker.a(), DiscoverVideoCatalog.a(), ReleaseManager.a());
    }

    protected DSnapPageVirtualTable(DiscoverMediaStateTracker discovermediastatetracker, DiscoverVideoCatalog discovervideocatalog, ReleaseManager releasemanager)
    {
        c = discovermediastatetracker;
        d = discovervideocatalog;
        e = releasemanager;
    }

    private static StringBuilder a(com.snapchat.android.discover.model.DSnapPage.Form form)
    {
        String s = EnumUtils.a(form);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("(SELECT ");
        com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema adsnapitemschema[] = f;
        int k = adsnapitemschema.length;
        for (int l = 0; l < k; l++)
        {
            String s1 = adsnapitemschema[l].c();
            stringbuilder.append(s1).append(" AS ").append(s).append('_').append(s1).append(", ");
        }

        stringbuilder.append(com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.j.c()).append(" FROM ").append("DSnapItem").append(" WHERE ").append(com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.b.c()).append('=').append("'").append(form.name()).append("'").append(") AS ").append(s);
        return stringbuilder;
    }

    public static DSnapPageVirtualTable e()
    {
        if (h == null)
        {
            h = new DSnapPageVirtualTable();
        }
        return h;
    }

    private static String f()
    {
        int k = 0;
        StringBuilder stringbuilder = (new StringBuilder()).append(" CREATE VIEW ").append("DSnapPage").append(" AS SELECT ").append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b)).append(',').append(SqlHelper.a("chunk_dsnap_items", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.a)).append(',').append(SqlHelper.a("chunk_dsnap_items", com.snapchat.android.discover.model.database.table.DSnapTable.DSnapSchema.b));
        com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema aeditionchunkschema[] = com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.values();
        int l = aeditionchunkschema.length;
        for (int i1 = 0; i1 < l; i1++)
        {
            com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema editionchunkschema = aeditionchunkschema[i1];
            if (editionchunkschema != com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.a)
            {
                stringbuilder.append(',').append(SqlHelper.a("chunk_dsnap_items", editionchunkschema));
            }
        }

        stringbuilder.append(',').append("Edition").append('.').append(com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.b.c());
        String as[] = g;
        for (int j1 = as.length; k < j1; k++)
        {
            String s = as[k];
            stringbuilder.append(',').append("chunk_dsnap_items").append('.').append(s);
        }

        return stringbuilder.append(" FROM ").append("Edition").append(" LEFT JOIN ").append(g()).append(" ON ").append(SqlHelper.a("Edition", com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema.a)).append(" = ").append(SqlHelper.a("chunk_dsnap_items", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.b)).toString();
    }

    private static StringBuilder g()
    {
        return (new StringBuilder()).append('(').append(" SELECT * FROM ").append("EditionChunk").append(" LEFT JOIN ").append(h()).append(" ON ").append(SqlHelper.a("EditionChunk", com.snapchat.android.discover.model.database.table.EditionChunkTable.EditionChunkSchema.d)).append(" = ").append(SqlHelper.a("dsnap_and_dsnap_items", com.snapchat.android.discover.model.database.table.DSnapTable.DSnapSchema.a)).append(')').append(" AS ").append("chunk_dsnap_items");
    }

    private static StringBuilder h()
    {
        return (new StringBuilder()).append('(').append(" SELECT * FROM ").append("DSnap").append(" LEFT JOIN ").append(i()).append(" ON ").append(SqlHelper.a("DSnap", com.snapchat.android.discover.model.database.table.DSnapTable.DSnapSchema.a)).append(" = ").append(SqlHelper.a("dsnap_items", com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.j)).append(')').append(" AS ").append("dsnap_and_dsnap_items");
    }

    private static StringBuilder i()
    {
        return (new StringBuilder()).append("(SELECT * FROM ").append(a(com.snapchat.android.discover.model.DSnapPage.Form.a)).append(" LEFT JOIN ").append(a(com.snapchat.android.discover.model.DSnapPage.Form.b)).append(" ON ").append(EnumUtils.a(com.snapchat.android.discover.model.DSnapPage.Form.a)).append('.').append(com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.j).append(" = ").append(EnumUtils.a(com.snapchat.android.discover.model.DSnapPage.Form.b)).append('.').append(com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.j.c()).append(')').append(" AS ").append("dsnap_items");
    }

    private static String[] j()
    {
        com.snapchat.android.discover.model.DSnapPage.Form aform[] = com.snapchat.android.discover.model.DSnapPage.Form.values();
        String as[] = new String[aform.length * f.length];
        int k = aform.length;
        int l = 0;
        int k1;
        for (int i1 = 0; l < k; i1 = k1)
        {
            String s = EnumUtils.a(aform[l]);
            com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema adsnapitemschema[] = f;
            int j1 = adsnapitemschema.length;
            k1 = i1;
            for (int l1 = 0; l1 < j1;)
            {
                com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema dsnapitemschema = adsnapitemschema[l1];
                int i2 = k1 + 1;
                as[k1] = (new StringBuilder()).append(s).append("_").append(dsnapitemschema.c()).toString();
                l1++;
                k1 = i2;
            }

            l++;
        }

        return as;
    }

    public com.snapchat.android.discover.model.DSnapPage.Builder a(Cursor cursor)
    {
label0:
        {
            String s = cursor.getString(DSnapPageSchema.a.b());
            String s1 = cursor.getString(DSnapPageSchema.b.b());
            int k = cursor.getInt(DSnapPageSchema.d.b());
            String s2 = cursor.getString(DSnapPageSchema.e.b());
            String s3 = cursor.getString(DSnapPageSchema.c.b());
            String s4 = cursor.getString(DSnapPageSchema.f.b());
            String s5 = cursor.getString(DSnapPageSchema.g.b());
            String s6 = cursor.getString(DSnapPageSchema.h.b());
            int l = cursor.getInt(DSnapPageSchema.i.b());
            int i1 = cursor.getInt(DSnapPageSchema.j.b());
            boolean flag = e.i();
            boolean flag1 = false;
            String s7;
            String s8;
            String s9;
            String s10;
            String s11;
            String s12;
            com.snapchat.android.discover.model.DSnapPanel dsnappanel;
            String s13;
            String s14;
            String s15;
            String s16;
            String s17;
            com.snapchat.android.discover.model.DSnapPanel dsnappanel1;
            com.snapchat.android.discover.model.DSnapPanel.Builder builder1;
            if (flag)
            {
                if (cursor.getInt(DSnapPageSchema.k.b()) != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
            }
            s7 = cursor.getString(DSnapPageSchema.l.b());
            s8 = cursor.getString(DSnapPageSchema.m.b());
            s9 = cursor.getString(DSnapPageSchema.n.b());
            s10 = cursor.getString(DSnapPageSchema.o.b());
            s11 = cursor.getString(DSnapPageSchema.p.b());
            s12 = cursor.getString(DSnapPageSchema.q.b());
            dsnappanel = null;
            if (s7 != null)
            {
                dsnappanel = null;
                if (s10 != null)
                {
                    dsnappanel = (new com.snapchat.android.discover.model.DSnapPanel.Builder()).a(s7).c(s8).e(s10).d(s9).g(s11).f(s12).a();
                }
            }
            s13 = cursor.getString(DSnapPageSchema.t.b());
            s14 = cursor.getString(DSnapPageSchema.r.b());
            s15 = cursor.getString(DSnapPageSchema.s.b());
            s16 = cursor.getString(DSnapPageSchema.u.b());
            s17 = cursor.getString(DSnapPageSchema.v.b());
            dsnappanel1 = null;
            if (s16 == null)
            {
                break label0;
            }
            if (s13 == null)
            {
                dsnappanel1 = null;
                if (s17 == null)
                {
                    break label0;
                }
            }
            builder1 = (new com.snapchat.android.discover.model.DSnapPanel.Builder()).a(s13).c(s14).d(s15).e(s16).b(s17);
            if (s17 != null)
            {
                com.snapchat.android.discover.model.DSnapPanel dsnappanel2 = builder1.a();
                MediaState mediastate = c.a(dsnappanel2);
                if (mediastate == MediaState.f)
                {
                    com.snapchat.data.gson.discover.VideoCatalogResponse videocatalogresponse = d.a(s17);
                    com.snapchat.android.discover.model.DSnapPage.Builder builder;
                    if (videocatalogresponse != null)
                    {
                        builder1.a(videocatalogresponse);
                        mediastate = MediaState.f;
                    } else
                    {
                        mediastate = MediaState.k;
                    }
                }
                builder1.a(mediastate);
            }
            dsnappanel1 = builder1.a();
        }
        builder = (new com.snapchat.android.discover.model.DSnapPage.Builder()).a(s).b(s1).a(Integer.valueOf(k)).c(s2).d(s3).e(s4).f(s5).g(s6).a(i1).a(flag1).b(Integer.valueOf(l));
        if (dsnappanel != null)
        {
            builder.a(com.snapchat.android.discover.model.DSnapPage.Form.a.a(), dsnappanel);
        }
        if (dsnappanel1 != null)
        {
            builder.a(com.snapchat.android.discover.model.DSnapPage.Form.b.a(), dsnappanel1);
        }
        return builder;
    }

    public String a()
    {
        return "DSnapPage";
    }

    public String b()
    {
        return i;
    }

    public Schema[] c()
    {
        return DSnapPageSchema.values();
    }

    static 
    {
        int k = 0;
        com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema adsnapitemschema[] = new com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema[7];
        adsnapitemschema[0] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.f;
        adsnapitemschema[1] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.g;
        adsnapitemschema[2] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.d;
        adsnapitemschema[3] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.c;
        adsnapitemschema[4] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.h;
        adsnapitemschema[5] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.i;
        adsnapitemschema[6] = com.snapchat.android.discover.model.database.table.DSnapItemTable.DSnapItemSchema.e;
        f = adsnapitemschema;
        DSnapPageSchema adsnappageschema[] = DSnapPageSchema.values();
        int l = adsnappageschema.length;
        a = new String[l];
        b = new HashMap(adsnappageschema.length);
        for (; k < l; k++)
        {
            String s = adsnappageschema[k].c();
            a[k] = s;
            b.put(s, s);
        }

    }
}
