// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            qz, ra

class gleApiClient extends com.google.android.gms.wallet.t.b
{

    final qz aDK;
    final int amV;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((ra));
    }

    protected void a(ra ra1)
    {
        ra1.hq(amV);
        b(Status.RQ);
    }

    gleApiClient(qz qz1, GoogleApiClient googleapiclient, int i)
    {
        aDK = qz1;
        amV = i;
        super(googleapiclient);
    }
}
