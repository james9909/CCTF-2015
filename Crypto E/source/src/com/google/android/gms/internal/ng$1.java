// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.Session;

// Referenced classes of package com.google.android.gms.internal:
//            ng, mn, ms

class gleApiClient extends gleApiClient
{

    final Session acK;
    final ng acL;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b = new <init>(this);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a((new com.google.android.gms.fitness.request.init>()).(acK).t(), b, s);
    }

    gleApiClient(ng ng1, GoogleApiClient googleapiclient, Session session)
    {
        acL = ng1;
        acK = session;
        super(googleapiclient);
    }
}
