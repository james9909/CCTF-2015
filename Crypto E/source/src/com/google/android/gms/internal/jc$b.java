// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;

// Referenced classes of package com.google.android.gms.internal:
//            jc

class <init>
    implements com.google.android.gms.common.api.eApiClient.OnConnectionFailedListener
{

    final jc Ny;

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        jc.b(Ny);
    }

    private ionResult(jc jc1)
    {
        Ny = jc1;
        super();
    }

    Ny(jc jc1, Ny ny)
    {
        this(jc1);
    }
}
