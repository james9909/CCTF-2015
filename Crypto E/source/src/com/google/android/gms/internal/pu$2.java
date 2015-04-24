// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.e;

// Referenced classes of package com.google.android.gms.internal:
//            pu

class gleApiClient extends gleApiClient
{

    final int ahV;
    final pu avl;
    final String avm;
    final Uri avn;
    final String avo;
    final String avp;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((e));
    }

    protected void a(e e1)
    {
        e1.a(this, ahV, avm, avn, avo, avp);
    }

    gleApiClient(pu pu1, GoogleApiClient googleapiclient, int i, String s, Uri uri, String s1, String s2)
    {
        avl = pu1;
        ahV = i;
        avm = s;
        avn = uri;
        avo = s1;
        avp = s2;
        super(googleapiclient, null);
    }
}
