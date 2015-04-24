// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.DataSet;

// Referenced classes of package com.google.android.gms.internal:
//            nc, mn, ms

class gleApiClient extends gleApiClient
{

    final DataSet act;
    final nc acu;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b = new <init>(this);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a((new com.google.android.gms.fitness.request.init>()).(act).d(), b, s);
    }

    gleApiClient(nc nc1, GoogleApiClient googleapiclient, DataSet dataset)
    {
        acu = nc1;
        act = dataset;
        super(googleapiclient);
    }
}
