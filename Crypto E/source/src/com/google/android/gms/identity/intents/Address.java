// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.np;

// Referenced classes of package com.google.android.gms.identity.intents:
//            UserAddressRequest

public final class Address
{
    public static final class AddressOptions
        implements com.google.android.gms.common.api.Api.ApiOptions.HasOptions
    {

        public final int theme;

        public AddressOptions()
        {
            theme = 0;
        }

        public AddressOptions(int i)
        {
            theme = i;
        }
    }

    static abstract class a extends com.google.android.gms.common.api.BaseImplementation.a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        public a(GoogleApiClient googleapiclient)
        {
            super(Address.Fd, googleapiclient);
        }
    }


    public static final Api API;
    static final com.google.android.gms.common.api.Api.c Fd;
    private static final com.google.android.gms.common.api.Api.b Fe;

    public Address()
    {
    }

    public static void requestUserAddress(GoogleApiClient googleapiclient, UserAddressRequest useraddressrequest, int i)
    {
        googleapiclient.a(new a(googleapiclient, useraddressrequest, i) {

            final UserAddressRequest amU;
            final int amV;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((np)a1);
            }

            protected void a(np np1)
            {
                np1.a(amU, amV);
                b(Status.RQ);
            }

            
            {
                amU = useraddressrequest;
                amV = i;
                super(googleapiclient);
            }
        });
    }

    static 
    {
        Fd = new com.google.android.gms.common.api.Api.c();
        Fe = new com.google.android.gms.common.api.Api.b() {

            public volatile com.google.android.gms.common.api.Api.a a(Context context, Looper looper, ClientSettings clientsettings, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return a(context, looper, clientsettings, (AddressOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public np a(Context context, Looper looper, ClientSettings clientsettings, AddressOptions addressoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                s.b(context instanceof Activity, "An Activity must be used for Address APIs");
                if (addressoptions == null)
                {
                    addressoptions = new AddressOptions();
                }
                return new np((Activity)context, looper, connectioncallbacks, onconnectionfailedlistener, clientsettings.getAccountName(), addressoptions.theme);
            }

            public int getPriority()
            {
                return 0x7fffffff;
            }

        };
        API = new Api(Fe, Fd, new Scope[0]);
    }
}
