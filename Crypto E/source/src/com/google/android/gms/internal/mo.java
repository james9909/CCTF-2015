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
//            mn, ms

public class mo extends h
    implements mn
{

    private final String Fm;

    public mo(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s, String as[])
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, as);
        Fm = s;
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        p1.a(e, 0x640578, getContext().getPackageName(), Fm, jF(), new Bundle());
    }

    protected ms aZ(IBinder ibinder)
    {
        return ms.a.bd(ibinder);
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.fitness.internal.IGoogleFitnessService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.fitness.GoogleFitnessService.START";
    }

    protected IInterface l(IBinder ibinder)
    {
        return aZ(ibinder);
    }

    public ms lV()
    {
        return (ms)jG();
    }
}
