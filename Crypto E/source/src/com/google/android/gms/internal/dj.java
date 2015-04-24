// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf, dk, av, dl, 
//            df, ay

public final class dj extends de.a
{

    private final MediationAdapter rx;
    private final NetworkExtras ry;

    public dj(MediationAdapter mediationadapter, NetworkExtras networkextras)
    {
        rx = mediationadapter;
        ry = networkextras;
    }

    private MediationServerParameters b(String s, int i, String s1)
    {
        HashMap hashmap;
        if (s != null)
        {
            try
            {
                JSONObject jsonobject = new JSONObject(s);
                hashmap = new HashMap(jsonobject.length());
                String s2;
                for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashmap.put(s2, jsonobject.getString(s2)))
                {
                    s2 = (String)iterator.next();
                }

            }
            catch (Throwable throwable)
            {
                com.google.android.gms.internal.hf.d("Could not get MediationServerParameters.", throwable);
                throw new RemoteException();
            }
            break MISSING_BLOCK_LABEL_104;
        }
        hashmap = new HashMap(0);
        Class class1 = rx.c();
        MediationServerParameters mediationserverparameters;
        mediationserverparameters = null;
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        mediationserverparameters = (MediationServerParameters)class1.newInstance();
        mediationserverparameters.a(hashmap);
        return mediationserverparameters;
    }

    public void a(d d, av av1, String s, df df)
    {
        a(d, av1, s, null, df);
    }

    public void a(d d, av av1, String s, String s1, df df)
    {
        if (!(rx instanceof MediationInterstitialAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(rx.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        hf.T("Requesting interstitial ad from adapter.");
        try
        {
            ((MediationInterstitialAdapter)rx).a(new dk(df), (Activity)e.f(d), b(s, av1.or, s1), com.google.android.gms.internal.dl.d(av1), ry);
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not request interstitial ad from adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void a(d d, ay ay, av av1, String s, df df)
    {
        a(d, ay, av1, s, null, df);
    }

    public void a(d d, ay ay, av av1, String s, String s1, df df)
    {
        if (!(rx instanceof MediationBannerAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(rx.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        hf.T("Requesting banner ad from adapter.");
        try
        {
            ((MediationBannerAdapter)rx).a(new dk(df), (Activity)e.f(d), b(s, av1.or, s1), dl.b(ay), com.google.android.gms.internal.dl.d(av1), ry);
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not request banner ad from adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void destroy()
    {
        try
        {
            rx.a();
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not destroy adapter.", throwable);
        }
        throw new RemoteException();
    }

    public d getView()
    {
        if (!(rx instanceof MediationBannerAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(rx.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        d d;
        try
        {
            d = e.n(((MediationBannerAdapter)rx).d());
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not get banner view from adapter.", throwable);
            throw new RemoteException();
        }
        return d;
    }

    public void pause()
    {
        throw new RemoteException();
    }

    public void resume()
    {
        throw new RemoteException();
    }

    public void showInterstitial()
    {
        if (!(rx instanceof MediationInterstitialAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(rx.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        hf.T("Showing interstitial from adapter.");
        try
        {
            ((MediationInterstitialAdapter)rx).e();
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not show interstitial from adapter.", throwable);
        }
        throw new RemoteException();
    }
}
