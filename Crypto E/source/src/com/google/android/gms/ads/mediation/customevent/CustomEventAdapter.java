// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.hf;

// Referenced classes of package com.google.android.gms.ads.mediation.customevent:
//            CustomEventBanner, CustomEventInterstitial, CustomEventBannerListener, CustomEventInterstitialListener

public final class CustomEventAdapter
    implements MediationBannerAdapter, MediationInterstitialAdapter
{
    static final class a
        implements CustomEventBannerListener
    {

        private final MediationBannerListener l;
        private final CustomEventAdapter yz;

        public void onAdClicked()
        {
            hf.T("Custom event adapter called onAdClicked.");
            l.onAdClicked(yz);
        }

        public void onAdClosed()
        {
            hf.T("Custom event adapter called onAdClosed.");
            l.onAdClosed(yz);
        }

        public void onAdFailedToLoad(int i)
        {
            hf.T("Custom event adapter called onAdFailedToLoad.");
            l.onAdFailedToLoad(yz, i);
        }

        public void onAdLeftApplication()
        {
            hf.T("Custom event adapter called onAdLeftApplication.");
            l.onAdLeftApplication(yz);
        }

        public void onAdLoaded(View view)
        {
            hf.T("Custom event adapter called onAdLoaded.");
            CustomEventAdapter.a(yz, view);
            l.onAdLoaded(yz);
        }

        public void onAdOpened()
        {
            hf.T("Custom event adapter called onAdOpened.");
            l.onAdOpened(yz);
        }

        public a(CustomEventAdapter customeventadapter, MediationBannerListener mediationbannerlistener)
        {
            yz = customeventadapter;
            l = mediationbannerlistener;
        }
    }

    class b
        implements CustomEventInterstitialListener
    {

        private final MediationInterstitialListener m;
        final CustomEventAdapter yA;
        private final CustomEventAdapter yz;

        public void onAdClicked()
        {
            hf.T("Custom event adapter called onAdClicked.");
            m.onAdClicked(yz);
        }

        public void onAdClosed()
        {
            hf.T("Custom event adapter called onAdClosed.");
            m.onAdClosed(yz);
        }

        public void onAdFailedToLoad(int i)
        {
            hf.T("Custom event adapter called onFailedToReceiveAd.");
            m.onAdFailedToLoad(yz, i);
        }

        public void onAdLeftApplication()
        {
            hf.T("Custom event adapter called onAdLeftApplication.");
            m.onAdLeftApplication(yz);
        }

        public void onAdLoaded()
        {
            hf.T("Custom event adapter called onReceivedAd.");
            m.onAdLoaded(yA);
        }

        public void onAdOpened()
        {
            hf.T("Custom event adapter called onAdOpened.");
            m.onAdOpened(yz);
        }

        public b(CustomEventAdapter customeventadapter1, MediationInterstitialListener mediationinterstitiallistener)
        {
            yA = CustomEventAdapter.this;
            super();
            yz = customeventadapter1;
            m = mediationinterstitiallistener;
        }
    }


    private View n;
    private CustomEventBanner yx;
    private CustomEventInterstitial yy;

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

    private void a(View view)
    {
        n = view;
    }

    static void a(CustomEventAdapter customeventadapter, View view)
    {
        customeventadapter.a(view);
    }

    public View getBannerView()
    {
        return n;
    }

    public void onDestroy()
    {
        if (yx != null)
        {
            yx.onDestroy();
        }
        if (yy != null)
        {
            yy.onDestroy();
        }
    }

    public void onPause()
    {
        if (yx != null)
        {
            yx.onPause();
        }
        if (yy != null)
        {
            yy.onPause();
        }
    }

    public void onResume()
    {
        if (yx != null)
        {
            yx.onResume();
        }
        if (yy != null)
        {
            yy.onResume();
        }
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationbannerlistener, Bundle bundle, AdSize adsize, MediationAdRequest mediationadrequest, Bundle bundle1)
    {
        yx = (CustomEventBanner)a(bundle.getString("class_name"));
        if (yx == null)
        {
            mediationbannerlistener.onAdFailedToLoad(this, 0);
            return;
        }
        Bundle bundle2;
        if (bundle1 == null)
        {
            bundle2 = null;
        } else
        {
            bundle2 = bundle1.getBundle(bundle.getString("class_name"));
        }
        yx.requestBannerAd(context, new a(this, mediationbannerlistener), bundle.getString("parameter"), adsize, mediationadrequest, bundle2);
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationinterstitiallistener, Bundle bundle, MediationAdRequest mediationadrequest, Bundle bundle1)
    {
        yy = (CustomEventInterstitial)a(bundle.getString("class_name"));
        if (yy == null)
        {
            mediationinterstitiallistener.onAdFailedToLoad(this, 0);
            return;
        }
        Bundle bundle2;
        if (bundle1 == null)
        {
            bundle2 = null;
        } else
        {
            bundle2 = bundle1.getBundle(bundle.getString("class_name"));
        }
        yy.requestInterstitialAd(context, new b(this, mediationinterstitiallistener), bundle.getString("parameter"), mediationadrequest, bundle2);
    }

    public void showInterstitial()
    {
        yy.showInterstitial();
    }
}
