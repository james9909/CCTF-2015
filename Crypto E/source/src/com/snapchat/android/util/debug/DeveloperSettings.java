// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.SharedPreferences;
import com.snapchat.android.database.SharedPreferenceKey;

public class DeveloperSettings
{

    private static final DeveloperSettings b = new DeveloperSettings();
    private SharedPreferences a;

    public DeveloperSettings()
    {
    }

    public static DeveloperSettings a()
    {
        return b;
    }

    public void a(SharedPreferences sharedpreferences)
    {
        a = sharedpreferences;
    }

    public void a(String s)
    {
        if (a == null)
        {
            return;
        } else
        {
            android.content.SharedPreferences.Editor editor = a.edit();
            editor.putString(SharedPreferenceKey.aq.a(), s);
            editor.apply();
            return;
        }
    }

    public void a(boolean flag)
    {
        if (a == null)
        {
            return;
        } else
        {
            android.content.SharedPreferences.Editor editor = a.edit();
            editor.putBoolean(SharedPreferenceKey.at.a(), flag);
            editor.apply();
            return;
        }
    }

    public String b()
    {
        if (a == null)
        {
            return null;
        } else
        {
            return a.getString(SharedPreferenceKey.aq.a(), null);
        }
    }

    public boolean c()
    {
        if (a == null)
        {
            return false;
        } else
        {
            return a.getBoolean(SharedPreferenceKey.at.a(), false);
        }
    }

}
