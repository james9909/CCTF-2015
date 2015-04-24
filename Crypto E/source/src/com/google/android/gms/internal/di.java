// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.internal:
//            hf, df

public final class di
    implements MediationBannerListener, MediationInterstitialListener
{

    private final df rw;

    public di(df df1)
    {
        rw = df1;
    }

    public void onAdClicked(MediationBannerAdapter mediationbanneradapter)
    {
        s.bb("onAdClicked must be called on the main UI thread.");
        hf.T("Adapter called onAdClicked.");
        try
        {
            rw.onAdClicked();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdClicked.", remoteexception);
        }
    }

    public void onAdClicked(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        s.bb("onAdClicked must be called on the main UI thread.");
        hf.T("Adapter called onAdClicked.");
        try
        {
            rw.onAdClicked();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdClicked.", remoteexception);
        }
    }

    public void onAdClosed(MediationBannerAdapter mediationbanneradapter)
    {
        s.bb("onAdClosed must be called on the main UI thread.");
        hf.T("Adapter called onAdClosed.");
        try
        {
            rw.onAdClosed();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdClosed.", remoteexception);
        }
    }

    public void onAdClosed(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        s.bb("onAdClosed must be called on the main UI thread.");
        hf.T("Adapter called onAdClosed.");
        try
        {
            rw.onAdClosed();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdClosed.", remoteexception);
        }
    }

    public void onAdFailedToLoad(MediationBannerAdapter mediationbanneradapter, int i)
    {
        s.bb("onAdFailedToLoad must be called on the main UI thread.");
        hf.T((new StringBuilder()).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try
        {
            rw.onAdFailedToLoad(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onAdFailedToLoad(MediationInterstitialAdapter mediationinterstitialadapter, int i)
    {
        s.bb("onAdFailedToLoad must be called on the main UI thread.");
        hf.T((new StringBuilder()).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try
        {
            rw.onAdFailedToLoad(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onAdLeftApplication(MediationBannerAdapter mediationbanneradapter)
    {
        s.bb("onAdLeftApplication must be called on the main UI thread.");
        hf.T("Adapter called onAdLeftApplication.");
        try
        {
            rw.onAdLeftApplication();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdLeftApplication.", remoteexception);
        }
    }

    public void onAdLeftApplication(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        s.bb("onAdLeftApplication must be called on the main UI thread.");
        hf.T("Adapter called onAdLeftApplication.");
        try
        {
            rw.onAdLeftApplication();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdLeftApplication.", remoteexception);
        }
    }

    public void onAdLoaded(MediationBannerAdapter mediationbanneradapter)
    {
        s.bb("onAdLoaded must be called on the main UI thread.");
        hf.T("Adapter called onAdLoaded.");
        try
        {
            rw.onAdLoaded();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdLoaded.", remoteexception);
        }
    }

    public void onAdLoaded(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        s.bb("onAdLoaded must be called on the main UI thread.");
        hf.T("Adapter called onAdLoaded.");
        try
        {
            rw.onAdLoaded();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdLoaded.", remoteexception);
        }
    }

    public void onAdOpened(MediationBannerAdapter mediationbanneradapter)
    {
        s.bb("onAdOpened must be called on the main UI thread.");
        hf.T("Adapter called onAdOpened.");
        try
        {
            rw.onAdOpened();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdOpened.", remoteexception);
        }
    }

    public void onAdOpened(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        s.bb("onAdOpened must be called on the main UI thread.");
        hf.T("Adapter called onAdOpened.");
        try
        {
            rw.onAdOpened();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdOpened.", remoteexception);
        }
    }
}
