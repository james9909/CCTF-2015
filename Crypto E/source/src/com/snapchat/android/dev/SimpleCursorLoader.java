// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.dev;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.content.AsyncTaskLoader;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.vtable.DbVirtualTable;

public class SimpleCursorLoader extends AsyncTaskLoader
{

    private Cursor a;
    private final DbTable b;
    private final DbVirtualTable c;

    public SimpleCursorLoader(Context context, DbTable dbtable)
    {
        super(context);
        b = dbtable;
        c = null;
    }

    public SimpleCursorLoader(Context context, DbVirtualTable dbvirtualtable)
    {
        super(context);
        b = null;
        c = dbvirtualtable;
    }

    public Cursor a()
    {
        SQLiteDatabase sqlitedatabase = DatabaseHelper.a(getContext()).getReadableDatabase();
        if (b != null)
        {
            return sqlitedatabase.query(b.a(), b.i(), null, null, null, null, null);
        } else
        {
            return sqlitedatabase.query(c.a(), c.d(), null, null, null, null, null);
        }
    }

    public void a(Cursor cursor)
    {
        if (isReset())
        {
            if (cursor != null)
            {
                cursor.close();
            }
        } else
        {
            Cursor cursor1 = a;
            a = cursor;
            if (isStarted())
            {
                super.deliverResult(cursor);
            }
            if (cursor1 != null && cursor1 != cursor && !cursor1.isClosed())
            {
                cursor1.close();
                return;
            }
        }
    }

    public void b(Cursor cursor)
    {
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
    }

    public void deliverResult(Object obj)
    {
        a((Cursor)obj);
    }

    public Object loadInBackground()
    {
        return a();
    }

    public void onCanceled(Object obj)
    {
        b((Cursor)obj);
    }

    protected void onReset()
    {
        super.onReset();
        onStopLoading();
        if (a != null && !a.isClosed())
        {
            a.close();
        }
        a = null;
    }

    protected void onStartLoading()
    {
        if (a != null)
        {
            a(a);
        }
        if (takeContentChanged() || a == null)
        {
            forceLoad();
        }
    }

    protected void onStopLoading()
    {
        cancelLoad();
    }
}
