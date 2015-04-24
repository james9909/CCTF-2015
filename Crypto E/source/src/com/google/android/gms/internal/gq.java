// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            hf, av

public class gq
{

    private final Object mL = new Object();
    private final String wY;
    private int xj;
    private long xk;
    private long xl;
    private int xm;
    private int xn;

    public gq(String s)
    {
        xj = 0;
        xk = -1L;
        xl = -1L;
        xm = 0;
        xn = -1;
        wY = s;
    }

    public static boolean n(Context context)
    {
        int i;
        ComponentName componentname;
        i = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (i == 0)
        {
            hf.V("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        componentname = new ComponentName(context.getPackageName(), "com.google.android.gms.ads.AdActivity");
        if (i == context.getPackageManager().getActivityInfo(componentname, 0).theme)
        {
            return true;
        }
        try
        {
            hf.V("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            hf.X("Fail to fetch AdActivity theme");
            hf.V("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        return false;
    }

    public Bundle b(Context context, String s)
    {
        Bundle bundle;
        synchronized (mL)
        {
            bundle = new Bundle();
            bundle.putString("session_id", wY);
            bundle.putLong("basets", xl);
            bundle.putLong("currts", xk);
            bundle.putString("seq_num", s);
            bundle.putInt("preqs", xn);
            bundle.putInt("pclick", xj);
            bundle.putInt("pimp", xm);
            bundle.putBoolean("support_transparent_background", n(context));
        }
        return bundle;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(av av1, long l)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (xl != -1L)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        xl = l;
        xk = xl;
_L2:
        if (av1.extras == null || av1.extras.getInt("gw", 2) != 1)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        return;
        xk = l;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        xn = 1 + xn;
        obj;
        JVM INSTR monitorexit ;
    }

    public void df()
    {
        synchronized (mL)
        {
            xm = 1 + xm;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void dg()
    {
        synchronized (mL)
        {
            xj = 1 + xj;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public long dy()
    {
        return xl;
    }
}
