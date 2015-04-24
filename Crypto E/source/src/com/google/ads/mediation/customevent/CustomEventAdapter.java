// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.internal.hf;

// Referenced classes of package com.google.ads.mediation.customevent:
//            CustomEventBanner, CustomEventInterstitial, CustomEventServerParameters, CustomEventBannerListener, 
//            CustomEventInterstitialListener

public final class CustomEventAdapter
    implements MediationBannerAdapter, MediationInterstitialAdapter
{
    static final class a
        implements CustomEventBannerListener
    {

        private final CustomEventAdapter a;
        private final MediationBannerListener b;

        public a(CustomEventAdapter customeventadapter, MediationBannerListener mediationbannerlistener)
        {
            a = customeventadapter;
            b = mediationbannerlistener;
        }
    }

    class b
        implements CustomEventInterstitialListener
    {

        final CustomEventAdapter a;
        private final CustomEventAdapter b;
        private final MediationInterstitialListener c;

        public b(CustomEventAdapter customeventadapter1, MediationInterstitialListener mediationinterstitiallistener)
        {
            a = CustomEventAdapter.this;
            super();
            b = customeventadapter1;
            c = mediationinterstitiallistener;
        }
    }


    private View a;
    private CustomEventBanner b;
    private CustomEventInterstitial c;

    public CustomEventAdapter()
    {
    }

    private static Object a(String s)
    {
        Object obj;
        try
        {
            obj = Class.forName(s).newInstance();
        }
        catch (Throwable throwable)
        {
            hf.X((new StringBuilder()).append("Could not instantiate custom event adapter: ").append(s).append(". ").append(throwable.getMessage()).toString());
            return null;
        }
        return obj;
    }

    public void a()
    {
        if (b != null)
        {
            b.a();
        }
        if (c != null)
        {
            c.a();
        }
    }

    public volatile void a(MediationBannerListener mediationbannerlistener, Activity activity, MediationServerParameters mediationserverparameters, AdSize adsize, MediationAdRequest mediationadrequest, NetworkExtras networkextras)
    {
        a(mediationbannerlistener, activity, (CustomEventServerParameters)mediationserverparameters, adsize, mediationadrequest, (CustomEventExtras)networkextras);
    }

    public void a(MediationBannerListener mediationbannerlistener, Activity activity, CustomEventServerParameters customeventserverparameters, AdSize adsize, MediationAdRequest mediationadrequest, CustomEventExtras customeventextras)
    {
        b = (CustomEventBanner)a(customeventserverparameters.b);
        if (b == null)
        {
            mediationbannerlistener.onFailedToReceiveAd(this, com.google.ads.AdRequest.ErrorCode.d);
            return;
        }
        Object obj;
        if (customeventextras == null)
        {
            obj = null;
        } else
        {
            obj = customeventextras.getExtra(customeventserverparameters.a);
        }
        b.a(new a(this, mediationbannerlistener), activity, customeventserverparameters.a, customeventserverparameters.c, adsize, mediationadrequest, obj);
    }

    public volatile void a(MediationInterstitialListener mediationinterstitiallistener, Activity activity, MediationServerParameters mediationserverparameters, MediationAdRequest mediationadrequest, NetworkExtras networkextras)
    {
        a(mediationinterstitiallistener, activity, (CustomEventServerParameters)mediationserverparameters, mediationadrequest, (CustomEventExtras)networkextras);
    }

    public void a(MediationInterstitialListener mediationinterstitiallistener, Activity activity, CustomEventServerParameters customeventserverparameters, MediationAdRequest mediationadrequest, CustomEventExtras customeventextras)
    {
        c = (CustomEventInterstitial)a(customeventserverparameters.b);
        if (c == null)
        {
            mediationinterstitiallistener.onFailedToReceiveAd(this, com.google.ads.AdRequest.ErrorCode.d);
            return;
        }
        Object obj;
        if (customeventextras == null)
        {
            obj = null;
        } else
        {
            obj = customeventextras.getExtra(customeventserverparameters.a);
        }
        c.a(new b(this, mediationinterstitiallistener), activity, customeventserverparameters.a, customeventserverparameters.c, mediationadrequest, obj);
    }

    public Class b()
    {
        return com/google/android/gms/ads/mediation/customevent/CustomEventExtras;
    }

    public Class c()
    {
        return com/google/ads/mediation/customevent/CustomEventServerParameters;
    }

    public View d()
    {
        return a;
    }

    public void e()
    {
        c.b();
    }
}
