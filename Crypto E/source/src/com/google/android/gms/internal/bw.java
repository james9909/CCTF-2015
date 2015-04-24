// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

// Referenced classes of package com.google.android.gms.internal:
//            bt, bu

public final class bw extends bv.a
{

    private final OnCustomRenderedAdLoadedListener oY;

    public bw(OnCustomRenderedAdLoadedListener oncustomrenderedadloadedlistener)
    {
        oY = oncustomrenderedadloadedlistener;
    }

    public void a(bu bu)
    {
        oY.onCustomRenderedAdLoaded(new bt(bu));
    }
}
