// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.result.SessionStopResult;

// Referenced classes of package com.google.android.gms.internal:
//            ng, mn, ms

class gleApiClient extends gleApiClient
{

    final ng acL;
    final String acM;
    final String val$name;

    protected SessionStopResult K(Status status)
    {
        return SessionStopResult.R(status);
    }

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b1 = new <init>(this, null);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a((new com.google.android.gms.fitness.request.init>()).E(val$name).F(acM).u(), b1, s);
    }

    protected Result b(Status status)
    {
        return K(status);
    }

    gleApiClient(GoogleApiClient googleapiclient, String s, String s1)
    {
        acL = final_ng1;
        val$name = s;
        acM = s1;
        super(googleapiclient);
    }
}
