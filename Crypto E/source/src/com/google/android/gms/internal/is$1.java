// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;

// Referenced classes of package com.google.android.gms.internal:
//            is, in, ij

class gleApiClient extends gleApiClient
{

    final String EN;
    final ij EO[];
    final is EP;

    protected void a(in in1)
    {
        in1.a(new <init>(this), EN, EO);
    }

    gleApiClient(is is1, GoogleApiClient googleapiclient, String s, ij aij[])
    {
        EP = is1;
        EN = s;
        EO = aij;
        super(googleapiclient);
    }
}
