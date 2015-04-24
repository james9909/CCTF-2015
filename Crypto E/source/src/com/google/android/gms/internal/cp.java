// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;

// Referenced classes of package com.google.android.gms.internal:
//            cq

public class cp extends h
{

    final int qx;

    public cp(Context context, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, int i)
    {
        super(context, context.getMainLooper(), connectioncallbacks, onconnectionfailedlistener, new String[0]);
        qx = i;
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        Bundle bundle = new Bundle();
        p1.g(e, qx, getContext().getPackageName(), bundle);
    }

    public cq bQ()
    {
        return (cq)super.jG();
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.ads.internal.gservice.IGservicesValueService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.ads.gservice.START";
    }

    protected cq k(IBinder ibinder)
    {
        return cq.a.m(ibinder);
    }

    protected IInterface l(IBinder ibinder)
    {
        return k(ibinder);
    }
}
