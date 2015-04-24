// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;

// Referenced classes of package com.google.android.gms.auth.api:
//            IGoogleAuthService

public final class GoogleAuthApiClientImpl extends h
{

    public static final String ACTION_START_SERVICE = "com.google.android.gms.auth.service.START";
    public static final String SERVICE_DESCRIPTOR = "com.google.android.gms.auth.api.IGoogleAuthService";
    private String FB[];
    private final String Fm;

    public GoogleAuthApiClientImpl(Context context, Looper looper, ClientSettings clientsettings, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s, String as[])
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, as);
        Fm = s;
        FB = as;
    }

    public GoogleAuthApiClientImpl(Context context, ClientSettings clientsettings, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s, String as[])
    {
        this(context, context.getMainLooper(), clientsettings, connectioncallbacks, onconnectionfailedlistener, s, as);
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        p1.b(e, 0x640578, getContext().getPackageName(), Fm, jF());
    }

    protected IGoogleAuthService createServiceInterface(IBinder ibinder)
    {
        return IGoogleAuthService.Stub.asInterface(ibinder);
    }

    public String getAccountName()
    {
        return Fm;
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.auth.api.IGoogleAuthService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.auth.service.START";
    }

    protected IInterface l(IBinder ibinder)
    {
        return createServiceInterface(ibinder);
    }
}
