// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            nv, oc, ns, ix, 
//            ob

public class od extends nv
{
    final class a extends com.google.android.gms.common.internal.h.b
    {

        private final int Pu;
        private final String aop[];
        final od aoq;

        protected void a(com.google.android.gms.location.b.a a1)
        {
            if (a1 != null)
            {
                a1.a(Pu, aop);
            }
        }

        protected void j(Object obj)
        {
            a((com.google.android.gms.location.b.a)obj);
        }

        protected void jH()
        {
        }

        public a(com.google.android.gms.location.b.a a1, int i, String as[])
        {
            aoq = od.this;
            super(od.this, a1);
            Pu = LocationStatusCodes.fI(i);
            aop = as;
        }
    }

    static final class b extends oa.a
    {

        private com.google.android.gms.location.b.a aor;
        private com.google.android.gms.location.b.b aos;
        private od aot;

        public void a(int i, PendingIntent pendingintent)
        {
            if (aot == null)
            {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
                return;
            } else
            {
                od od1 = aot;
                od od2 = aot;
                od2.getClass();
                od1.a(od2. new c(1, aos, i, pendingintent));
                aot = null;
                aor = null;
                aos = null;
                return;
            }
        }

        public void a(int i, String as[])
        {
            if (aot == null)
            {
                Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
                return;
            } else
            {
                od od1 = aot;
                od od2 = aot;
                od2.getClass();
                od1.a(od2. new a(aor, i, as));
                aot = null;
                aor = null;
                aos = null;
                return;
            }
        }

        public void b(int i, String as[])
        {
            if (aot == null)
            {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
                return;
            } else
            {
                od od1 = aot;
                od od2 = aot;
                od2.getClass();
                od1.a(od2. new c(2, aos, i, as));
                aot = null;
                aor = null;
                aos = null;
                return;
            }
        }

        public b(com.google.android.gms.location.b.a a1, od od1)
        {
            aor = a1;
            aos = null;
            aot = od1;
        }

        public b(com.google.android.gms.location.b.b b1, od od1)
        {
            aos = b1;
            aor = null;
            aot = od1;
        }
    }

    final class c extends com.google.android.gms.common.internal.h.b
    {

        private final int Pu;
        private final String aop[];
        final od aoq;
        private final int aou;
        private final PendingIntent mPendingIntent;

        protected void a(com.google.android.gms.location.b.b b1)
        {
label0:
            {
label1:
                {
                    if (b1 != null)
                    {
                        switch (aou)
                        {
                        default:
                            Log.wtf("LocationClientImpl", (new StringBuilder()).append("Unsupported action: ").append(aou).toString());
                            break;

                        case 1: // '\001'
                            break label1;

                        case 2: // '\002'
                            break label0;
                        }
                    }
                    return;
                }
                b1.a(Pu, mPendingIntent);
                return;
            }
            b1.b(Pu, aop);
        }

        protected void j(Object obj)
        {
            a((com.google.android.gms.location.b.b)obj);
        }

        protected void jH()
        {
        }

        public c(int i, com.google.android.gms.location.b.b b1, int k, PendingIntent pendingintent)
        {
            boolean flag = true;
            aoq = od.this;
            super(od.this, b1);
            if (i != flag)
            {
                flag = false;
            }
            com.google.android.gms.common.internal.b.N(flag);
            aou = i;
            Pu = LocationStatusCodes.fI(k);
            mPendingIntent = pendingintent;
            aop = null;
        }

        public c(int i, com.google.android.gms.location.b.b b1, int k, String as[])
        {
            aoq = od.this;
            super(od.this, b1);
            boolean flag;
            if (i == 2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            com.google.android.gms.common.internal.b.N(flag);
            aou = i;
            Pu = LocationStatusCodes.fI(k);
            aop = as;
            mPendingIntent = null;
        }
    }


    private final oc aom;
    private final ns aon;
    private final ix aoo;

    public od(Context context, Looper looper, String s1, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s2)
    {
        this(context, looper, s1, connectioncallbacks, onconnectionfailedlistener, s2, null);
    }

    public od(Context context, Looper looper, String s1, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s2, String s3)
    {
        this(context, looper, s1, connectioncallbacks, onconnectionfailedlistener, s2, s3, null);
    }

    public od(Context context, Looper looper, String s1, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s2, String s3, 
            String s4)
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, s2);
        aom = new oc(context, Fq);
        aon = ns.a(context, s3, s4, Fq);
        aoo = ix.a(context, Fq);
    }

    public void U(boolean flag)
    {
        aom.U(flag);
    }

    public void a(long l, PendingIntent pendingintent)
    {
        eb();
        s.l(pendingintent);
        boolean flag;
        if (l >= 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, "detectionIntervalMillis must be >= 0");
        ((ob)jG()).a(l, true, pendingintent);
    }

    public void a(PendingIntent pendingintent)
    {
        eb();
        s.l(pendingintent);
        ((ob)jG()).a(pendingintent);
    }

    public void a(PendingIntent pendingintent, com.google.android.gms.location.b.b b1)
    {
        eb();
        s.b(pendingintent, "PendingIntent must be specified.");
        s.b(b1, "OnRemoveGeofencesResultListener not provided.");
        Object obj;
        if (b1 == null)
        {
            obj = null;
        } else
        {
            obj = new b(b1, this);
        }
        ((ob)jG()).a(pendingintent, ((oa) (obj)), getContext().getPackageName());
    }

    public void a(GeofencingRequest geofencingrequest, PendingIntent pendingintent, com.google.android.gms.location.b.a a1)
    {
        eb();
        s.b(geofencingrequest, "geofencingRequest can't be null.");
        s.b(pendingintent, "PendingIntent must be specified.");
        s.b(a1, "OnAddGeofencesResultListener not provided.");
        Object obj;
        if (a1 == null)
        {
            obj = null;
        } else
        {
            obj = new b(a1, this);
        }
        ((ob)jG()).a(geofencingrequest, pendingintent, ((oa) (obj)));
    }

    public void a(LocationListener locationlistener)
    {
        aom.a(locationlistener);
    }

    public void a(LocationRequest locationrequest, LocationListener locationlistener, Looper looper)
    {
        synchronized (aom)
        {
            aom.a(locationrequest, locationlistener, looper);
        }
        return;
        exception;
        oc1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(List list, com.google.android.gms.location.b.b b1)
    {
        eb();
        boolean flag;
        String as[];
        Object obj;
        if (list != null && list.size() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, "geofenceRequestIds can't be null nor empty.");
        s.b(b1, "OnRemoveGeofencesResultListener not provided.");
        as = (String[])list.toArray(new String[0]);
        if (b1 == null)
        {
            obj = null;
        } else
        {
            obj = new b(b1, this);
        }
        ((ob)jG()).a(as, ((oa) (obj)), getContext().getPackageName());
    }

    public void b(Location location)
    {
        aom.b(location);
    }

    public void b(LocationRequest locationrequest, PendingIntent pendingintent)
    {
        aom.b(locationrequest, pendingintent);
    }

    public void c(PendingIntent pendingintent)
    {
        aom.c(pendingintent);
    }

    public void disconnect()
    {
        oc oc1 = aom;
        oc1;
        JVM INSTR monitorenter ;
        boolean flag = isConnected();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        aom.removeAllListeners();
        aom.pv();
_L1:
        super.disconnect();
        oc1;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", exception1);
          goto _L1
        Exception exception;
        exception;
        oc1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Location pu()
    {
        return aom.pu();
    }
}
