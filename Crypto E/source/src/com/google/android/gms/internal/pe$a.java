// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            pg, pe

static abstract class gleApiClient extends gleApiClient
{

    protected com.google.android.gms.panorama.amaApi.PanoramaResult aI(Status status)
    {
        return new pg(status, null);
    }

    protected Result b(Status status)
    {
        return aI(status);
    }

    public gleApiClient(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }
}
