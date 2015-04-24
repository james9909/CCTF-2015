// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

// Referenced classes of package com.google.android.gms.internal:
//            qw, qu, qt

public class rb extends g
{

    private static rb aDR;

    protected rb()
    {
        super("com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl");
    }

    public static qt a(Activity activity, c c, WalletFragmentOptions walletfragmentoptions, qu qu)
    {
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity);
        if (i != 0)
        {
            throw new GooglePlayServicesNotAvailableException(i);
        }
        qt qt;
        try
        {
            qt = ((qw)to().K(activity)).a(e.n(activity), c, walletfragmentoptions, qu);
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
        catch (com.google.android.gms.dynamic.g.a a1)
        {
            throw new RuntimeException(a1);
        }
        return qt;
    }

    private static rb to()
    {
        if (aDR == null)
        {
            aDR = new rb();
        }
        return aDR;
    }

    protected qw cE(IBinder ibinder)
    {
        return qw.a.cA(ibinder);
    }

    protected Object d(IBinder ibinder)
    {
        return cE(ibinder);
    }
}
