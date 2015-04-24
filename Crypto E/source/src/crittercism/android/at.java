// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.crittercism.app.CrittercismConfig;

public final class at
{

    public String a;
    public int b;

    public at(Context context, CrittercismConfig crittercismconfig)
    {
        a = "1.0";
        b = 0;
        String s;
        try
        {
            PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            a = packageinfo.versionName;
            b = packageinfo.versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        s = crittercismconfig.d();
        if (s != null && s.length() > 0)
        {
            a = s;
        }
        if (crittercismconfig.f())
        {
            a = (new StringBuilder()).append(a).append("-").append(Integer.toString(b)).toString();
        }
    }
}
