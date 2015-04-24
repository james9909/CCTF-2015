// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseListener;

// Referenced classes of package com.google.android.gms.internal:
//            ff, ew

public final class fc extends ex.a
{

    private final InAppPurchaseListener oW;

    public fc(InAppPurchaseListener inapppurchaselistener)
    {
        oW = inapppurchaselistener;
    }

    public void a(ew ew)
    {
        oW.onInAppPurchaseRequested(new ff(ew));
    }
}
