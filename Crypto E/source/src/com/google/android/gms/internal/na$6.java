// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.result.BleDevicesResult;

// Referenced classes of package com.google.android.gms.internal:
//            na, mn, ms

class gleApiClient extends gleApiClient
{

    final na acm;

    protected BleDevicesResult F(Status status)
    {
        return BleDevicesResult.M(status);
    }

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b1 = new <init>(this, null);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a(b1, s);
    }

    protected Result b(Status status)
    {
        return F(status);
    }

    gleApiClient(na na1, GoogleApiClient googleapiclient)
    {
        acm = na1;
        super(googleapiclient);
    }
}
