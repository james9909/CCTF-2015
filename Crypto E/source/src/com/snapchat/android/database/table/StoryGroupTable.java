// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public class StoryGroupTable extends DbTable
{
    public static final class StoryGroupSchema extends Enum
        implements Schema
    {

        public static final StoryGroupSchema a;
        public static final StoryGroupSchema b;
        public static final StoryGroupSchema c;
        public static final StoryGroupSchema d;
        private static final StoryGroupSchema i[];
        private int e;
        private String f;
        private DataType g;
        private String h;

        static String a(StoryGroupSchema storygroupschema)
        {
            return storygroupschema.f;
        }

        static DataType b(StoryGroupSchema storygroupschema)
        {
            return storygroupschema.g;
        }

        public static StoryGroupSchema valueOf(String s)
        {
            return (StoryGroupSchema)Enum.valueOf(com/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema, s);
        }

        public static StoryGroupSchema[] values()
        {
            return (StoryGroupSchema[])i.clone();
        }

        public DataType a()
        {
            return g;
        }

        public int b()
        {
            return e;
        }

        public String c()
        {
            return f;
        }

        public String d()
        {
            return h;
        }

        static 
        {
            a = new StoryGroupSchema("ID", 0, 0, "storyGroupId", DataType.a, "PRIMARY KEY");
            b = new StoryGroupSchema("DISPLAY_NAME", 1, 1, "displayName", DataType.a);
            c = new StoryGroupSchema("SHOULD_FETCH_CUSTOM_DESCRIPTION", 2, 2, "shouldFetchCustomDescription", DataType.d);
            d = new StoryGroupSchema("CUSTOM_DESCRIPTION", 3, 3, "customDescription", DataType.a);
            StoryGroupSchema astorygroupschema[] = new StoryGroupSchema[4];
            astorygroupschema[0] = a;
            astorygroupschema[1] = b;
            astorygroupschema[2] = c;
            astorygroupschema[3] = d;
            i = astorygroupschema;
        }

        private StoryGroupSchema(String s, int j, int k, String s1, DataType datatype)
        {
            super(s, j);
            e = k;
            f = s1;
            g = datatype;
        }

        private StoryGroupSchema(String s, int j, int k, String s1, DataType datatype, String s2)
        {
            super(s, j);
            e = k;
            f = s1;
            g = datatype;
            h = s2;
        }
    }


    public static final String a[];
    public static final HashMap b;
    private static StoryGroupTable e;

    private StoryGroupTable()
    {
    }

    public static StoryGroupTable b()
    {
        com/snapchat/android/database/table/StoryGroupTable;
        JVM INSTR monitorenter ;
        StoryGroupTable storygrouptable;
        if (e == null)
        {
            e = new StoryGroupTable();
        }
        storygrouptable = e;
        com/snapchat/android/database/table/StoryGroupTable;
        JVM INSTR monitorexit ;
        return storygrouptable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(StoryGroup storygroup)
    {
        if (storygroup == null)
        {
            return null;
        } else
        {
            ContentValuesBuilder contentvaluesbuilder = new ContentValuesBuilder();
            contentvaluesbuilder.a(StoryGroupSchema.a, storygroup.c());
            contentvaluesbuilder.a(StoryGroupSchema.b, storygroup.d());
            contentvaluesbuilder.a(StoryGroupSchema.c, a(storygroup.f()));
            contentvaluesbuilder.a(StoryGroupSchema.d, storygroup.g());
            return contentvaluesbuilder.a();
        }
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((StoryGroup)obj);
    }

    protected StoryGroup a(Cursor cursor)
    {
        String s = cursor.getString(StoryGroupSchema.a.b());
        String s1 = cursor.getString(StoryGroupSchema.b.b());
        boolean flag = a(cursor.getInt(StoryGroupSchema.c.b()));
        String s2 = cursor.getString(StoryGroupSchema.d.b());
        return (new com.snapchat.android.model.StoryGroup.Builder(s)).a(s1).a(flag).b(s2).a();
    }

    public String a()
    {
        return "StoryGroup";
    }

    public void a(User user)
    {
        StoryLibrary.a().b(a(null, null));
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return StoryLibrary.a().j();
    }

    public String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        StoryGroupSchema astorygroupschema[] = StoryGroupSchema.values();
        int i = astorygroupschema.length;
        for (int j = 0; j < i; j++)
        {
            StoryGroupSchema storygroupschema = astorygroupschema[j];
            if (j > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append((new StringBuilder()).append(StoryGroupSchema.a(storygroupschema)).append(" ").append(StoryGroupSchema.b(storygroupschema).toString()).toString());
            String s = storygroupschema.d();
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
        return StoryGroupSchema.values();
    }

    static 
    {
        int i = 0;
        StoryGroupSchema astorygroupschema[] = StoryGroupSchema.values();
        int j = astorygroupschema.length;
        a = new String[j];
        for (int k = 0; k < j; k++)
        {
            a[k] = astorygroupschema[k].c();
        }

        b = new HashMap();
        StoryGroupSchema astorygroupschema1[] = StoryGroupSchema.values();
        for (int l = astorygroupschema1.length; i < l; i++)
        {
            StoryGroupSchema storygroupschema = astorygroupschema1[i];
            b.put(storygroupschema.c(), storygroupschema.c());
        }

    }
}
