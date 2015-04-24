// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.mediation.customevent;

import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.hf;

// Referenced classes of package com.google.android.gms.ads.mediation.customevent:
//            CustomEventBannerListener, CustomEventAdapter

static final class l
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

    public ener(CustomEventAdapter customeventadapter, MediationBannerListener mediationbannerlistener)
    {
        yz = customeventadapter;
        l = mediationbannerlistener;
    }
}
