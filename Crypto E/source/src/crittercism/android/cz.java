// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;

public final class cz
{

    public static boolean a = false;

    public static Boolean a(Context context)
    {
        return Boolean.valueOf(context.getSharedPreferences("com.crittercism.usersettings", 0).getBoolean("crashedOnLastLoad", false));
    }

    public static void a(Context context, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("com.crittercism.usersettings", 0).edit();
        editor.putBoolean("crashedOnLastLoad", flag);
        editor.commit();
    }

}
