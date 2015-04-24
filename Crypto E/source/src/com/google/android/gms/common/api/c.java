// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.kw;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.google.android.gms.common.api:
//            GoogleApiClient, Api, PendingResult, Status, 
//            d, Scope, e, f, 
//            ResultCallback, Result

final class com.google.android.gms.common.api.c
    implements GoogleApiClient
{
    static class a extends BroadcastReceiver
    {

        private WeakReference RM;

        public void onReceive(Context context, Intent intent)
        {
            Uri uri = intent.getData();
            String s1 = null;
            if (uri != null)
            {
                s1 = uri.getSchemeSpecificPart();
            }
            com.google.android.gms.common.api.c c1;
            if (s1 != null && s1.equals("com.google.android.gms"))
            {
                if ((c1 = (com.google.android.gms.common.api.c)RM.get()) != null && !c1.isConnected() && !c1.isConnecting() && c1.jb())
                {
                    c1.connect();
                    return;
                }
            }
        }

        a(com.google.android.gms.common.api.c c1)
        {
            RM = new WeakReference(c1);
        }
    }

    static interface b
    {

        public abstract void b(d d1);
    }

    class c extends Handler
    {

        final com.google.android.gms.common.api.c RH;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                Log.w("GoogleApiClientImpl", (new StringBuilder()).append("Unknown message id: ").append(message.what).toString());
                return;

            case 1: // '\001'
                com.google.android.gms.common.api.c.i(RH);
                return;

            case 2: // '\002'
                com.google.android.gms.common.api.c.j(RH);
                break;
            }
        }

        c(Looper looper)
        {
            RH = com.google.android.gms.common.api.c.this;
            super(looper);
        }
    }

    static interface d
    {

        public abstract void a(b b1);

        public abstract void b(Api.a a1);

        public abstract void cancel();

        public abstract Api.c iP();

        public abstract int iV();

        public abstract void v(Status status);
    }


    private final Lock AR = new ReentrantLock();
    private final Set HX = Collections.newSetFromMap(new WeakHashMap());
    private final Looper Hy;
    private final b QV = new b() {

        final com.google.android.gms.common.api.c RH;

        public void b(d d1)
        {
            RH.RE.remove(d1);
        }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                super();
            }
    };
    private final Bundle RA = new Bundle();
    private final Map RB = new HashMap();
    private final List RC;
    private boolean RD;
    final Set RE = Collections.newSetFromMap(new ConcurrentHashMap());
    private final GoogleApiClient.ConnectionCallbacks RF = new GoogleApiClient.ConnectionCallbacks() {

        final com.google.android.gms.common.api.c RH;

        public void onConnected(Bundle bundle)
        {
            com.google.android.gms.common.api.c.a(RH).lock();
            if (com.google.android.gms.common.api.c.b(RH) != 1)
            {
                break MISSING_BLOCK_LABEL_45;
            }
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_38;
            }
            com.google.android.gms.common.api.c.c(RH).putAll(bundle);
            com.google.android.gms.common.api.c.d(RH);
            com.google.android.gms.common.api.c.a(RH).unlock();
            return;
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(RH).unlock();
            throw exception;
        }

        public void onConnectionSuspended(int j1)
        {
            com.google.android.gms.common.api.c.a(RH).lock();
            j1;
            JVM INSTR tableswitch 1 2: default 36
        //                       1 84
        //                       2 49;
               goto _L1 _L2 _L3
_L1:
            com.google.android.gms.common.api.c.a(RH).unlock();
            return;
_L3:
            com.google.android.gms.common.api.c.a(RH, j1);
            RH.connect();
              goto _L1
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(RH).unlock();
            throw exception;
_L2:
            boolean flag = RH.jb();
            if (flag)
            {
                com.google.android.gms.common.api.c.a(RH).unlock();
                return;
            }
            com.google.android.gms.common.api.c.a(RH, true);
            RH.Rz = new a(RH);
            IntentFilter intentfilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentfilter.addDataScheme("package");
            com.google.android.gms.common.api.c.e(RH).registerReceiver(RH.Rz, intentfilter);
            RH.Ry.sendMessageDelayed(RH.Ry.obtainMessage(1), com.google.android.gms.common.api.c.f(RH));
            RH.Ry.sendMessageDelayed(RH.Ry.obtainMessage(2), com.google.android.gms.common.api.c.g(RH));
            com.google.android.gms.common.api.c.a(RH, j1);
              goto _L1
        }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                super();
            }
    };
    private final com.google.android.gms.common.internal.i.b RG = new com.google.android.gms.common.internal.i.b() {

        final com.google.android.gms.common.api.c RH;

        public Bundle hH()
        {
            return null;
        }

        public boolean isConnected()
        {
            return RH.isConnected();
        }

        public boolean jd()
        {
            return com.google.android.gms.common.api.c.h(RH);
        }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                super();
            }
    };
    private final Condition Rm;
    private final i Rn;
    private final int Ro;
    final Queue Rp = new LinkedList();
    private ConnectionResult Rq;
    private int Rr;
    private volatile int Rs;
    private volatile boolean Rt;
    private boolean Ru;
    private int Rv;
    private long Rw;
    private long Rx;
    final Handler Ry;
    BroadcastReceiver Rz;
    private final Context mContext;

    public com.google.android.gms.common.api.c(Context context, Looper looper, ClientSettings clientsettings, Map map, Set set, Set set1, int i1)
    {
        Rm = AR.newCondition();
        Rs = 4;
        Ru = false;
        Rw = 0x1d4c0L;
        Rx = 5000L;
        mContext = context;
        Rn = new i(context, looper, RG);
        Hy = looper;
        Ry = new c(looper);
        Ro = i1;
        GoogleApiClient.ConnectionCallbacks connectioncallbacks;
        for (Iterator iterator = set.iterator(); iterator.hasNext(); Rn.registerConnectionCallbacks(connectioncallbacks))
        {
            connectioncallbacks = (GoogleApiClient.ConnectionCallbacks)iterator.next();
        }

        GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener;
        for (Iterator iterator1 = set1.iterator(); iterator1.hasNext(); Rn.registerConnectionFailedListener(onconnectionfailedlistener))
        {
            onconnectionfailedlistener = (GoogleApiClient.OnConnectionFailedListener)iterator1.next();
        }

        Api api;
        Api.b b1;
        Object obj;
        for (Iterator iterator2 = map.keySet().iterator(); iterator2.hasNext(); RB.put(api.iP(), a(b1, obj, context, looper, clientsettings, RF, new GoogleApiClient.OnConnectionFailedListener(b1) {

        final com.google.android.gms.common.api.c RH;
        final Api.b RI;

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            com.google.android.gms.common.api.c.a(RH).lock();
            if (com.google.android.gms.common.api.c.k(RH) == null || RI.getPriority() < com.google.android.gms.common.api.c.l(RH))
            {
                com.google.android.gms.common.api.c.a(RH, connectionresult);
                com.google.android.gms.common.api.c.b(RH, RI.getPriority());
            }
            com.google.android.gms.common.api.c.d(RH);
            com.google.android.gms.common.api.c.a(RH).unlock();
            return;
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(RH).unlock();
            throw exception;
        }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                RI = b1;
                super();
            }
    })))
        {
            api = (Api)iterator2.next();
            b1 = api.iN();
            obj = map.get(api);
        }

        RC = Collections.unmodifiableList(clientsettings.getScopes());
    }

    static ConnectionResult a(com.google.android.gms.common.api.c c1, ConnectionResult connectionresult)
    {
        c1.Rq = connectionresult;
        return connectionresult;
    }

    private static Api.a a(Api.b b1, Object obj, Context context, Looper looper, ClientSettings clientsettings, GoogleApiClient.ConnectionCallbacks connectioncallbacks, GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        return b1.a(context, looper, clientsettings, obj, connectioncallbacks, onconnectionfailedlistener);
    }

    static Lock a(com.google.android.gms.common.api.c c1)
    {
        return c1.AR;
    }

    private void a(GoogleApiClient googleapiclient, e e1, boolean flag)
    {
        kv.UJ.g(googleapiclient).setResultCallback(new ResultCallback(e1, flag, googleapiclient) {

            final GoogleApiClient Mt;
            final com.google.android.gms.common.api.c RH;
            final e RK;
            final boolean RL;

            public void l(Status status)
            {
                if (status.isSuccess() && RH.isConnected())
                {
                    RH.reconnect();
                }
                RK.b(status);
                if (RL)
                {
                    Mt.disconnect();
                }
            }

            public void onResult(Result result)
            {
                l((Status)result);
            }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                RK = e1;
                RL = flag;
                Mt = googleapiclient;
                super();
            }
        });
    }

    private void a(d d1)
    {
        AR.lock();
        boolean flag;
        if (d1.iP() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
        RE.add(d1);
        d1.a(QV);
        if (!jb())
        {
            break MISSING_BLOCK_LABEL_85;
        }
        d1.v(new Status(8));
        AR.unlock();
        return;
        d1.b(a(d1.iP()));
        AR.unlock();
        return;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    static void a(com.google.android.gms.common.api.c c1, int i1)
    {
        c1.bt(i1);
    }

    static void a(com.google.android.gms.common.api.c c1, GoogleApiClient googleapiclient, e e1, boolean flag)
    {
        c1.a(googleapiclient, e1, flag);
    }

    static boolean a(com.google.android.gms.common.api.c c1, boolean flag)
    {
        c1.Rt = flag;
        return flag;
    }

    static int b(com.google.android.gms.common.api.c c1)
    {
        return c1.Rs;
    }

    static int b(com.google.android.gms.common.api.c c1, int i1)
    {
        c1.Rr = i1;
        return i1;
    }

    private void bt(int i1)
    {
        AR.lock();
        if (Rs == 3)
        {
            break MISSING_BLOCK_LABEL_373;
        }
        if (i1 != -1)
        {
            break MISSING_BLOCK_LABEL_236;
        }
        if (isConnecting())
        {
            Iterator iterator3 = Rp.iterator();
            do
            {
                if (!iterator3.hasNext())
                {
                    break;
                }
                d d1 = (d)iterator3.next();
                if (d1.iV() != 1)
                {
                    d1.cancel();
                    iterator3.remove();
                }
            } while (true);
            break MISSING_BLOCK_LABEL_111;
        }
        break MISSING_BLOCK_LABEL_102;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
        Rp.clear();
        for (Iterator iterator = RE.iterator(); iterator.hasNext(); ((d)iterator.next()).cancel()) { }
        RE.clear();
        for (Iterator iterator1 = HX.iterator(); iterator1.hasNext(); ((com.google.android.gms.common.api.d)iterator1.next()).clear()) { }
        HX.clear();
        if (Rq != null || Rp.isEmpty())
        {
            break MISSING_BLOCK_LABEL_236;
        }
        Ru = true;
        AR.unlock();
        return;
        boolean flag;
        boolean flag1;
        flag = isConnecting();
        flag1 = isConnected();
        Rs = 3;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_277;
        }
        if (i1 != -1)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        Rq = null;
        Rm.signalAll();
        RD = false;
        Iterator iterator2 = RB.values().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            Api.a a1 = (Api.a)iterator2.next();
            if (a1.isConnected())
            {
                a1.disconnect();
            }
        } while (true);
        RD = true;
        Rs = 4;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_373;
        }
        if (i1 == -1)
        {
            break MISSING_BLOCK_LABEL_368;
        }
        Rn.bM(i1);
        RD = false;
        AR.unlock();
        return;
    }

    static Bundle c(com.google.android.gms.common.api.c c1)
    {
        return c1.RA;
    }

    static void d(com.google.android.gms.common.api.c c1)
    {
        c1.iZ();
    }

    static Context e(com.google.android.gms.common.api.c c1)
    {
        return c1.mContext;
    }

    static long f(com.google.android.gms.common.api.c c1)
    {
        return c1.Rw;
    }

    static long g(com.google.android.gms.common.api.c c1)
    {
        return c1.Rx;
    }

    static boolean h(com.google.android.gms.common.api.c c1)
    {
        return c1.RD;
    }

    static void i(com.google.android.gms.common.api.c c1)
    {
        c1.jc();
    }

    private void iZ()
    {
label0:
        {
            Rv = -1 + Rv;
            if (Rv == 0)
            {
                if (Rq == null)
                {
                    break label0;
                }
                Ru = false;
                bt(3);
                if (!jb() || !GooglePlayServicesUtil.g(mContext, Rq.getErrorCode()))
                {
                    jc();
                    Rn.b(Rq);
                }
                RD = false;
            }
            return;
        }
        Rs = 2;
        jc();
        Rm.signalAll();
        ja();
        if (Ru)
        {
            Ru = false;
            bt(-1);
            return;
        }
        Bundle bundle;
        if (RA.isEmpty())
        {
            bundle = null;
        } else
        {
            bundle = RA;
        }
        Rn.l(bundle);
    }

    static void j(com.google.android.gms.common.api.c c1)
    {
        c1.resume();
    }

    private void ja()
    {
        AR.lock();
        Exception exception;
        boolean flag;
        boolean flag1;
        DeadObjectException deadobjectexception;
        if (!isConnected() && !jb())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        s.a(flag, "GoogleApiClient is not connected yet.");
_L1:
        flag1 = Rp.isEmpty();
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        a((d)Rp.remove());
          goto _L1
        deadobjectexception;
        Log.w("GoogleApiClientImpl", "Service died while flushing queue", deadobjectexception);
          goto _L1
        exception;
        AR.unlock();
        throw exception;
        AR.unlock();
        return;
    }

    private void jc()
    {
        AR.lock();
        boolean flag = Rt;
        if (!flag)
        {
            AR.unlock();
            return;
        }
        Rt = false;
        Ry.removeMessages(2);
        Ry.removeMessages(1);
        mContext.unregisterReceiver(Rz);
        AR.unlock();
        return;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    static ConnectionResult k(com.google.android.gms.common.api.c c1)
    {
        return c1.Rq;
    }

    static int l(com.google.android.gms.common.api.c c1)
    {
        return c1.Rr;
    }

    private void resume()
    {
        AR.lock();
        if (jb())
        {
            connect();
        }
        AR.unlock();
        return;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    public Api.a a(Api.c c1)
    {
        Api.a a1 = (Api.a)RB.get(c1);
        s.b(a1, "Appropriate Api was not requested.");
        return a1;
    }

    public BaseImplementation.a a(BaseImplementation.a a1)
    {
        AR.lock();
        if (!isConnected()) goto _L2; else goto _L1
_L1:
        b(a1);
_L4:
        AR.unlock();
        return a1;
_L2:
        Rp.add(a1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    public boolean a(Scope scope)
    {
        return RC.contains(scope.je());
    }

    public BaseImplementation.a b(BaseImplementation.a a1)
    {
        boolean flag;
        if (isConnected() || jb())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "GoogleApiClient is not connected yet.");
        ja();
        try
        {
            a(a1);
        }
        catch (DeadObjectException deadobjectexception)
        {
            bt(1);
            return a1;
        }
        return a1;
    }

    public ConnectionResult blockingConnect()
    {
        boolean flag;
        boolean flag1;
        InterruptedException interruptedexception;
        ConnectionResult connectionresult3;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "blockingConnect must not be called on the UI thread");
        AR.lock();
        connect();
_L1:
        flag1 = isConnecting();
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        Rm.await();
          goto _L1
        interruptedexception;
        Thread.currentThread().interrupt();
        connectionresult3 = new ConnectionResult(15, null);
        AR.unlock();
        return connectionresult3;
        ConnectionResult connectionresult2;
        if (!isConnected())
        {
            break MISSING_BLOCK_LABEL_113;
        }
        connectionresult2 = ConnectionResult.PY;
        AR.unlock();
        return connectionresult2;
        ConnectionResult connectionresult1;
        if (Rq == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        connectionresult1 = Rq;
        AR.unlock();
        return connectionresult1;
        ConnectionResult connectionresult = new ConnectionResult(13, null);
        AR.unlock();
        return connectionresult;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    public ConnectionResult blockingConnect(long l1, TimeUnit timeunit)
    {
        boolean flag;
        long l2;
        boolean flag1;
        ConnectionResult connectionresult4;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "blockingConnect must not be called on the UI thread");
        AR.lock();
        connect();
        l2 = timeunit.toNanos(l1);
_L2:
        flag1 = isConnecting();
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        l2 = Rm.awaitNanos(l2);
        if (l2 > 0L) goto _L2; else goto _L1
_L1:
        connectionresult4 = new ConnectionResult(14, null);
        AR.unlock();
        return connectionresult4;
        InterruptedException interruptedexception;
        interruptedexception;
        ConnectionResult connectionresult3;
        Thread.currentThread().interrupt();
        connectionresult3 = new ConnectionResult(15, null);
        AR.unlock();
        return connectionresult3;
        ConnectionResult connectionresult2;
        if (!isConnected())
        {
            break MISSING_BLOCK_LABEL_157;
        }
        connectionresult2 = ConnectionResult.PY;
        AR.unlock();
        return connectionresult2;
        ConnectionResult connectionresult1;
        if (Rq == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        connectionresult1 = Rq;
        AR.unlock();
        return connectionresult1;
        ConnectionResult connectionresult = new ConnectionResult(13, null);
        AR.unlock();
        return connectionresult;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    public PendingResult clearDefaultAccountAndReconnect()
    {
        s.a(isConnected(), "GoogleApiClient is not connected yet.");
        e e1 = new e(Hy);
        if (RB.containsKey(kv.Fd))
        {
            a(this, e1, false);
            return e1;
        } else
        {
            AtomicReference atomicreference = new AtomicReference();
            GoogleApiClient.ConnectionCallbacks connectioncallbacks = new GoogleApiClient.ConnectionCallbacks(atomicreference, e1) {

                final com.google.android.gms.common.api.c RH;
                final AtomicReference RJ;
                final e RK;

                public void onConnected(Bundle bundle)
                {
                    com.google.android.gms.common.api.c.a(RH, (GoogleApiClient)RJ.get(), RK, true);
                }

                public void onConnectionSuspended(int i1)
                {
                }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                RJ = atomicreference;
                RK = e1;
                super();
            }
            };
            GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener = new GoogleApiClient.OnConnectionFailedListener(e1) {

                final com.google.android.gms.common.api.c RH;
                final e RK;

                public void onConnectionFailed(ConnectionResult connectionresult)
                {
                    RK.b(new Status(8));
                }

            
            {
                RH = com.google.android.gms.common.api.c.this;
                RK = e1;
                super();
            }
            };
            GoogleApiClient googleapiclient = (new GoogleApiClient.Builder(mContext)).addApi(kv.API).addConnectionCallbacks(connectioncallbacks).addOnConnectionFailedListener(onconnectionfailedlistener).setHandler(Ry).build();
            atomicreference.set(googleapiclient);
            googleapiclient.connect();
            return e1;
        }
    }

    public void connect()
    {
        AR.lock();
        boolean flag;
        Ru = false;
        if (isConnected())
        {
            break MISSING_BLOCK_LABEL_30;
        }
        flag = isConnecting();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        AR.unlock();
        return;
        RD = true;
        Rq = null;
        Rs = 1;
        RA.clear();
        Rv = RB.size();
        for (Iterator iterator = RB.values().iterator(); iterator.hasNext(); ((Api.a)iterator.next()).connect()) { }
        break MISSING_BLOCK_LABEL_128;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
        AR.unlock();
        return;
    }

    public void disconnect()
    {
        jc();
        bt(-1);
    }

    public com.google.android.gms.common.api.d g(Object obj)
    {
        s.b(obj, "Listener must not be null");
        AR.lock();
        com.google.android.gms.common.api.d d1;
        d1 = new com.google.android.gms.common.api.d(Hy, obj);
        HX.add(d1);
        AR.unlock();
        return d1;
        Exception exception;
        exception;
        AR.unlock();
        throw exception;
    }

    public Looper getLooper()
    {
        return Hy;
    }

    public boolean isConnected()
    {
        return Rs == 2;
    }

    public boolean isConnecting()
    {
        return Rs == 1;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        return Rn.isConnectionCallbacksRegistered(connectioncallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        return Rn.isConnectionFailedListenerRegistered(onconnectionfailedlistener);
    }

    boolean jb()
    {
        return Rt;
    }

    public void reconnect()
    {
        disconnect();
        connect();
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        Rn.registerConnectionCallbacks(connectioncallbacks);
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        Rn.registerConnectionFailedListener(onconnectionfailedlistener);
    }

    public void stopAutoManage(FragmentActivity fragmentactivity)
    {
        boolean flag;
        if (Ro >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "Called stopAutoManage but automatic lifecycle management is not enabled.");
        com.google.android.gms.common.api.f.a(fragmentactivity).bv(Ro);
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        Rn.unregisterConnectionCallbacks(connectioncallbacks);
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        Rn.unregisterConnectionFailedListener(onconnectionfailedlistener);
    }
}
