// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.eventengine:
//            Constants

class DatabaseHelper extends SQLiteOpenHelper
{

    private static DatabaseHelper a;
    private File b;

    private DatabaseHelper(Context context)
    {
        super(context, Constants.b, null, 1);
        b = context.getDatabasePath(Constants.b);
    }

    static DatabaseHelper a(Context context)
    {
        if (a == null)
        {
            a = new DatabaseHelper(context.getApplicationContext());
        }
        return a;
    }

    private void b()
    {
        try
        {
            close();
            b.delete();
            return;
        }
        catch (SecurityException securityexception)
        {
            Log.e("com.amplitude.api.DatabaseHelper", "delete failed", securityexception);
        }
    }

    long a()
    {
        this;
        JVM INSTR monitorenter ;
        long l = 0L;
        long l1 = getReadableDatabase().compileStatement("SELECT COUNT(*) FROM events").simpleQueryForLong();
        l = l1;
        close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return l;
        SQLiteException sqliteexception;
        sqliteexception;
        Log.e("com.amplitude.api.DatabaseHelper", "getNumberRows failed", sqliteexception);
        close();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        close();
        throw exception;
    }

    long a(long l)
    {
        long l1 = -1L;
        this;
        JVM INSTR monitorenter ;
        SQLiteStatement sqlitestatement = getReadableDatabase().compileStatement((new StringBuilder()).append("SELECT id FROM events LIMIT 1 OFFSET ").append(l - 1L).toString());
        long l2 = sqlitestatement.simpleQueryForLong();
        l1 = l2;
_L1:
        close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return l1;
        SQLiteDoneException sqlitedoneexception;
        sqlitedoneexception;
        Log.w("com.amplitude.api.DatabaseHelper", sqlitedoneexception);
          goto _L1
        SQLiteException sqliteexception;
        sqliteexception;
        Log.e("com.amplitude.api.DatabaseHelper", "getNthEventId failed", sqliteexception);
        close();
          goto _L2
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        close();
        throw exception;
          goto _L1
    }

    long a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("event", s);
        l1 = sqlitedatabase.insert("events", null, contentvalues);
        long l;
        l = l1;
        if (l != -1L)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        Log.w("com.amplitude.api.DatabaseHelper", "Insert failed");
        close();
_L1:
        this;
        JVM INSTR monitorexit ;
        return l;
        SQLiteException sqliteexception;
        sqliteexception;
        SQLiteException sqliteexception1;
        l = -1L;
        sqliteexception1 = sqliteexception;
_L2:
        Log.e("com.amplitude.api.DatabaseHelper", "addEvent failed", sqliteexception1);
        b();
        close();
          goto _L1
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        close();
        throw exception;
        sqliteexception1;
          goto _L2
    }

    Pair a(long l, int i)
    {
        this;
        JVM INSTR monitorenter ;
        JSONArray jsonarray = new JSONArray();
        Cursor cursor = null;
        SQLiteDatabase sqlitedatabase;
        String as[];
        sqlitedatabase = getReadableDatabase();
        as = (new String[] {
            "id", "event"
        });
        if (l < 0L) goto _L2; else goto _L1
_L1:
        String s = (new StringBuilder()).append("id < ").append(l).toString();
_L7:
        if (i < 0) goto _L4; else goto _L3
_L3:
        String s1 = (new StringBuilder()).append("").append(i).toString();
_L8:
        Cursor cursor2 = sqlitedatabase.query("events", as, s, null, null, null, "id ASC", s1);
        Cursor cursor1;
        long l1;
        cursor1 = cursor2;
        l1 = -1L;
_L6:
        long l2;
        if (!cursor1.moveToNext())
        {
            break; /* Loop/switch isn't completed */
        }
        l2 = cursor1.getLong(0);
        jsonarray.put(new JSONObject(cursor1.getString(1)));
        l1 = l2;
        if (true) goto _L6; else goto _L5
_L2:
        s = null;
          goto _L7
_L4:
        s1 = null;
          goto _L8
_L5:
        if (cursor1 == null)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        cursor1.close();
        close();
_L9:
        Pair pair = new Pair(Long.valueOf(l1), jsonarray);
        this;
        JVM INSTR monitorexit ;
        return pair;
        SQLiteException sqliteexception;
        sqliteexception;
        cursor1 = null;
        l1 = -1L;
_L12:
        Log.e("com.amplitude.api.DatabaseHelper", "getEvents failed", sqliteexception);
        if (cursor1 == null)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        cursor1.close();
        close();
          goto _L9
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
_L11:
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        cursor.close();
        close();
        throw exception;
        exception;
        cursor = cursor1;
        if (true) goto _L11; else goto _L10
_L10:
        sqliteexception;
          goto _L12
    }

    void b(long l)
    {
        this;
        JVM INSTR monitorenter ;
        getWritableDatabase().delete("events", (new StringBuilder()).append("id <= ").append(l).toString(), null);
        close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        SQLiteException sqliteexception;
        sqliteexception;
        Log.e("com.amplitude.api.DatabaseHelper", "removeEvents failed", sqliteexception);
        close();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        close();
        throw exception;
    }

    void c(long l)
    {
        this;
        JVM INSTR monitorenter ;
        getWritableDatabase().delete("events", (new StringBuilder()).append("id = ").append(l).toString(), null);
        close();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        SQLiteException sqliteexception;
        sqliteexception;
        Log.e("com.amplitude.api.DatabaseHelper", "removeEvent failed", sqliteexception);
        close();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        close();
        throw exception;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS events");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);");
    }
}
