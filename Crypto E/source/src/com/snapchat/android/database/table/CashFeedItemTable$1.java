// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.model.chat.CashFeedItem;

// Referenced classes of package com.snapchat.android.database.table:
//            CashFeedItemTable

static final class b extends AsyncTask
{

    final Context a;
    final CashFeedItem b;

    protected transient Void a(Void avoid[])
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = DatabaseHelper.a(a).getWritableDatabase();
        sqlitedatabase.beginTransaction();
        Cursor cursor;
        String as[] = CashFeedItemTable.a;
        String s = (new StringBuilder()).append(shSchema.a.c()).append("=? AND ").append(shSchema.t.c()).append("=?").toString();
        String as1[] = new String[2];
        as1[0] = b.d();
        as1[1] = com.snapchat.android.model..();
        cursor = sqlitedatabase.query("CashFeedItem", as, s, as1, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        int i;
        i = cursor.getCount();
        cursor.close();
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(shSchema.t.c(), com.snapchat.android.model._AND_FEED.());
        String s1 = (new StringBuilder()).append(shSchema.a.c()).append("=?").toString();
        String as2[] = new String[1];
        as2[0] = b.d();
        sqlitedatabase.update("CashFeedItem", contentvalues, s1, as2);
_L3:
        sqlitedatabase.setTransactionSuccessful();
_L2:
        sqlitedatabase.endTransaction();
        return null;
        CashFeedItemTable.a(sqlitedatabase, b, com.snapchat.android.model.);
          goto _L3
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        throw exception;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    shSchema(Context context, CashFeedItem cashfeeditem)
    {
        a = context;
        b = cashfeeditem;
        super();
    }
}
