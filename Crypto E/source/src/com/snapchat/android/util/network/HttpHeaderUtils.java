// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.network;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.snapchat.android.SnapchatApplication;
import java.util.Locale;

public class HttpHeaderUtils
{

    private static final String a;
    private static final String b;

    private HttpHeaderUtils()
    {
    }

    public static String a()
    {
        String s;
        SnapchatApplication snapchatapplication = SnapchatApplication.e();
        s = snapchatapplication.getPackageManager().getPackageInfo(snapchatapplication.getPackageName(), 0).versionName;
_L2:
        return (new StringBuilder()).append("Snapchat/").append(s).append(b).toString();
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
_L3:
        s = "3.0.2";
        if (true) goto _L2; else goto _L1
_L1:
        NullPointerException nullpointerexception;
        nullpointerexception;
          goto _L3
    }

    public static boolean a(String s)
    {
        return s != null && (s.contains("/loq/login") || s.contains("/loq/register"));
    }

    public static String b()
    {
        String s = Locale.getDefault().getLanguage();
        if (!s.equals(Locale.ENGLISH.getLanguage()))
        {
            s = (new StringBuilder()).append(s).append(";q=1, en;q=0.9").toString();
        }
        return s;
    }

    static 
    {
        a = (new StringBuilder()).append("; Android ").append(android.os.Build.VERSION.RELEASE).append("#").append(android.os.Build.VERSION.INCREMENTAL).append("#").append(android.os.Build.VERSION.SDK_INT).toString();
        b = (new StringBuilder()).append(" (").append(Build.MODEL).append(a).append("; gzip)").toString();
    }
}
