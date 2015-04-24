// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.HttpMetricSchema;
import com.snapchat.android.database.table.ChatTable;
import com.snapchat.android.database.table.HttpMetricsTable;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;
import java.util.List;

public class SnapchatProvider extends ContentProvider
{

    public static final Uri a = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/HttpMetrics");
    public static final Uri b = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/PublisherAndEdition");
    public static final Uri c = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/DSnapPage");
    private static final UriMatcher d;

    public SnapchatProvider()
    {
    }

    private transient String[] a(String as[], String as1[])
    {
        if (as1 == null || as1.length == 0)
        {
            return as;
        }
        int i;
        int j;
        String as2[];
        if (as == null)
        {
            i = 0;
        } else
        {
            i = as.length;
        }
        j = as1.length;
        as2 = new String[i + j];
        System.arraycopy(as1, 0, as2, 0, j);
        if (i > 0)
        {
            System.arraycopy(as, 0, as2, j, i);
        }
        return as2;
    }

    public int delete(Uri uri, String s, String as[])
    {
        return 0;
    }

    public String getType(Uri uri)
    {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        return null;
    }

    public boolean onCreate()
    {
        return false;
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        int i;
        String s2;
        SQLiteQueryBuilder sqlitequerybuilder;
        i = d.match(uri);
        Timber.a("SnapchatProvider", (new StringBuilder()).append("query ").append(uri).append(" -> ").append(i).toString(), new Object[0]);
        s2 = uri.getQueryParameter("limit");
        sqlitequerybuilder = new SQLiteQueryBuilder();
        i;
        JVM INSTR tableswitch 3 14: default 128
    //                   3 234
    //                   4 155
    //                   5 128
    //                   6 128
    //                   7 128
    //                   8 128
    //                   9 128
    //                   10 324
    //                   11 128
    //                   12 394
    //                   13 453
    //                   14 580;
           goto _L1 _L2 _L3 _L1 _L1 _L1 _L1 _L1 _L4 _L1 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_580;
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
_L3:
        String s7 = (String)uri.getPathSegments().get(1);
        Timber.a("SnapchatProvider", (new StringBuilder()).append("CODE_CHAT_BY_CONVERSATION_ID ").append(s7).toString(), new Object[0]);
        sqlitequerybuilder.appendWhere(com.snapchat.android.database.table.ChatTable.ChatSchema.n.c());
        sqlitequerybuilder.appendWhere("=?");
        as1 = a(as1, new String[] {
            s7
        });
_L2:
        String s4;
        String as2[];
        Timber.a("SnapchatProvider", "CODE_CHAT_ALL", new Object[0]);
        sqlitequerybuilder.setTables("Chat");
        sqlitequerybuilder.setProjectionMap(ChatTable.b);
        as2 = as1;
        s4 = null;
_L8:
        String s3;
        String s5;
        Cursor cursor;
        String s6;
        String as3[];
        if (!TextUtils.isEmpty(s1))
        {
            s5 = s1;
        } else
        {
            s5 = s4;
        }
        cursor = sqlitequerybuilder.query(DatabaseHelper.a(getContext()).getReadableDatabase(), as, s, as2, null, null, s5, s2);
        cursor.setNotificationUri(getContext().getContentResolver(), uri);
        return cursor;
_L4:
        Timber.a("SnapchatProvider", "CODE_HTTP_METRICS_ALL", new Object[0]);
        sqlitequerybuilder.setTables("HttpMetrics");
        sqlitequerybuilder.setProjectionMap(HttpMetricsTable.b);
        if (TextUtils.isEmpty(s1))
        {
            s1 = (new StringBuilder()).append(HttpMetricSchema.b.c()).append(" DESC").toString();
            as2 = as1;
            s4 = null;
        } else
        {
            as2 = as1;
            s4 = null;
        }
          goto _L8
_L5:
        Timber.a("SnapchatProvider", "CODE_DISCOVER_PUBLISHER_EDITION_ALL", new Object[0]);
        sqlitequerybuilder.setTables("PublisherAndEdition");
        sqlitequerybuilder.setProjectionMap(PublisherAndEditionVirtualTable.b);
        s4 = (new StringBuilder()).append(com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable.ChannelSchema.h.c()).append(" ASC").toString();
        as2 = as1;
          goto _L8
_L6:
        s6 = (String)uri.getPathSegments().get(1);
        Timber.a("SnapchatProvider", (new StringBuilder()).append("CODE_DISCOVER_DSNAPS_BY_EDITION_ID ").append(s6).toString(), new Object[0]);
        sqlitequerybuilder.appendWhere(com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable.DSnapPageSchema.e.c());
        sqlitequerybuilder.appendWhere("=?");
        as3 = a(as1, new String[] {
            s6
        });
        sqlitequerybuilder.setTables("DSnapPage");
        sqlitequerybuilder.setProjectionMap(DSnapPageVirtualTable.b);
        s4 = (new StringBuilder()).append(com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable.DSnapPageSchema.d.c()).append(" ASC").toString();
        as2 = as3;
          goto _L8
        Timber.a("SnapchatProvider", "CODE_DISCOVER_DSNAPS_ALL", new Object[0]);
        sqlitequerybuilder.setTables("DSnapPage");
        sqlitequerybuilder.setProjectionMap(DSnapPageVirtualTable.b);
        s3 = (new StringBuilder()).append(com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable.DSnapPageSchema.e.c()).append(" ASC").toString();
        s4 = (new StringBuilder()).append(s3).append(", ").append(com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable.DSnapPageSchema.d.c()).append(" ASC").toString();
        as2 = as1;
          goto _L8
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        return 0;
    }

    static 
    {
        d = new UriMatcher(-1);
        d.addURI("com.snapchat.android.content.SnapchatProvider", "Chat", 3);
        d.addURI("com.snapchat.android.content.SnapchatProvider", "Chat/*", 4);
        d.addURI("com.snapchat.android.content.SnapchatProvider", "HttpMetrics", 10);
        d.addURI("com.snapchat.android.content.SnapchatProvider", "PublisherAndEdition", 12);
        d.addURI("com.snapchat.android.content.SnapchatProvider", "DSnapPage/*", 13);
        d.addURI("com.snapchat.android.content.SnapchatProvider", "DSnapPage", 14);
    }
}
