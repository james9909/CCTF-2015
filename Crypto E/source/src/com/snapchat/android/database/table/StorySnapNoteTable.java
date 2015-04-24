// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.schema.StorySnapNoteSchema;
import com.snapchat.android.model.StoryPointer;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapNote;
import com.snapchat.android.model.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.database.table:
//            DbTable, ContentValuesBuilder

public class StorySnapNoteTable extends DbTable
{

    public static final String a[];
    private static StorySnapNoteTable b;

    StorySnapNoteTable()
    {
    }

    public static StorySnapNoteTable b()
    {
        com/snapchat/android/database/table/StorySnapNoteTable;
        JVM INSTR monitorenter ;
        StorySnapNoteTable storysnapnotetable;
        if (b == null)
        {
            b = new StorySnapNoteTable();
        }
        storysnapnotetable = b;
        com/snapchat/android/database/table/StorySnapNoteTable;
        JVM INSTR monitorexit ;
        return storysnapnotetable;
        Exception exception;
        exception;
        throw exception;
    }

    protected ContentValues a(StorySnapNote storysnapnote)
    {
        return null;
    }

    protected volatile ContentValues a(Object obj)
    {
        return a((StorySnapNote)obj);
    }

    protected ContentValues a(String s, StorySnapNote storysnapnote)
    {
        ContentValuesBuilder contentvaluesbuilder = (new ContentValuesBuilder()).a(StorySnapNoteSchema.a, s).a(StorySnapNoteSchema.b, storysnapnote.b()).a(StorySnapNoteSchema.c, storysnapnote.a()).a(StorySnapNoteSchema.d, storysnapnote.c().longValue());
        StoryPointer storypointer = storysnapnote.d();
        if (storypointer != null)
        {
            contentvaluesbuilder = contentvaluesbuilder.a(StorySnapNoteSchema.e, storypointer.a()).a(StorySnapNoteSchema.f, storypointer.b());
        }
        return contentvaluesbuilder.a();
    }

    protected StorySnapNote a(Cursor cursor)
    {
        return null;
    }

    public String a()
    {
        return "StorySnapNote";
    }

    public void a(SQLiteDatabase sqlitedatabase, List list)
    {
        a(sqlitedatabase);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnapLogbook storysnaplogbook = (StorySnapLogbook)iterator.next();
            String s = storysnaplogbook.e().d();
            List list1 = storysnaplogbook.f();
            if (!TextUtils.isEmpty(s) && list1 != null)
            {
                Iterator iterator1 = list1.iterator();
                while (iterator1.hasNext()) 
                {
                    ContentValues contentvalues = a(s, (StorySnapNote)iterator1.next());
                    Timber.c("StorySnapNoteTable", (new StringBuilder()).append("Save note into DB: ").append(contentvalues).toString(), new Object[0]);
                    sqlitedatabase.insertWithOnConflict("StorySnapNote", null, contentvalues, 5);
                }
            }
        } while (true);
    }

    public void a(User user)
    {
    }

    protected Object b(Cursor cursor)
    {
        return a(cursor);
    }

    protected Collection b(User user)
    {
        return null;
    }

    public Map b(SQLiteDatabase sqlitedatabase)
    {
        HashMap hashmap;
        Cursor cursor;
        hashmap = new HashMap();
        cursor = sqlitedatabase.query("StorySnapNote", a, null, null, null, null, (new StringBuilder()).append(StorySnapNoteSchema.d.c()).append(" DESC").toString());
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        String s = cursor.getString(StorySnapNoteSchema.a.b());
        if (TextUtils.isEmpty(s)) goto _L5; else goto _L4
_L4:
        Object obj = (List)hashmap.get(s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        obj = new ArrayList();
        hashmap.put(s, obj);
        StorySnapNote storysnapnote = c(cursor);
        Timber.c("StorySnapNoteTable", (new StringBuilder()).append("Load snap note ").append(storysnapnote).toString(), new Object[0]);
        ((List) (obj)).add(storysnapnote);
_L5:
        boolean flag = cursor.moveToNext();
        if (flag) goto _L3; else goto _L2
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        return hashmap;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    protected StorySnapNote c(Cursor cursor)
    {
        boolean flag = true;
        String s = cursor.getString(StorySnapNoteSchema.b.b());
        long l;
        String s1;
        String s2;
        StoryPointer storypointer;
        if (cursor.getInt(StorySnapNoteSchema.c.b()) != flag)
        {
            flag = false;
        }
        l = cursor.getLong(StorySnapNoteSchema.d.b());
        s1 = cursor.getString(StorySnapNoteSchema.e.b());
        s2 = cursor.getString(StorySnapNoteSchema.f.b());
        if (!TextUtils.isEmpty(s1) && !TextUtils.isEmpty(s2))
        {
            storypointer = new StoryPointer(s1, s2);
        } else
        {
            storypointer = null;
        }
        return new StorySnapNote(s, flag, Long.valueOf(l), storypointer);
    }

    public Schema[] d()
    {
        return StorySnapNoteSchema.values();
    }

    public boolean e()
    {
        return true;
    }

    static 
    {
        StorySnapNoteSchema astorysnapnoteschema[] = StorySnapNoteSchema.values();
        int i = astorysnapnoteschema.length;
        a = new String[i];
        for (int j = 0; j < i; j++)
        {
            a[j] = astorysnapnoteschema[j].c();
        }

    }
}
