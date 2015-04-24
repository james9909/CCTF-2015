// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

// Referenced classes of package com.flurry.sdk:
//            el

public final class dx
{

    private static final String a = com/flurry/sdk/dx.getSimpleName();

    public dx()
    {
    }

    public static PackageInfo a(Context context)
    {
        PackageInfo packageinfo = null;
        if (context != null)
        {
            PackageInfo packageinfo1;
            try
            {
                packageinfo1 = context.getPackageManager().getPackageInfo(context.getPackageName(), 20815);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                el.a(a, (new StringBuilder()).append("Cannot find package info for package: ").append(context.getPackageName()).toString());
                return null;
            }
            packageinfo = packageinfo1;
        }
        return packageinfo;
    }

    public static ApplicationInfo b(Context context)
    {
        ApplicationInfo applicationinfo = null;
        if (context != null)
        {
            ApplicationInfo applicationinfo1;
            try
            {
                applicationinfo1 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                el.a(a, (new StringBuilder()).append("Cannot find application info for package: ").append(context.getPackageName()).toString());
                return null;
            }
            applicationinfo = applicationinfo1;
        }
        return applicationinfo;
    }

    public static String c(Context context)
    {
        PackageInfo packageinfo = a(context);
        if (packageinfo != null && packageinfo.packageName != null)
        {
            return packageinfo.packageName;
        } else
        {
            return "";
        }
    }

    public static Bundle d(Context context)
    {
        ApplicationInfo applicationinfo = b(context);
        if (applicationinfo != null && applicationinfo.metaData != null)
        {
            return applicationinfo.metaData;
        } else
        {
            return Bundle.EMPTY;
        }
    }

}
