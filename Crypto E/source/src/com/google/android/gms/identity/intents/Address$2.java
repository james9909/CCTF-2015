// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.np;

// Referenced classes of package com.google.android.gms.identity.intents:
//            Address, UserAddressRequest

static final class <init> extends <init>
{

    final UserAddressRequest amU;
    final int amV;

    protected volatile void a(com.google.android.gms.common.api.ess._cls2 _pcls2)
    {
        a((np)_pcls2);
    }

    protected void a(np np1)
    {
        np1.a(amU, amV);
        b(Status.RQ);
    }

    sRequest(GoogleApiClient googleapiclient, UserAddressRequest useraddressrequest, int i)
    {
        amU = useraddressrequest;
        amV = i;
        super(googleapiclient);
    }
}
