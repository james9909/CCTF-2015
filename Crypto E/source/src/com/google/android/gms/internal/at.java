// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

public final class at extends bc.a
{

    private final AdListener ol;

    public at(AdListener adlistener)
    {
        ol = adlistener;
    }

    public void onAdClosed()
    {
        ol.onAdClosed();
    }

    public void onAdFailedToLoad(int i)
    {
        ol.onAdFailedToLoad(i);
    }

    public void onAdLeftApplication()
    {
        ol.onAdLeftApplication();
    }

    public void onAdLoaded()
    {
        ol.onAdLoaded();
    }

    public void onAdOpened()
    {
        ol.onAdOpened();
    }
}
