// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import com.snapchat.android.database.schema.Schema;

public class SqlHelper
{

    public SqlHelper()
    {
    }

    public static String a(String s, Schema schema, String s1, Schema schema1)
    {
        return (new StringBuilder()).append(" DELETE FROM ").append(s).append(" WHERE ").append(a(s, schema)).append(" IN ").append(" ( ").append(" SELECT ").append(a(s, schema)).append(" FROM ").append(s).append(" LEFT JOIN ").append(s1).append(" ON ").append(a(s, schema)).append(" = ").append(a(s1, schema1)).append(" WHERE ").append(a(s1, schema1)).append(" IS NULL ").append(" ) ").toString();
    }

    public static StringBuilder a(String s, Schema schema)
    {
        return (new StringBuilder()).append(s).append('.').append(schema.c());
    }
}
