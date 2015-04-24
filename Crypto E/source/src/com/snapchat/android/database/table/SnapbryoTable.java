// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.AnnotatedMediabryo;
import java.text.DateFormat;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public abstract class SnapbryoTable extends DbTable
{
    public static final class SnapbryoSchema extends Enum
        implements Schema
    {

        public static final SnapbryoSchema a;
        public static final SnapbryoSchema b;
        public static final SnapbryoSchema c;
        public static final SnapbryoSchema d;
        public static final SnapbryoSchema e;
        public static final SnapbryoSchema f;
        public static final SnapbryoSchema g;
        public static final SnapbryoSchema h;
        public static final SnapbryoSchema i;
        public static final SnapbryoSchema j;
        public static final SnapbryoSchema k;
        public static final SnapbryoSchema l;
        public static final SnapbryoSchema m;
        public static final SnapbryoSchema n;
        public static final SnapbryoSchema o;
        private static final SnapbryoSchema s[];
        private int p;
        private String q;
        private DataType r;

        static String a(SnapbryoSchema snapbryoschema)
        {
            return snapbryoschema.q;
        }

        static DataType b(SnapbryoSchema snapbryoschema)
        {
            return snapbryoschema.r;
        }

        public static SnapbryoSchema valueOf(String s1)
        {
            return (SnapbryoSchema)Enum.valueOf(com/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema, s1);
        }

        public static SnapbryoSchema[] values()
        {
            return (SnapbryoSchema[])s.clone();
        }

        public DataType a()
        {
            return r;
        }

        public int b()
        {
            return p;
        }

        public String c()
        {
            return q;
        }

        public String d()
        {
            return null;
        }

        static 
        {
            a = new SnapbryoSchema("CLIENT_ID", 0, 1, "ClientId", DataType.a);
            b = new SnapbryoSchema("TIME", 1, 2, "Time", DataType.a);
            c = new SnapbryoSchema("VIDEO_URI", 2, 3, "VideoUri", DataType.a);
            d = new SnapbryoSchema("RECIPIENTS", 3, 4, "Recipients", DataType.a);
            e = new SnapbryoSchema("STORY_GROUPS", 4, 5, "StoryGroups", DataType.a);
            f = new SnapbryoSchema("UPLOAD_STATUS", 5, 6, "UploadStatus", DataType.b);
            g = new SnapbryoSchema("SEND_STATUS", 6, 7, "SendStatus", DataType.b);
            h = new SnapbryoSchema("POST_STATUS", 7, 8, "PostStatus", DataType.b);
            i = new SnapbryoSchema("IS_MUTED", 8, 9, "IsMuted", DataType.d);
            j = new SnapbryoSchema("IS_ZIP_UPLOAD", 9, 10, "HasBeenZipped", DataType.d);
            k = new SnapbryoSchema("TIMER_VALUE", 10, 11, "TimerValueOrDuration", DataType.e);
            l = new SnapbryoSchema("CAPTION_TEXT", 11, 12, "CaptionText", DataType.a);
            m = new SnapbryoSchema("TIME_OF_FIRST_ATTEMPT", 12, 13, "TimeOfFirstAttempt", DataType.a);
            n = new SnapbryoSchema("TIME_OF_LAST_ATTEMPT", 13, 14, "TimeOfLastAttempt", DataType.a);
            o = new SnapbryoSchema("RETRIED", 14, 15, "Retried", DataType.d);
            SnapbryoSchema asnapbryoschema[] = new SnapbryoSchema[15];
            asnapbryoschema[0] = a;
            asnapbryoschema[1] = b;
            asnapbryoschema[2] = c;
            asnapbryoschema[3] = d;
            asnapbryoschema[4] = e;
            asnapbryoschema[5] = f;
            asnapbryoschema[6] = g;
            asnapbryoschema[7] = h;
            asnapbryoschema[8] = i;
            asnapbryoschema[9] = j;
            asnapbryoschema[10] = k;
            asnapbryoschema[11] = l;
            asnapbryoschema[12] = m;
            asnapbryoschema[13] = n;
            asnapbryoschema[14] = o;
            s = asnapbryoschema;
        }

        private SnapbryoSchema(String s1, int i1, int j1, String s2, DataType datatype)
        {
            super(s1, i1);
            p = j1;
            q = s2;
            r = datatype;
        }
    }


    public SnapbryoTable()
    {
    }

    protected ContentValues a(AnnotatedMediabryo annotatedmediabryo)
    {
        if (annotatedmediabryo == null)
        {
            return null;
        }
        ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
        String s;
        com.snapchat.android.model.Mediabryo.UploadStatus uploadstatus;
        if (annotatedmediabryo.I() == null)
        {
            s = "";
        } else
        {
            s = annotatedmediabryo.I().toString();
        }
        contentvaluesbuilder.a(SnapbryoSchema.a, annotatedmediabryo.N());
        contentvaluesbuilder.a(SnapbryoSchema.b, DateFormat.getDateTimeInstance().format(annotatedmediabryo.O()));
        contentvaluesbuilder.a(SnapbryoSchema.c, s);
        contentvaluesbuilder.a(SnapbryoSchema.d, annotatedmediabryo.E());
        contentvaluesbuilder.a(SnapbryoSchema.e, annotatedmediabryo.r());
        uploadstatus = annotatedmediabryo.J();
        if (uploadstatus == com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADING || uploadstatus == com.snapchat.android.model.Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE)
        {
            uploadstatus = com.snapchat.android.model.Mediabryo.UploadStatus.FAILED;
        }
        contentvaluesbuilder.a(SnapbryoSchema.f, uploadstatus.ordinal());
        contentvaluesbuilder.a(SnapbryoSchema.g, annotatedmediabryo.K().ordinal());
        contentvaluesbuilder.a(SnapbryoSchema.h, annotatedmediabryo.L().ordinal());
        contentvaluesbuilder.a(SnapbryoSchema.i, a(annotatedmediabryo.c()));
        contentvaluesbuilder.a(SnapbryoSchema.j, a(annotatedmediabryo.n()));
        contentvaluesbuilder.a(SnapbryoSchema.k, annotatedmediabryo.m());
        contentvaluesbuilder.a(SnapbryoSchema.l, annotatedmediabryo.A());
        contentvaluesbuilder.a(SnapbryoSchema.m, annotatedmediabryo.o());
        contentvaluesbuilder.a(SnapbryoSchema.n, annotatedmediabryo.q());
        contentvaluesbuilder.a(SnapbryoSchema.o, annotatedmediabryo.P());
        return contentvaluesbuilder.a();
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((AnnotatedMediabryo)obj);
    }

    protected AnnotatedMediabryo a(Cursor cursor)
    {
        return (new com.snapchat.android.model.Snapbryo.Builder()).a(cursor.getString(SnapbryoSchema.a.b())).b(cursor.getString(SnapbryoSchema.b.b())).c(cursor.getString(SnapbryoSchema.c.b())).d(cursor.getString(SnapbryoSchema.d.b())).e(cursor.getString(SnapbryoSchema.e.b())).a(cursor.getInt(SnapbryoSchema.f.b())).b(cursor.getInt(SnapbryoSchema.g.b())).c(cursor.getInt(SnapbryoSchema.h.b())).c(a(cursor.getInt(SnapbryoSchema.i.b()))).d(a(cursor.getInt(SnapbryoSchema.j.b()))).a(cursor.getDouble(SnapbryoSchema.k.b())).f(cursor.getString(SnapbryoSchema.l.b())).g(cursor.getString(SnapbryoSchema.m.b())).h(cursor.getString(SnapbryoSchema.n.b())).e(a(cursor.getInt(SnapbryoSchema.o.b()))).a();
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        SnapbryoSchema asnapbryoschema[] = SnapbryoSchema.values();
        int i = asnapbryoschema.length;
        for (int j = 0; j < i; j++)
        {
            SnapbryoSchema snapbryoschema = asnapbryoschema[j];
            s = (new StringBuilder()).append(s).append(",").append(SnapbryoSchema.a(snapbryoschema)).append(" ").append(SnapbryoSchema.b(snapbryoschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return SnapbryoSchema.values();
    }
}
