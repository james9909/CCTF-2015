// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.internal.e;

// Referenced classes of package com.google.android.gms.internal:
//            pu

class gleApiClient extends gleApiClient
{

    final pu avl;
    final String avr;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((e));
    }

    protected void a(e e1)
    {
        e1.removeMoment(avr);
        b(Status.RQ);
    }

    gleApiClient(pu pu1, GoogleApiClient googleapiclient, String s)
    {
        avl = pu1;
        avr = s;
        super(googleapiclient, null);
    }
}