// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.common.internal:
//            s

public final class i
{
    final class a extends Handler
    {

        final i Ur;

        public void handleMessage(Message message)
        {
            if (message.what == 1)
            {
                synchronized (i.a(Ur))
                {
                    if (i.b(Ur).jd() && i.b(Ur).isConnected() && i.a(Ur).contains(message.obj))
                    {
                        Bundle bundle = i.b(Ur).hH();
                        ((com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks)message.obj).onConnected(bundle);
                    }
                }
                return;
            } else
            {
                Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
                return;
            }
            exception;
            arraylist;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public a(Looper looper)
        {
            Ur = i.this;
            super(looper);
        }
    }

    public static interface b
    {

        public abstract Bundle hH();

        public abstract boolean isConnected();

        public abstract boolean jd();
    }


    private final b Um;
    private final ArrayList Un = new ArrayList();
    final ArrayList Uo = new ArrayList();
    private boolean Up;
    private final ArrayList Uq = new ArrayList();
    private final Handler mHandler;

    public i(Context context, Looper looper, b b1)
    {
        Up = false;
        Um = b1;
        mHandler = new a(looper);
    }

    static ArrayList a(i j)
    {
        return j.Un;
    }

    static b b(i j)
    {
        return j.Um;
    }

    public void b(ConnectionResult connectionresult)
    {
        mHandler.removeMessages(1);
        ArrayList arraylist = Uq;
        arraylist;
        JVM INSTR monitorenter ;
        Iterator iterator = (new ArrayList(Uq)).iterator();
_L2:
        com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_96;
        }
        onconnectionfailedlistener = (com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener)iterator.next();
        if (!Um.jd())
        {
            return;
        }
        if (Uq.contains(onconnectionfailedlistener))
        {
            onconnectionfailedlistener.onConnectionFailed(connectionresult);
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        arraylist;
        JVM INSTR monitorexit ;
    }

    public void bM(int j)
    {
        mHandler.removeMessages(1);
        ArrayList arraylist = Un;
        arraylist;
        JVM INSTR monitorenter ;
        Iterator iterator;
        Up = true;
        iterator = (new ArrayList(Un)).iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks = (com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks)iterator.next();
        if (Um.jd()) goto _L3; else goto _L2
_L2:
        Up = false;
        return;
_L3:
        if (Un.contains(connectioncallbacks))
        {
            connectioncallbacks.onConnectionSuspended(j);
        }
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void ed()
    {
        synchronized (Un)
        {
            l(Um.hH());
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isConnectionCallbacksRegistered(com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        s.l(connectioncallbacks);
        boolean flag;
        synchronized (Un)
        {
            flag = Un.contains(connectioncallbacks);
        }
        return flag;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isConnectionFailedListenerRegistered(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        s.l(onconnectionfailedlistener);
        boolean flag;
        synchronized (Uq)
        {
            flag = Uq.contains(onconnectionfailedlistener);
        }
        return flag;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void l(Bundle bundle)
    {
        boolean flag = true;
        ArrayList arraylist = Un;
        arraylist;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag1;
        Iterator iterator;
        com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks;
        if (!Up)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.N(flag1);
        mHandler.removeMessages(1);
        Up = true;
        if (Uo.size() != 0)
        {
            flag = false;
        }
        s.N(flag);
        iterator = (new ArrayList(Un)).iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        connectioncallbacks = (com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks)iterator.next();
        if (Um.jd() && Um.isConnected()) goto _L3; else goto _L2
_L2:
        Uo.clear();
        Up = false;
        arraylist;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (!Uo.contains(connectioncallbacks))
        {
            connectioncallbacks.onConnected(bundle);
        }
        if (true) goto _L5; else goto _L4
_L4:
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void registerConnectionCallbacks(com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        s.l(connectioncallbacks);
        ArrayList arraylist = Un;
        arraylist;
        JVM INSTR monitorenter ;
        if (!Un.contains(connectioncallbacks))
        {
            break MISSING_BLOCK_LABEL_85;
        }
        Log.w("GmsClientEvents", (new StringBuilder()).append("registerConnectionCallbacks(): listener ").append(connectioncallbacks).append(" is already registered").toString());
_L2:
        if (Um.isConnected())
        {
            mHandler.sendMessage(mHandler.obtainMessage(1, connectioncallbacks));
        }
        return;
        Un.add(connectioncallbacks);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void registerConnectionFailedListener(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        s.l(onconnectionfailedlistener);
        ArrayList arraylist = Uq;
        arraylist;
        JVM INSTR monitorenter ;
        if (!Uq.contains(onconnectionfailedlistener))
        {
            break MISSING_BLOCK_LABEL_56;
        }
        Log.w("GmsClientEvents", (new StringBuilder()).append("registerConnectionFailedListener(): listener ").append(onconnectionfailedlistener).append(" is already registered").toString());
_L2:
        return;
        Uq.add(onconnectionfailedlistener);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void unregisterConnectionCallbacks(com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        s.l(connectioncallbacks);
        ArrayList arraylist = Un;
        arraylist;
        JVM INSTR monitorenter ;
        if (Un == null) goto _L2; else goto _L1
_L1:
        if (Un.remove(connectioncallbacks)) goto _L4; else goto _L3
_L3:
        Log.w("GmsClientEvents", (new StringBuilder()).append("unregisterConnectionCallbacks(): listener ").append(connectioncallbacks).append(" not found").toString());
_L2:
        return;
_L4:
        if (Up)
        {
            Uo.add(connectioncallbacks);
        }
        if (true) goto _L2; else goto _L5
_L5:
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void unregisterConnectionFailedListener(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        s.l(onconnectionfailedlistener);
        synchronized (Uq)
        {
            if (Uq != null && !Uq.remove(onconnectionfailedlistener))
            {
                Log.w("GmsClientEvents", (new StringBuilder()).append("unregisterConnectionFailedListener(): listener ").append(onconnectionfailedlistener).append(" not found").toString());
            }
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
