// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.identity.intents.UserAddressRequest;

// Referenced classes of package com.google.android.gms.internal:
//            nr

public class np extends h
{
    public static final class a extends nq.a
    {

        private final int TO;
        private Activity nL;

        static void a(a a1, Activity activity)
        {
            a1.setActivity(activity);
        }

        private void setActivity(Activity activity)
        {
            nL = activity;
        }

        public void g(int i, Bundle bundle)
        {
            if (i != 1) goto _L2; else goto _L1
_L1:
            PendingIntent pendingintent;
            Intent intent = new Intent();
            intent.putExtras(bundle);
            pendingintent = nL.createPendingResult(TO, intent, 0x40000000);
            if (pendingintent != null) goto _L4; else goto _L3
_L3:
            return;
_L4:
            try
            {
                pendingintent.send(1);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("AddressClientImpl", "Exception settng pending result", canceledexception);
            }
            return;
_L2:
            PendingIntent pendingintent1 = null;
            if (bundle != null)
            {
                pendingintent1 = (PendingIntent)bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionresult = new ConnectionResult(i, pendingintent1);
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(nL, TO);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("AddressClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            PendingIntent pendingintent2 = nL.createPendingResult(TO, new Intent(), 0x40000000);
            if (pendingintent2 != null)
            {
                try
                {
                    pendingintent2.send(1);
                    return;
                }
                catch (android.app.PendingIntent.CanceledException canceledexception1)
                {
                    Log.w("AddressClientImpl", "Exception setting pending result", canceledexception1);
                }
                return;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public a(int i, Activity activity)
        {
            TO = i;
            nL = activity;
        }
    }


    private final String Fm;
    private a amY;
    private final int mTheme;
    private Activity nL;

    public np(Activity activity, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s, int i)
    {
        super(activity, looper, connectioncallbacks, onconnectionfailedlistener, new String[0]);
        Fm = s;
        nL = activity;
        mTheme = i;
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        p1.d(e, 0x640578, getContext().getPackageName());
    }

    public void a(UserAddressRequest useraddressrequest, int i)
    {
        pn();
        amY = new a(i, nL);
        try
        {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
            if (!TextUtils.isEmpty(Fm))
            {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(Fm, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", mTheme);
            pm().a(amY, useraddressrequest, bundle);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("AddressClientImpl", "Exception requesting user address", remoteexception);
        }
        Bundle bundle1 = new Bundle();
        bundle1.putInt("com.google.android.gms.identity.intents.EXTRA_ERROR_CODE", 555);
        amY.g(1, bundle1);
    }

    protected nr bq(IBinder ibinder)
    {
        return nr.a.bs(ibinder);
    }

    public void disconnect()
    {
        super.disconnect();
        if (amY != null)
        {
            a.a(amY, null);
            amY = null;
        }
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.identity.service.BIND";
    }

    protected IInterface l(IBinder ibinder)
    {
        return bq(ibinder);
    }

    protected nr pm()
    {
        return (nr)super.jG();
    }

    protected void pn()
    {
        super.eb();
    }
}
