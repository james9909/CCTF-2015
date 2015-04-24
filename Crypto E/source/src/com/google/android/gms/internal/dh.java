// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf, av, dg, di, 
//            ay, df

public final class dh extends de.a
{

    private final MediationAdapter rv;

    public dh(MediationAdapter mediationadapter)
    {
        rv = mediationadapter;
    }

    private Bundle a(String s, int i, String s1)
    {
        Bundle bundle;
        Bundle bundle1;
        hf.X((new StringBuilder()).append("Server parameters: ").append(s).toString());
        JSONObject jsonobject;
        Iterator iterator;
        String s2;
        try
        {
            bundle = new Bundle();
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not get Server Parameters Bundle.", throwable);
            throw new RemoteException();
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        jsonobject = new JSONObject(s);
        bundle1 = new Bundle();
        for (iterator = jsonobject.keys(); iterator.hasNext(); bundle1.putString(s2, jsonobject.getString(s2)))
        {
            s2 = (String)iterator.next();
        }

        bundle = bundle1;
        if (rv instanceof AdMobAdapter)
        {
            bundle.putString("adJson", s1);
            bundle.putInt("tagForChildDirectedTreatment", i);
        }
        return bundle;
    }

    public void a(d d, av av1, String s, df df)
    {
        a(d, av1, s, null, df);
    }

    public void a(d d, av av1, String s, String s1, df df)
    {
        if (!(rv instanceof MediationInterstitialAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(rv.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        hf.T("Requesting interstitial ad from adapter.");
        MediationInterstitialAdapter mediationinterstitialadapter = (MediationInterstitialAdapter)rv;
        if (av1.op == null) goto _L2; else goto _L1
_L1:
        HashSet hashset = new HashSet(av1.op);
_L5:
        dg dg1 = new dg(new Date(av1.on), av1.oo, hashset, av1.ov, av1.oq, av1.or);
        if (av1.ox == null) goto _L4; else goto _L3
_L3:
        Bundle bundle = av1.ox.getBundle(mediationinterstitialadapter.getClass().getName());
_L6:
        mediationinterstitialadapter.requestInterstitialAd((Context)e.f(d), new di(df), a(s, av1.or, s1), dg1, bundle);
        return;
_L2:
        hashset = null;
          goto _L5
_L4:
        bundle = null;
          goto _L6
        Throwable throwable;
        throwable;
        com.google.android.gms.internal.hf.d("Could not request interstitial ad from adapter.", throwable);
        throw new RemoteException();
          goto _L5
    }

    public void a(d d, ay ay1, av av1, String s, df df)
    {
        a(d, ay1, av1, s, null, df);
    }

    public void a(d d, ay ay1, av av1, String s, String s1, df df)
    {
        if (!(rv instanceof MediationBannerAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(rv.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        hf.T("Requesting banner ad from adapter.");
        MediationBannerAdapter mediationbanneradapter;
        HashSet hashset;
        mediationbanneradapter = (MediationBannerAdapter)rv;
        if (av1.op == null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        hashset = new HashSet(av1.op);
_L1:
        dg dg1;
        Bundle bundle;
        dg1 = new dg(new Date(av1.on), av1.oo, hashset, av1.ov, av1.oq, av1.or);
        bundle = av1.ox;
        Bundle bundle1;
        bundle1 = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        bundle1 = av1.ox.getBundle(mediationbanneradapter.getClass().getName());
        mediationbanneradapter.requestBannerAd((Context)e.f(d), new di(df), a(s, av1.or, s1), com.google.android.gms.ads.a.a(ay1.width, ay1.height, ay1.oz), dg1, bundle1);
        return;
        hashset = null;
          goto _L1
        Throwable throwable;
        throwable;
        com.google.android.gms.internal.hf.d("Could not request banner ad from adapter.", throwable);
        throw new RemoteException();
    }

    public void destroy()
    {
        try
        {
            rv.onDestroy();
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
        if (!(rv instanceof MediationBannerAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(rv.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        d d;
        try
        {
            d = e.n(((MediationBannerAdapter)rv).getBannerView());
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
        try
        {
            rv.onPause();
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not pause adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void resume()
    {
        try
        {
            rv.onResume();
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not resume adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void showInterstitial()
    {
        if (!(rv instanceof MediationInterstitialAdapter))
        {
            hf.X((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(rv.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        hf.T("Showing interstitial from adapter.");
        try
        {
            ((MediationInterstitialAdapter)rv).showInterstitial();
            return;
        }
        catch (Throwable throwable)
        {
            com.google.android.gms.internal.hf.d("Could not show interstitial from adapter.", throwable);
        }
        throw new RemoteException();
    }
}
