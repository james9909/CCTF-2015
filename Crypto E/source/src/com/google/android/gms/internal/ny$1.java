// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

// Referenced classes of package com.google.android.gms.internal:
//            ny, od

class gleApiClient extends gleApiClient
{

    final LocationRequest anU;
    final LocationListener anV;
    final ny anW;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((od));
    }

    protected void a(od od1)
    {
        od1.a(anU, anV, null);
        b(Status.RQ);
    }

    gleApiClient(ny ny1, GoogleApiClient googleapiclient, LocationRequest locationrequest, LocationListener locationlistener)
    {
        anW = ny1;
        anU = locationrequest;
        anV = locationlistener;
        super(googleapiclient);
    }
}
