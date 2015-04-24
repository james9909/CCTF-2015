// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public final class PreferenceUtils
{

    private static final SharedPreferences a = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e());

    private PreferenceUtils()
    {
    }

    public static String a(String s, String s1)
    {
        return a.getString(s, s1);
    }

    public static void a(String s, int i)
    {
        a.edit().putInt(s, i).apply();
    }

    public static boolean a(String s, boolean flag)
    {
        return a.getBoolean(s, flag);
    }

    public static void b(String s, String s1)
    {
        a.edit().putString(s, s1).apply();
    }

    public static void b(String s, boolean flag)
    {
        a.edit().putBoolean(s, flag).apply();
    }

}
