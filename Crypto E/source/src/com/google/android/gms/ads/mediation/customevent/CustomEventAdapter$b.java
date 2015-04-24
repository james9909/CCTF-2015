// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.hf;

// Referenced classes of package com.google.android.gms.ads.mediation.customevent:
//            CustomEventInterstitialListener, CustomEventAdapter

class m
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

    public alListener(CustomEventAdapter customeventadapter, CustomEventAdapter customeventadapter1, MediationInterstitialListener mediationinterstitiallistener)
    {
        yA = customeventadapter;
        super();
        yz = customeventadapter1;
        m = mediationinterstitiallistener;
    }
}
