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
//            lb

public class kz extends h
{

    public transient kz(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String as[])
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, as);
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        p1.j(e, 0x640578, getContext().getPackageName());
    }

    protected lb aB(IBinder ibinder)
    {
        return lb.a.aD(ibinder);
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }

    public String getStartServiceAction()
    {
        return "com.google.android.gms.common.service.START";
    }

    protected IInterface l(IBinder ibinder)
    {
        return aB(ibinder);
    }
}
