// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.s;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.common.api:
//            Scope, PendingResult, d, f, 
//            c, Api

public interface GoogleApiClient
{
    public static final class Builder
    {

        private String Fm;
        private Looper Hy;
        private final Set Rc;
        private int Rd;
        private View Re;
        private String Rf;
        private final Map Rg;
        private FragmentActivity Rh;
        private int Ri;
        private OnConnectionFailedListener Rj;
        private final Set Rk;
        private final Set Rl;
        private final Context mContext;

        private GoogleApiClient iY()
        {
            f f1 = f.a(Rh);
            Object obj = f1.bu(Ri);
            if (obj == null)
            {
                obj = new c(mContext.getApplicationContext(), Hy, iX(), Rg, Rk, Rl, Ri);
            }
            f1.a(Ri, ((GoogleApiClient) (obj)), Rj);
            return ((GoogleApiClient) (obj));
        }

        public Builder addApi(Api api)
        {
            Rg.put(api, null);
            List list = api.iO();
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                Rc.add(((Scope)list.get(j)).je());
            }

            return this;
        }

        public Builder addApi(Api api, Api.ApiOptions.HasOptions hasoptions)
        {
            s.b(hasoptions, "Null options are not permitted for this Api");
            Rg.put(api, hasoptions);
            List list = api.iO();
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                Rc.add(((Scope)list.get(j)).je());
            }

            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks connectioncallbacks)
        {
            Rk.add(connectioncallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener onconnectionfailedlistener)
        {
            Rl.add(onconnectionfailedlistener);
            return this;
        }

        public Builder addScope(Scope scope)
        {
            Rc.add(scope.je());
            return this;
        }

        public GoogleApiClient build()
        {
            boolean flag;
            if (!Rg.isEmpty())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            s.b(flag, "must call addApi() to add at least one API");
            if (Ri >= 0)
            {
                return iY();
            } else
            {
                return new c(mContext, Hy, iX(), Rg, Rk, Rl, -1);
            }
        }

        public Builder enableAutoManage(FragmentActivity fragmentactivity, int i, OnConnectionFailedListener onconnectionfailedlistener)
        {
            boolean flag;
            if (i >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            s.b(flag, "clientId must be non-negative");
            Ri = i;
            Rh = (FragmentActivity)s.b(fragmentactivity, "Null activity is not permitted.");
            Rj = onconnectionfailedlistener;
            return this;
        }

        public ClientSettings iX()
        {
            return new ClientSettings(Fm, Rc, Rd, Re, Rf);
        }

        public Builder setAccountName(String s1)
        {
            Fm = s1;
            return this;
        }

        public Builder setGravityForPopups(int i)
        {
            Rd = i;
            return this;
        }

        public Builder setHandler(Handler handler)
        {
            s.b(handler, "Handler must not be null");
            Hy = handler.getLooper();
            return this;
        }

        public Builder setViewForPopups(View view)
        {
            Re = view;
            return this;
        }

        public Builder useDefaultAccount()
        {
            return setAccountName("<<default account>>");
        }

        public Builder(Context context)
        {
            Rc = new HashSet();
            Rg = new HashMap();
            Ri = -1;
            Rk = new HashSet();
            Rl = new HashSet();
            mContext = context;
            Hy = context.getMainLooper();
            Rf = context.getPackageName();
        }

        public Builder(Context context, ConnectionCallbacks connectioncallbacks, OnConnectionFailedListener onconnectionfailedlistener)
        {
            this(context);
            s.b(connectioncallbacks, "Must provide a connected listener");
            Rk.add(connectioncallbacks);
            s.b(onconnectionfailedlistener, "Must provide a connection failed listener");
            Rl.add(onconnectionfailedlistener);
        }
    }

    public static interface ConnectionCallbacks
    {

        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        public abstract void onConnected(Bundle bundle);

        public abstract void onConnectionSuspended(int i);
    }

    public static interface OnConnectionFailedListener
        extends com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener
    {

        public abstract void onConnectionFailed(ConnectionResult connectionresult);
    }


    public abstract Api.a a(Api.c c);

    public abstract BaseImplementation.a a(BaseImplementation.a a1);

    public abstract boolean a(Scope scope);

    public abstract BaseImplementation.a b(BaseImplementation.a a1);

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long l, TimeUnit timeunit);

    public abstract PendingResult clearDefaultAccountAndReconnect();

    public abstract void connect();

    public abstract void disconnect();

    public abstract d g(Object obj);

    public abstract Looper getLooper();

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectioncallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onconnectionfailedlistener);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(ConnectionCallbacks connectioncallbacks);

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onconnectionfailedlistener);

    public abstract void stopAutoManage(FragmentActivity fragmentactivity);

    public abstract void unregisterConnectionCallbacks(ConnectionCallbacks connectioncallbacks);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onconnectionfailedlistener);
}
