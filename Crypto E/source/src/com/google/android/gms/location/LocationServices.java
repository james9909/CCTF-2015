// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.ny;
import com.google.android.gms.internal.nz;
import com.google.android.gms.internal.od;

// Referenced classes of package com.google.android.gms.location:
//            FusedLocationProviderApi, GeofencingApi

public class LocationServices
{
    public static abstract class a extends com.google.android.gms.common.api.BaseImplementation.a
    {

        public a(GoogleApiClient googleapiclient)
        {
            super(LocationServices.po(), googleapiclient);
        }
    }


    public static final Api API;
    private static final com.google.android.gms.common.api.Api.c Fd;
    private static final com.google.android.gms.common.api.Api.b Fe;
    public static FusedLocationProviderApi FusedLocationApi = new ny();
    public static GeofencingApi GeofencingApi = new nz();

    private LocationServices()
    {
    }

    public static od j(GoogleApiClient googleapiclient)
    {
        boolean flag = true;
        boolean flag1;
        od od1;
        if (googleapiclient != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.b(flag1, "GoogleApiClient parameter is required.");
        od1 = (od)googleapiclient.a(Fd);
        if (od1 == null)
        {
            flag = false;
        }
        s.a(flag, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return od1;
    }

    static com.google.android.gms.common.api.Api.c po()
    {
        return Fd;
    }

    static 
    {
        Fd = new com.google.android.gms.common.api.Api.c();
        Fe = new com.google.android.gms.common.api.Api.b() {

            public com.google.android.gms.common.api.Api.a a(Context context, Looper looper, ClientSettings clientsettings, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return e(context, looper, clientsettings, (com.google.android.gms.common.api.Api.ApiOptions.NoOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public od e(Context context, Looper looper, ClientSettings clientsettings, com.google.android.gms.common.api.Api.ApiOptions.NoOptions nooptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return new od(context, looper, context.getPackageName(), connectioncallbacks, onconnectionfailedlistener, "locationServices", clientsettings.getAccountName());
            }

            public int getPriority()
            {
                return 0x7fffffff;
            }

        };
        API = new Api(Fe, Fd, new Scope[0]);
    }
}
