// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            ny, od

class gleApiClient extends gleApiClient
{

    final ny anW;
    final Location anX;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((od));
    }

    protected void a(od od1)
    {
        od1.b(anX);
        b(Status.RQ);
    }

    gleApiClient(ny ny1, GoogleApiClient googleapiclient, Location location)
    {
        anW = ny1;
        anX = location;
        super(googleapiclient);
    }
}
