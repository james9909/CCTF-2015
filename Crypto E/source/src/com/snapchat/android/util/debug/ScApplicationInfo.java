// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.network.ConnectivityUtils;

// Referenced classes of package com.snapchat.android.util.debug:
//            DevUtils, ReleaseManager

public class ScApplicationInfo extends ApplicationInfo
{

    public static int a = 0x7fffffff;
    public static String b = "";

    public ScApplicationInfo()
    {
    }

    public static String a()
    {
        return "com.snapchat.android";
    }

    public static String a(Context context)
    {
        String s = UserPrefs.k();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append("Build : ").append(b(context)).toString()).append("(").append((new StringBuilder()).append(Build.DEVICE).append(";").toString()).append((new StringBuilder()).append(Build.MODEL).append(";").toString()).append((new StringBuilder()).append(Build.MANUFACTURER).append(";").toString()).append((new StringBuilder()).append("Version- ").append(android.os.Build.VERSION.SDK_INT).append(") - ").append(s).append("\n").toString()).append((new StringBuilder()).append("Connection type: ").append(ConnectivityUtils.d()).append("\n").toString()).append((new StringBuilder()).append("Using Square sandbox: ").append(DevUtils.a()).append("\n").toString()).append((new StringBuilder()).append("Release delay time: ").append(UserPrefs.aO()).append("\n").toString());
        NetworkInfo networkinfo = ConnectivityUtils.a();
        if (networkinfo != null && ConnectivityUtils.b())
        {
            stringbuilder.append((new StringBuilder()).append("Mobile network subtype: ").append(networkinfo.getSubtypeName()).toString()).append("\n");
        }
        if (ReleaseManager.e() && !TextUtils.isEmpty(""))
        {
            stringbuilder.append("Git Branch: ").append("");
        }
        if (ReleaseManager.f() && !TextUtils.isEmpty(""))
        {
            stringbuilder.append("Dogfood build - git hash: ").append("");
        }
        return stringbuilder.toString();
    }

    public static String b(Context context)
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = d(context);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.d("ScApplicationInfo", "getPackageName failed.");
            return b;
        }
        return packageinfo.versionName;
    }

    public static int c(Context context)
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = d(context);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.d("ScApplicationInfo", "getPackageName failed.");
            return a;
        }
        return packageinfo.versionCode;
    }

    public static PackageInfo d(Context context)
    {
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
    }

    public static String e(Context context)
    {
        return (new StringBuilder()).append("username: ").append(UserPrefs.k()).append("\n").append("email: ").append(UserPrefs.v()).toString();
    }

}
