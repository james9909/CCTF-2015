// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.b;

// Referenced classes of package com.google.android.gms.internal:
//            na, mn, ms

class gleApiClient extends gleApiClient
{

    final na acm;
    final BleDevice acp;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b1 = new <init>(this);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a(new b(acp), b1, s);
    }

    gleApiClient(na na1, GoogleApiClient googleapiclient, BleDevice bledevice)
    {
        acm = na1;
        acp = bledevice;
        super(googleapiclient);
    }
}
