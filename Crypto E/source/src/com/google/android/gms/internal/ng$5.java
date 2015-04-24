// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.u;

// Referenced classes of package com.google.android.gms.internal:
//            ng, mn, ms

class gleApiClient extends gleApiClient
{

    final ng acL;
    final PendingIntent acP;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((mn));
    }

    protected void a(mn mn1)
    {
        ementation.b b = new <init>(this);
        u u1 = new u(acP);
        String s = mn1.getContext().getPackageName();
        mn1.lV().a(u1, b, s);
    }

    gleApiClient(ng ng1, GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        acL = ng1;
        acP = pendingintent;
        super(googleapiclient);
    }
}
