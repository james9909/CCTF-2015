// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import java.io.File;

public class Constants
{

    public static String a = null;
    public static String b = null;
    public static String c = null;
    public static String d = null;
    public static String e = null;
    public static String f = null;
    public static String g = null;

    public Constants()
    {
    }

    private static int a(Context context, PackageManager packagemanager)
    {
        Bundle bundle;
        int i;
        int j;
        try
        {
            bundle = packagemanager.getApplicationInfo(context.getPackageName(), 128).metaData;
        }
        catch (Exception exception)
        {
            Log.e("HockeyApp", "Exception thrown when accessing the application info:");
            exception.printStackTrace();
            return 0;
        }
        i = 0;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        j = bundle.getInt("buildNumber", 0);
        i = j;
        return i;
    }

    public static void a(Context context)
    {
        e = android.os.Build.VERSION.RELEASE;
        f = Build.MODEL;
        g = Build.MANUFACTURER;
        b(context);
        c(context);
    }

    private static void b(Context context)
    {
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        File file;
        try
        {
            file = context.getFilesDir();
        }
        catch (Exception exception)
        {
            Log.e("HockeyApp", "Exception thrown when accessing the files dir:");
            exception.printStackTrace();
            return;
        }
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        a = file.getAbsolutePath();
    }

    private static void c(Context context)
    {
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        PackageInfo packageinfo;
        int i;
        try
        {
            PackageManager packagemanager = context.getPackageManager();
            packageinfo = packagemanager.getPackageInfo(context.getPackageName(), 0);
            d = packageinfo.packageName;
            b = (new StringBuilder()).append("").append(packageinfo.versionCode).toString();
            c = packageinfo.versionName;
            i = a(context, packagemanager);
        }
        catch (Exception exception)
        {
            Log.e("HockeyApp", "Exception thrown when accessing the package info:");
            exception.printStackTrace();
            return;
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (i > packageinfo.versionCode)
        {
            b = (new StringBuilder()).append("").append(i).toString();
        }
    }

}
