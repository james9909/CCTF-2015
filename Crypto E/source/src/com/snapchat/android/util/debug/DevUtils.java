// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.network.EndpointManager;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

public class DevUtils
{

    private static final Set a;

    public DevUtils()
    {
    }

    public static String a(SharedPreferences sharedpreferences)
    {
        return sharedpreferences.getString(SharedPreferenceKey.ap.a(), null);
    }

    public static void a(SharedPreferences sharedpreferences, String s)
    {
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString(SharedPreferenceKey.ap.a(), s);
        editor.apply();
    }

    public static void a(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        editor.putBoolean(SharedPreferenceKey.ar.a(), flag);
        editor.apply();
    }

    public static boolean a()
    {
        return PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).getBoolean(SharedPreferenceKey.ar.a(), false);
    }

    public static boolean a(String s)
    {
        return a.contains(s);
    }

    private static String b(SharedPreferences sharedpreferences)
    {
        int i = sharedpreferences.getInt(SharedPreferenceKey.au.a(), 0);
        switch (i)
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Unexpected value for REGISTRATION_TESTING_ENDPOINT: ").append(i).toString());

        case 0: // '\0'
            return EndpointManager.a().b();

        case 1: // '\001'
            return "https://only-captcha-dot-feelinsonice-hrd.appspot.com";

        case 2: // '\002'
            return "https://phone-and-captcha-dot-feelinsonice-hrd.appspot.com";

        case 3: // '\003'
            return "https://neither-phone-nor-captcha-dot-feelinsonice-hrd.appspot.com";
        }
    }

    public static String b(String s)
    {
        String s1;
        if (!ReleaseManager.f())
        {
            s1 = EndpointManager.a().b();
        } else
        {
            SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e());
            s1 = a(sharedpreferences);
            if (TextUtils.isEmpty(s1))
            {
                if (s.contains("phone_verify") || s.contains("register"))
                {
                    return b(sharedpreferences);
                } else
                {
                    return EndpointManager.a().b();
                }
            }
        }
        return s1;
    }

    public static void b(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        editor.putBoolean(SharedPreferenceKey.al.a(), flag);
        editor.apply();
    }

    public static boolean b()
    {
        return PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).getBoolean(SharedPreferenceKey.al.a(), false);
    }

    static 
    {
        a = new HashSet();
        a.add("danoz");
        a.add("dianayl");
        a.add("nic");
        a.add("tina");
        a.add("mduong");
        a.add("dongler");
        a.add("tobiasmcg");
        a.add("davidtian-test");
        a.add("lskarasawa");
    }
}
