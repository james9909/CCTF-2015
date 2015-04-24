// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


public class SqlUtils
{

    private static String a = "(CASE WHEN (%s='' OR %s IS NULL) THEN %s ELSE %s END)";
    private static String b = "%s='' OR %s IS NULL";

    public SqlUtils()
    {
    }

}
