// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;

// Referenced classes of package com.google.android.gms.internal:
//            kx, kw, kz

public final class kv
{

    public static final Api API;
    public static final com.google.android.gms.common.api.Api.c Fd;
    private static final com.google.android.gms.common.api.Api.b Fe;
    public static final kw UJ = new kx();

    static 
    {
        Fd = new com.google.android.gms.common.api.Api.c();
        Fe = new com.google.android.gms.common.api.Api.b() {

            public com.google.android.gms.common.api.Api.a a(Context context, Looper looper, ClientSettings clientsettings, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return c(context, looper, clientsettings, (com.google.android.gms.common.api.Api.ApiOptions.NoOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public kz c(Context context, Looper looper, ClientSettings clientsettings, com.google.android.gms.common.api.Api.ApiOptions.NoOptions nooptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return new kz(context, looper, connectioncallbacks, onconnectionfailedlistener, new String[0]);
            }

            public int getPriority()
            {
                return 0x7fffffff;
            }

        };
        API = new Api(Fe, Fd, new Scope[0]);
    }
}
