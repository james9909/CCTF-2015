// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWalletRequest;

// Referenced classes of package com.google.android.gms.internal:
//            qz, ra

class gleApiClient extends com.google.android.gms.wallet.t.b
{

    final qz aDK;
    final FullWalletRequest aDM;
    final int amV;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((ra));
    }

    protected void a(ra ra1)
    {
        ra1.a(aDM, amV);
        b(Status.RQ);
    }

    gleApiClient(qz qz1, GoogleApiClient googleapiclient, FullWalletRequest fullwalletrequest, int i)
    {
        aDK = qz1;
        aDM = fullwalletrequest;
        amV = i;
        super(googleapiclient);
    }
}
