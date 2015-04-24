// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.ah;

// Referenced classes of package com.google.android.gms.internal:
//            na, mn, ms

class gleApiClient extends gleApiClient
{

    final na acm;
    final String aco;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b = new <init>(this);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a(new ah(aco), b, s);
    }

    gleApiClient(na na1, GoogleApiClient googleapiclient, String s)
    {
        acm = na1;
        aco = s;
        super(googleapiclient);
    }
}
