// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            nu, od

class gleApiClient extends gleApiClient
{

    final PendingIntent anQ;
    final nu anR;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((od));
    }

    protected void a(od od1)
    {
        od1.a(anQ);
        b(Status.RQ);
    }

    gleApiClient(nu nu1, GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        anR = nu1;
        anQ = pendingintent;
        super(googleapiclient);
    }
}
