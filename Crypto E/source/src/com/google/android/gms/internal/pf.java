// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;

// Referenced classes of package com.google.android.gms.internal:
//            pd

public class pf extends h
{

    public pf(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, (String[])null);
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        Bundle bundle = new Bundle();
        p1.a(e, 0x640578, getContext().getPackageName(), bundle);
    }

    public pd cp(IBinder ibinder)
    {
        return pd.a.co(ibinder);
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.panorama.internal.IPanoramaService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.panorama.service.START";
    }

    public IInterface l(IBinder ibinder)
    {
        return cp(ibinder);
    }
}
