// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.s;
import java.lang.reflect.Method;

public class ProviderInstaller
{
    public static interface ProviderInstallListener
    {

        public abstract void onProviderInstallFailed(int i, Intent intent);

        public abstract void onProviderInstalled();
    }


    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static Method axg = null;
    private static final Object mx = new Object();

    public ProviderInstaller()
    {
    }

    private static void U(Context context)
    {
        axg = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[] {
            android/content/Context
        });
    }

    public static void installIfNeeded(Context context)
    {
        Context context1;
        s.b(context, "Context must not be null");
        GooglePlayServicesUtil.B(context);
        context1 = GooglePlayServicesUtil.getRemoteContext(context);
        if (context1 == null)
        {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        JVM INSTR monitorenter ;
_L2:
        synchronized (mx)
        {
            if (axg == null)
            {
                U(context1);
            }
            axg.invoke(null, new Object[] {
                context1
            });
        }
        return;
        Exception exception1;
        exception1;
        Log.e("ProviderInstaller", (new StringBuilder()).append("Failed to install provider: ").append(exception1.getMessage()).toString());
        throw new GooglePlayServicesNotAvailableException(8);
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerinstalllistener)
    {
        s.b(context, "Context must not be null");
        s.b(providerinstalllistener, "Listener must not be null");
        s.bb("Must be called on the UI thread");
        (new AsyncTask(context, providerinstalllistener) {

            final ProviderInstallListener axh;
            final Context no;

            protected transient Integer c(Void avoid[])
            {
                try
                {
                    ProviderInstaller.installIfNeeded(no);
                }
                catch (GooglePlayServicesRepairableException googleplayservicesrepairableexception)
                {
                    return Integer.valueOf(googleplayservicesrepairableexception.getConnectionStatusCode());
                }
                catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
                {
                    return Integer.valueOf(googleplayservicesnotavailableexception.errorCode);
                }
                return Integer.valueOf(0);
            }

            protected void d(Integer integer)
            {
                if (integer.intValue() == 0)
                {
                    axh.onProviderInstalled();
                    return;
                } else
                {
                    Intent intent = GooglePlayServicesUtil.br(integer.intValue());
                    axh.onProviderInstallFailed(integer.intValue(), intent);
                    return;
                }
            }

            protected Object doInBackground(Object aobj[])
            {
                return c((Void[])aobj);
            }

            protected void onPostExecute(Object obj)
            {
                d((Integer)obj);
            }

            
            {
                no = context;
                axh = providerinstalllistener;
                super();
            }
        }).execute(new Void[0]);
    }

}
