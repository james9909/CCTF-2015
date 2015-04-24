// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.utils;

import android.content.Context;
import android.content.SharedPreferences;

// Referenced classes of package net.hockeyapp.android.utils:
//            PrefsUtil

public class VersionCache
{

    private static String a = "versionInfo";

    public VersionCache()
    {
    }

    public static String a(Context context)
    {
        if (context != null)
        {
            return context.getSharedPreferences("HockeyApp", 0).getString(a, "[]");
        } else
        {
            return "[]";
        }
    }

    public static void a(Context context, String s)
    {
        if (context != null)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("HockeyApp", 0).edit();
            editor.putString(a, s);
            PrefsUtil.a(editor);
        }
    }

}
