// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.s;
import java.io.IOException;

public final class AdvertisingIdClient
{
    public static final class Info
    {

        private final String lq;
        private final boolean lr;

        public String getId()
        {
            return lq;
        }

        public boolean isLimitAdTrackingEnabled()
        {
            return lr;
        }

        public String toString()
        {
            return (new StringBuilder()).append("{").append(lq).append("}").append(lr).toString();
        }

        public Info(String s1, boolean flag)
        {
            lq = s1;
            lr = flag;
        }
    }


    a ln;
    com.google.android.gms.internal.s lo;
    boolean lp;
    Context mContext;

    public AdvertisingIdClient(Context context)
    {
        s.l(context);
        mContext = context;
        lp = false;
    }

    static com.google.android.gms.internal.s a(Context context, a a1)
    {
        com.google.android.gms.internal.s s1;
        try
        {
            s1 = com.google.android.gms.internal.s.a.b(a1.iI());
        }
        catch (InterruptedException interruptedexception)
        {
            throw new IOException("Interrupted exception");
        }
        return s1;
    }

    public static Info getAdvertisingIdInfo(Context context)
    {
        AdvertisingIdClient advertisingidclient = new AdvertisingIdClient(context);
        Info info;
        advertisingidclient.start();
        info = advertisingidclient.getInfo();
        advertisingidclient.finish();
        return info;
        Exception exception;
        exception;
        advertisingidclient.finish();
        throw exception;
    }

    static a h(Context context)
    {
        a a1;
        Intent intent;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new GooglePlayServicesNotAvailableException(9);
        }
        try
        {
            GooglePlayServicesUtil.B(context);
        }
        catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
        {
            throw new IOException(googleplayservicesnotavailableexception);
        }
        a1 = new a();
        intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, a1, 1))
        {
            return a1;
        } else
        {
            throw new IOException("Connection failure");
        }
    }

    public void finish()
    {
        s.bc("Calling this from your main thread can lead to deadlock");
        if (mContext == null || ln == null)
        {
            return;
        }
        try
        {
            if (lp)
            {
                mContext.unbindService(ln);
            }
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", illegalargumentexception);
        }
        lp = false;
        lo = null;
        ln = null;
        mContext = null;
    }

    public Info getInfo()
    {
        s.bc("Calling this from your main thread can lead to deadlock");
        s.l(ln);
        s.l(lo);
        if (!lp)
        {
            throw new IOException("AdvertisingIdService is not connected.");
        }
        Info info;
        try
        {
            info = new Info(lo.getId(), lo.b(true));
        }
        catch (RemoteException remoteexception)
        {
            Log.i("AdvertisingIdClient", "GMS remote exception ", remoteexception);
            throw new IOException("Remote exception");
        }
        return info;
    }

    public void start()
    {
        s.bc("Calling this from your main thread can lead to deadlock");
        if (lp)
        {
            finish();
        }
        ln = h(mContext);
        lo = a(mContext, ln);
        lp = true;
    }
}
