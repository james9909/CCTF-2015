// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.google.android.gms.common.api:
//            c

class RI
    implements leApiClient.OnConnectionFailedListener
{

    final c RH;
    final b RI;

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        c.a(RH).lock();
        if (c.k(RH) == null || RI.getPriority() < c.l(RH))
        {
            c.a(RH, connectionresult);
            c.b(RH, RI.getPriority());
        }
        c.d(RH);
        c.a(RH).unlock();
        return;
        Exception exception;
        exception;
        c.a(RH).unlock();
        throw exception;
    }

    b(c c1, b b)
    {
        RH = c1;
        RI = b;
        super();
    }
}
