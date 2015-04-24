// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;

// Referenced classes of package com.google.android.gms.internal:
//            in

public class iq extends h
{

    public iq(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, new String[0]);
    }

    protected in G(IBinder ibinder)
    {
        return in.a.E(ibinder);
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        p1.b(e, 0x640578, getContext().getPackageName());
    }

    public in fQ()
    {
        return (in)jG();
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE";
    }

    protected IInterface l(IBinder ibinder)
    {
        return G(ibinder);
    }
}
