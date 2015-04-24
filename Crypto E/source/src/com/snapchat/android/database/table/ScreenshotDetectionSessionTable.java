// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.User;
import com.snapchat.android.screenshotdetection.ChatViewingSession;
import com.snapchat.android.screenshotdetection.ScreenshotDetectionSession;
import com.snapchat.android.screenshotdetection.ScreenshotDetector;
import com.snapchat.android.screenshotdetection.SnapViewingSession;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public class ScreenshotDetectionSessionTable extends DbTable
{
    public static final class ViewingSessionSchema extends Enum
        implements Schema
    {

        public static final ViewingSessionSchema a;
        public static final ViewingSessionSchema b;
        public static final ViewingSessionSchema c;
        public static final ViewingSessionSchema d;
        public static final ViewingSessionSchema e;
        private static final ViewingSessionSchema i[];
        private int f;
        private String g;
        private DataType h;

        static String a(ViewingSessionSchema viewingsessionschema)
        {
            return viewingsessionschema.g;
        }

        static DataType b(ViewingSessionSchema viewingsessionschema)
        {
            return viewingsessionschema.h;
        }

        public static ViewingSessionSchema valueOf(String s)
        {
            return (ViewingSessionSchema)Enum.valueOf(com/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema, s);
        }

        public static ViewingSessionSchema[] values()
        {
            return (ViewingSessionSchema[])i.clone();
        }

        public DataType a()
        {
            return h;
        }

        public int b()
        {
            return f;
        }

        public String c()
        {
            return g;
        }

        public String d()
        {
            return null;
        }

        static 
        {
            a = new ViewingSessionSchema("SENDER", 0, 1, "Sender", DataType.a);
            b = new ViewingSessionSchema("START_TIME", 1, 2, "StartTime", DataType.b);
            c = new ViewingSessionSchema("END_TIME", 2, 3, "EndTime", DataType.b);
            d = new ViewingSessionSchema("TYPE", 3, 4, "Type", DataType.a);
            e = new ViewingSessionSchema("EXTRA", 4, 5, "Extra", DataType.a);
            ViewingSessionSchema aviewingsessionschema[] = new ViewingSessionSchema[5];
            aviewingsessionschema[0] = a;
            aviewingsessionschema[1] = b;
            aviewingsessionschema[2] = c;
            aviewingsessionschema[3] = d;
            aviewingsessionschema[4] = e;
            i = aviewingsessionschema;
        }

        private ViewingSessionSchema(String s, int j, int k, String s1, DataType datatype)
        {
            super(s, j);
            f = k;
            g = s1;
            h = datatype;
        }
    }


    private static ScreenshotDetectionSessionTable a;

    private ScreenshotDetectionSessionTable()
    {
    }

    public static ScreenshotDetectionSessionTable b()
    {
        com/snapchat/android/database/table/ScreenshotDetectionSessionTable;
        JVM INSTR monitorenter ;
        ScreenshotDetectionSessionTable screenshotdetectionsessiontable;
        if (a == null)
        {
            a = new ScreenshotDetectionSessionTable();
        }
        screenshotdetectionsessiontable = a;
        com/snapchat/android/database/table/ScreenshotDetectionSessionTable;
        JVM INSTR monitorexit ;
        return screenshotdetectionsessiontable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(ScreenshotDetectionSession screenshotdetectionsession)
    {
        if (screenshotdetectionsession != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        ContentValuesBuilder contentvaluesbuilder;
        String s;
        contentvaluesbuilder = new ContentValuesBuilder();
        if (!(screenshotdetectionsession instanceof SnapViewingSession))
        {
            continue; /* Loop/switch isn't completed */
        }
        s = "SnapViewingSession";
_L4:
        contentvaluesbuilder.a(ViewingSessionSchema.a, screenshotdetectionsession.b());
        contentvaluesbuilder.a(ViewingSessionSchema.b, screenshotdetectionsession.e());
        contentvaluesbuilder.a(ViewingSessionSchema.c, screenshotdetectionsession.f());
        contentvaluesbuilder.a(ViewingSessionSchema.d, s);
        contentvaluesbuilder.a(ViewingSessionSchema.e, screenshotdetectionsession.a());
        return contentvaluesbuilder.a();
        if (!(screenshotdetectionsession instanceof ChatViewingSession)) goto _L1; else goto _L3
_L3:
        s = "ChatViewingSession";
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((ScreenshotDetectionSession)obj);
    }

    protected ScreenshotDetectionSession a(Cursor cursor)
    {
        String s = cursor.getString(ViewingSessionSchema.a.b());
        long l = cursor.getLong(ViewingSessionSchema.b.b());
        long l1 = cursor.getLong(ViewingSessionSchema.c.b());
        String s1 = cursor.getString(ViewingSessionSchema.d.b());
        String s2 = cursor.getString(ViewingSessionSchema.e.b());
        if (TextUtils.equals(s1, "SnapViewingSession"))
        {
            return new SnapViewingSession(s, s2, l, l1);
        }
        if (TextUtils.equals(s1, "ChatViewingSession"))
        {
            return new ChatViewingSession(s, l, l1);
        } else
        {
            return null;
        }
    }

    public String a()
    {
        return "ViewingSessions";
    }

    public void a(User user)
    {
        ScreenshotDetector.a().a(a(null, null));
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return ScreenshotDetector.a().c();
    }

    public String c()
    {
        String s = "_id INTEGER PRIMARY KEY";
        ViewingSessionSchema aviewingsessionschema[] = ViewingSessionSchema.values();
        int i = aviewingsessionschema.length;
        for (int j = 0; j < i; j++)
        {
            ViewingSessionSchema viewingsessionschema = aviewingsessionschema[j];
            s = (new StringBuilder()).append(s).append(",").append(ViewingSessionSchema.a(viewingsessionschema)).append(" ").append(ViewingSessionSchema.b(viewingsessionschema).toString()).toString();
        }

        return s;
    }

    public Schema[] d()
    {
        return ViewingSessionSchema.values();
    }
}
