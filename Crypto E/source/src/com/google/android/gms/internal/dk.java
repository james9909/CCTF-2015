// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;

// Referenced classes of package com.google.android.gms.internal:
//            hf, he, df, dl

public final class dk
    implements MediationBannerListener, MediationInterstitialListener
{

    private final df rw;

    public dk(df df1)
    {
        rw = df1;
    }

    static df a(dk dk1)
    {
        return dk1.rw;
    }

    public void onClick(MediationBannerAdapter mediationbanneradapter)
    {
        hf.T("Adapter called onClick.");
        if (!he.dK())
        {
            hf.X("onClick must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdClicked();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdClicked.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onDismissScreen(MediationBannerAdapter mediationbanneradapter)
    {
        hf.T("Adapter called onDismissScreen.");
        if (!he.dK())
        {
            hf.X("onDismissScreen must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdClosed();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdClosed.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onDismissScreen(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hf.T("Adapter called onDismissScreen.");
        if (!he.dK())
        {
            hf.X("onDismissScreen must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdClosed();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdClosed.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onFailedToReceiveAd(MediationBannerAdapter mediationbanneradapter, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        hf.T((new StringBuilder()).append("Adapter called onFailedToReceiveAd with error. ").append(errorcode).toString());
        if (!he.dK())
        {
            hf.X("onFailedToReceiveAd must be called on the main UI thread.");
            he.xO.post(new Runnable(errorcode) {

                final com.google.ads.AdRequest.ErrorCode rA;
                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdFailedToLoad(dl.a(rA));
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdFailedToLoad.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                rA = errorcode;
                super();
            }
            });
            return;
        }
        try
        {
            rw.onAdFailedToLoad(dl.a(errorcode));
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onFailedToReceiveAd(MediationInterstitialAdapter mediationinterstitialadapter, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        hf.T((new StringBuilder()).append("Adapter called onFailedToReceiveAd with error ").append(errorcode).append(".").toString());
        if (!he.dK())
        {
            hf.X("onFailedToReceiveAd must be called on the main UI thread.");
            he.xO.post(new Runnable(errorcode) {

                final com.google.ads.AdRequest.ErrorCode rA;
                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdFailedToLoad(dl.a(rA));
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdFailedToLoad.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                rA = errorcode;
                super();
            }
            });
            return;
        }
        try
        {
            rw.onAdFailedToLoad(dl.a(errorcode));
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onLeaveApplication(MediationBannerAdapter mediationbanneradapter)
    {
        hf.T("Adapter called onLeaveApplication.");
        if (!he.dK())
        {
            hf.X("onLeaveApplication must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdLeftApplication();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdLeftApplication.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onLeaveApplication(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hf.T("Adapter called onLeaveApplication.");
        if (!he.dK())
        {
            hf.X("onLeaveApplication must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdLeftApplication();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdLeftApplication.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onPresentScreen(MediationBannerAdapter mediationbanneradapter)
    {
        hf.T("Adapter called onPresentScreen.");
        if (!he.dK())
        {
            hf.X("onPresentScreen must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdOpened();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdOpened.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onPresentScreen(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hf.T("Adapter called onPresentScreen.");
        if (!he.dK())
        {
            hf.X("onPresentScreen must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdOpened();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdOpened.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onReceivedAd(MediationBannerAdapter mediationbanneradapter)
    {
        hf.T("Adapter called onReceivedAd.");
        if (!he.dK())
        {
            hf.X("onReceivedAd must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdLoaded();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdLoaded.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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

    public void onReceivedAd(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hf.T("Adapter called onReceivedAd.");
        if (!he.dK())
        {
            hf.X("onReceivedAd must be called on the main UI thread.");
            he.xO.post(new Runnable() {

                final dk rz;

                public void run()
                {
                    try
                    {
                        dk.a(rz).onAdLoaded();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        hf.d("Could not call onAdLoaded.", remoteexception1);
                    }
                }

            
            {
                rz = dk.this;
                super();
            }
            });
            return;
        }
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
}
