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
//            oi, ob

public class nv extends h
{

    protected final oi Fq = new oi() {

        final nv anT;

        public void eb()
        {
            nv.a(anT);
        }

        public IInterface jG()
        {
            return pq();
        }

        public ob pq()
        {
            return (ob)anT.jG();
        }

            
            {
                anT = nv.this;
                super();
            }
    };
    private final String anS;

    public nv(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s)
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, new String[0]);
        anS = s;
    }

    static void a(nv nv1)
    {
        nv1.eb();
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e)
    {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", anS);
        p1.e(e, 0x640578, getContext().getPackageName(), bundle);
    }

    protected ob bu(IBinder ibinder)
    {
        return ob.a.bw(ibinder);
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    protected IInterface l(IBinder ibinder)
    {
        return bu(ibinder);
    }
}
