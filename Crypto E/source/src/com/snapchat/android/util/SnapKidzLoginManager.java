// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public class SnapKidzLoginManager
{

    private static SnapKidzLoginManager d;
    private SharedPreferences a;
    private android.content.SharedPreferences.Editor b;
    private int c;

    private SnapKidzLoginManager()
    {
        a = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e());
        b = a.edit();
        c = a.getInt("SnapKidzLoginManager_numAccounts", 0);
    }

    public static SnapKidzLoginManager a()
    {
        com/snapchat/android/util/SnapKidzLoginManager;
        JVM INSTR monitorenter ;
        SnapKidzLoginManager snapkidzloginmanager;
        if (d == null)
        {
            d = new SnapKidzLoginManager();
        }
        snapkidzloginmanager = d;
        com/snapchat/android/util/SnapKidzLoginManager;
        JVM INSTR monitorexit ;
        return snapkidzloginmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private int b(String s)
    {
        for (int i = 0; i < c; i++)
        {
            String s1 = a.getString((new StringBuilder()).append("SnapKidzLoginManager_username_").append(i).toString(), null);
            if (s1 != null && s.equals(s1))
            {
                return i;
            }
        }

        return -1;
    }

    public static void b()
    {
        com/snapchat/android/util/SnapKidzLoginManager;
        JVM INSTR monitorenter ;
        d = null;
        com/snapchat/android/util/SnapKidzLoginManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean a(String s)
    {
        return b(s) != -1;
    }

    public boolean a(String s, String s1)
    {
        if (a(s))
        {
            return false;
        } else
        {
            b.putString((new StringBuilder()).append("SnapKidzLoginManager_username_").append(c).toString(), s);
            b.putInt((new StringBuilder()).append("SnapKidzLoginManager_passkey_").append(c).toString(), s1.hashCode());
            c = 1 + c;
            b.putInt("SnapKidzLoginManager_numAccounts", c);
            b.apply();
            return true;
        }
    }

    public boolean b(String s, String s1)
    {
        int i = b(s);
        return a.getInt((new StringBuilder()).append("SnapKidzLoginManager_passkey_").append(i).toString(), -1) == s1.hashCode();
    }
}
