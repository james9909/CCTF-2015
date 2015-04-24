// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

// Referenced classes of package crittercism.android:
//            dg, b

public final class d
{

    private ConnectivityManager a;

    public d(Context context)
    {
        if (context == null)
        {
            dg.b("Crittercism", "Given a null Context.");
            return;
        }
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0)
        {
            a = (ConnectivityManager)context.getSystemService("connectivity");
            return;
        } else
        {
            dg.b("Crittercism", "Add android.permission.ACCESS_NETWORK_STATE to AndroidManifest.xml to get more detailed OPTMZ data");
            return;
        }
    }

    public final b a()
    {
        if (a == null)
        {
            return b.c;
        }
        NetworkInfo networkinfo = a.getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnected())
        {
            return b.d;
        } else
        {
            return b.a(networkinfo.getType());
        }
    }
}
