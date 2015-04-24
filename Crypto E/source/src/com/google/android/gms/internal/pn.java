// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

// Referenced classes of package com.google.android.gms.internal:
//            pq

public class pn
    implements com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks, com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener
{

    private pq auh;
    private final pi.a aur;
    private boolean aus;

    public pn(pi.a a1)
    {
        aur = a1;
        auh = null;
        aus = true;
    }

    public void V(boolean flag)
    {
        aus = flag;
    }

    public void a(pq pq1)
    {
        auh = pq1;
    }

    public void onConnected(Bundle bundle)
    {
        auh.W(false);
        if (aus && aur != null)
        {
            aur.qv();
        }
        aus = false;
    }

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        auh.W(true);
        if (aus && aur != null)
        {
            if (connectionresult.hasResolution())
            {
                aur.d(connectionresult.getResolution());
            } else
            {
                aur.qw();
            }
        }
        aus = false;
    }

    public void onDisconnected()
    {
        auh.W(true);
    }
}
