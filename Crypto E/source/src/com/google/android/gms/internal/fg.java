// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

// Referenced classes of package com.google.android.gms.internal:
//            fe, fa

public final class fg extends fb.a
{

    private final PlayStorePurchaseListener oX;

    public fg(PlayStorePurchaseListener playstorepurchaselistener)
    {
        oX = playstorepurchaselistener;
    }

    public void a(fa fa)
    {
        oX.onInAppPurchaseFinished(new fe(fa));
    }

    public boolean isValidPurchase(String s)
    {
        return oX.isValidPurchase(s);
    }
}
