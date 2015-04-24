// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            he, ab, gx

public final class gk
{

    public final int uU;
    public final int uV;
    public final float uW;
    public final boolean wA;
    public final int wB;
    public final int wi;
    public final boolean wj;
    public final boolean wk;
    public final String wl;
    public final String wm;
    public final boolean wn = he.dJ();
    public final boolean wo;
    public final boolean wp;
    public final String wq;
    public final String wr;
    public final int ws;
    public final int wt;
    public final int wu;
    public final int wv;
    public final int ww;
    public final int wx;
    public final double wy;
    public final boolean wz;

    public gk(Context context)
    {
        boolean flag = true;
        super();
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        Locale locale = Locale.getDefault();
        PackageManager packagemanager = context.getPackageManager();
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        wi = audiomanager.getMode();
        boolean flag1;
        boolean flag2;
        if (a(packagemanager, "geo:0,0?q=donuts") != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        wj = flag1;
        if (a(packagemanager, "http://www.google.com") != null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        wk = flag2;
        wl = telephonymanager.getNetworkOperator();
        wm = locale.getCountry();
        wo = audiomanager.isMusicActive();
        wp = audiomanager.isSpeakerphoneOn();
        wq = locale.getLanguage();
        wr = a(packagemanager);
        ws = audiomanager.getStreamVolume(3);
        wt = a(context, connectivitymanager, packagemanager);
        wu = telephonymanager.getNetworkType();
        wv = telephonymanager.getPhoneType();
        ww = audiomanager.getRingerMode();
        wx = audiomanager.getStreamVolume(2);
        uW = displaymetrics.density;
        uU = displaymetrics.widthPixels;
        uV = displaymetrics.heightPixels;
        if (intent != null)
        {
            int i = intent.getIntExtra("status", -1);
            int j = intent.getIntExtra("level", -1);
            int k = intent.getIntExtra("scale", -1);
            wy = (float)j / (float)k;
            if (i != 2 && i != 5)
            {
                flag = false;
            }
            wz = flag;
        } else
        {
            wy = -1D;
            wz = false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            wA = connectivitymanager.isActiveNetworkMetered();
            if (connectivitymanager.getActiveNetworkInfo() != null)
            {
                wB = connectivitymanager.getActiveNetworkInfo().getDetailedState().ordinal();
                return;
            } else
            {
                wB = -1;
                return;
            }
        } else
        {
            wA = false;
            wB = -1;
            return;
        }
    }

    private static int a(Context context, ConnectivityManager connectivitymanager, PackageManager packagemanager)
    {
label0:
        {
            int i = -2;
            if (ab.aG().a(packagemanager, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
            {
                NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
                if (networkinfo == null)
                {
                    break label0;
                }
                i = networkinfo.getType();
            }
            return i;
        }
        return -1;
    }

    private static ResolveInfo a(PackageManager packagemanager, String s)
    {
        return packagemanager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)), 0x10000);
    }

    private static String a(PackageManager packagemanager)
    {
        ResolveInfo resolveinfo = a(packagemanager, "market://details?id=com.google.android.gms.ads");
        if (resolveinfo != null) goto _L2; else goto _L1
_L1:
        ActivityInfo activityinfo;
        return null;
_L2:
        if ((activityinfo = resolveinfo.activityInfo) == null) goto _L1; else goto _L3
_L3:
        PackageInfo packageinfo;
        String s;
        try
        {
            packageinfo = packagemanager.getPackageInfo(activityinfo.packageName, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        if (packageinfo == null) goto _L1; else goto _L4
_L4:
        s = (new StringBuilder()).append(packageinfo.versionCode).append(".").append(activityinfo.packageName).toString();
        return s;
    }
}
