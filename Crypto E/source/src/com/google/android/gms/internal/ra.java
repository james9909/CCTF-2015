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
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;

// Referenced classes of package com.google.android.gms.internal:
//            qv, qr

public class ra extends h
{
    static class a extends qy.a
    {

        public void a(int j, FullWallet fullwallet, Bundle bundle)
        {
        }

        public void a(int j, MaskedWallet maskedwallet, Bundle bundle)
        {
        }

        public void a(int j, boolean flag, Bundle bundle)
        {
        }

        public void a(Status status, qr qr, Bundle bundle)
        {
        }

        public void i(int j, Bundle bundle)
        {
        }

        private a()
        {
        }

    }

    final class b extends a
    {

        private final int TO;
        final ra aDQ;

        public void a(int j, FullWallet fullwallet, Bundle bundle)
        {
            PendingIntent pendingintent = null;
            if (bundle != null)
            {
                pendingintent = (PendingIntent)bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionresult = new ConnectionResult(j, pendingintent);
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(ra.b(aDQ), TO);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("WalletClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            Intent intent = new Intent();
            byte byte0;
            PendingIntent pendingintent1;
            if (connectionresult.isSuccess())
            {
                byte0 = -1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_FULL_WALLET", fullwallet);
            } else
            {
                if (j == 408)
                {
                    byte0 = 0;
                } else
                {
                    byte0 = 1;
                }
                intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", j);
            }
            pendingintent1 = ra.b(aDQ).createPendingResult(TO, intent, 0x40000000);
            if (pendingintent1 == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onFullWalletLoaded");
                return;
            }
            try
            {
                pendingintent1.send(byte0);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public void a(int j, MaskedWallet maskedwallet, Bundle bundle)
        {
            PendingIntent pendingintent = null;
            if (bundle != null)
            {
                pendingintent = (PendingIntent)bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionresult = new ConnectionResult(j, pendingintent);
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(ra.b(aDQ), TO);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("WalletClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            Intent intent = new Intent();
            byte byte0;
            PendingIntent pendingintent1;
            if (connectionresult.isSuccess())
            {
                byte0 = -1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET", maskedwallet);
            } else
            {
                if (j == 408)
                {
                    byte0 = 0;
                } else
                {
                    byte0 = 1;
                }
                intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", j);
            }
            pendingintent1 = ra.b(aDQ).createPendingResult(TO, intent, 0x40000000);
            if (pendingintent1 == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onMaskedWalletLoaded");
                return;
            }
            try
            {
                pendingintent1.send(byte0);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public void a(int j, boolean flag, Bundle bundle)
        {
            Intent intent = new Intent();
            intent.putExtra("com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED", flag);
            PendingIntent pendingintent = ra.b(aDQ).createPendingResult(TO, intent, 0x40000000);
            if (pendingintent == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onPreAuthorizationDetermined");
                return;
            }
            try
            {
                pendingintent.send(-1);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public void i(int j, Bundle bundle)
        {
            s.b(bundle, "Bundle should not be null");
            ConnectionResult connectionresult = new ConnectionResult(j, (PendingIntent)bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT"));
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(ra.b(aDQ), TO);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("WalletClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            Log.e("WalletClientImpl", (new StringBuilder()).append("Create Wallet Objects confirmation UI will not be shown connection result: ").append(connectionresult).toString());
            Intent intent = new Intent();
            intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", 413);
            PendingIntent pendingintent = ra.b(aDQ).createPendingResult(TO, intent, 0x40000000);
            if (pendingintent == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onWalletObjectsCreated");
                return;
            }
            try
            {
                pendingintent.send(1);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public b(int j)
        {
            aDQ = ra.this;
            super();
            TO = j;
        }
    }


    private final String Fm;
    private final int aDf;
    private final int mTheme;
    private final Activity nL;

    public ra(Activity activity, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, int i, String s, int j)
    {
        super(activity, looper, connectioncallbacks, onconnectionfailedlistener, new String[0]);
        nL = activity;
        aDf = i;
        Fm = s;
        mTheme = j;
    }

    public static Bundle a(int i, String s, String s1, int j)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("com.google.android.gms.wallet.EXTRA_ENVIRONMENT", i);
        bundle.putString("androidPackageName", s);
        if (!TextUtils.isEmpty(s1))
        {
            bundle.putParcelable("com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT", new Account(s1, "com.google"));
        }
        bundle.putInt("com.google.android.gms.wallet.EXTRA_THEME", j);
        return bundle;
    }

    static Activity b(ra ra1)
    {
        return ra1.nL;
    }

    private Bundle tn()
    {
        return a(aDf, nL.getPackageName(), Fm, mTheme);
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e1)
    {
        p1.k(e1, 0x640578, getContext().getPackageName());
    }

    public void a(FullWalletRequest fullwalletrequest, int i)
    {
        b b1 = new b(i);
        Bundle bundle = tn();
        try
        {
            ((qv)jG()).a(fullwalletrequest, bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException getting full wallet", remoteexception);
        }
        b1.a(8, null, Bundle.EMPTY);
    }

    public void a(MaskedWalletRequest maskedwalletrequest, int i)
    {
        Bundle bundle = tn();
        b b1 = new b(i);
        try
        {
            ((qv)jG()).a(maskedwalletrequest, bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException getting masked wallet", remoteexception);
        }
        b1.a(8, null, Bundle.EMPTY);
    }

    public void a(NotifyTransactionStatusRequest notifytransactionstatusrequest)
    {
        Bundle bundle = tn();
        try
        {
            ((qv)jG()).a(notifytransactionstatusrequest, bundle);
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    protected qv cD(IBinder ibinder)
    {
        return qv.a.cz(ibinder);
    }

    public void e(String s, String s1, int i)
    {
        Bundle bundle = tn();
        b b1 = new b(i);
        try
        {
            ((qv)jG()).a(s, s1, bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException changing masked wallet", remoteexception);
        }
        b1.a(8, null, Bundle.EMPTY);
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.wallet.internal.IOwService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.wallet.service.BIND";
    }

    public void hq(int i)
    {
        Bundle bundle = tn();
        b b1 = new b(i);
        try
        {
            ((qv)jG()).a(bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException during checkForPreAuthorization", remoteexception);
        }
        b1.a(8, false, Bundle.EMPTY);
    }

    protected IInterface l(IBinder ibinder)
    {
        return cD(ibinder);
    }
}
