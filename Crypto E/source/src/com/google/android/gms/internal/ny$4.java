// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;

// Referenced classes of package com.google.android.gms.internal:
//            ny, od

class gleApiClient extends gleApiClient
{

    final PendingIntent anQ;
    final LocationRequest anU;
    final ny anW;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((od));
    }

    protected void a(od od1)
    {
        od1.b(anU, anQ);
        b(Status.RQ);
    }

    gleApiClient(ny ny1, GoogleApiClient googleapiclient, LocationRequest locationrequest, PendingIntent pendingintent)
    {
        anW = ny1;
        anU = locationrequest;
        anQ = pendingintent;
        super(googleapiclient);
    }
}
