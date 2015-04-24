// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;

// Referenced classes of package com.google.android.gms.common.api:
//            c, Status, e

class RK
    implements leApiClient.OnConnectionFailedListener
{

    final c RH;
    final e RK;

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        RK.b(new Status(8));
    }

    onResult(c c1, e e1)
    {
        RH = c1;
        RK = e1;
        super();
    }
}
