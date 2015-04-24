// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.common.internal:
//            s, i, j, p

public abstract class com.google.android.gms.common.internal.h
    implements com.google.android.gms.common.api.Api.a, i.b
{
    final class a extends Handler
    {

        final com.google.android.gms.common.internal.h Uf;

        public void handleMessage(Message message)
        {
            if (message.what == 1 && !Uf.isConnecting())
            {
                b b2 = (b)message.obj;
                b2.jH();
                b2.unregister();
                return;
            }
            if (message.what == 3)
            {
                com.google.android.gms.common.internal.h.a(Uf).b(new ConnectionResult(((Integer)message.obj).intValue(), null));
                return;
            }
            if (message.what == 4)
            {
                com.google.android.gms.common.internal.h.a(Uf, 4, null);
                com.google.android.gms.common.internal.h.a(Uf).bM(((Integer)message.obj).intValue());
                com.google.android.gms.common.internal.h.a(Uf, 1, null);
                return;
            }
            if (message.what == 2 && !Uf.isConnected())
            {
                b b1 = (b)message.obj;
                b1.jH();
                b1.unregister();
                return;
            }
            if (message.what == 2 || message.what == 1)
            {
                ((b)message.obj).jI();
                return;
            } else
            {
                Log.wtf("GmsClient", "Don't know how to handle this message.");
                return;
            }
        }

        public a(Looper looper)
        {
            Uf = com.google.android.gms.common.internal.h.this;
            super(looper);
        }
    }

    public abstract class b
    {

        final com.google.android.gms.common.internal.h Uf;
        private boolean Ug;
        private Object mListener;

        public abstract void j(Object obj);

        public abstract void jH();

        public void jI()
        {
            this;
            JVM INSTR monitorenter ;
            Object obj;
            obj = mListener;
            if (Ug)
            {
                Log.w("GmsClient", (new StringBuilder()).append("Callback proxy ").append(this).append(" being reused. This is not safe.").toString());
            }
            this;
            JVM INSTR monitorexit ;
            Exception exception;
            if (obj != null)
            {
                try
                {
                    j(obj);
                }
                catch (RuntimeException runtimeexception)
                {
                    jH();
                    throw runtimeexception;
                }
            } else
            {
                jH();
            }
            this;
            JVM INSTR monitorenter ;
            Ug = true;
            this;
            JVM INSTR monitorexit ;
            unregister();
            return;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            Exception exception1;
            exception1;
            this;
            JVM INSTR monitorexit ;
            throw exception1;
        }

        public void jJ()
        {
            this;
            JVM INSTR monitorenter ;
            mListener = null;
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void unregister()
        {
            jJ();
            synchronized (com.google.android.gms.common.internal.h.b(Uf))
            {
                com.google.android.gms.common.internal.h.b(Uf).remove(this);
            }
            return;
            exception;
            arraylist;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public b(Object obj)
        {
            Uf = com.google.android.gms.common.internal.h.this;
            super();
            mListener = obj;
            Ug = false;
        }
    }

    public static final class c
        implements com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    {

        private final com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks Uh;

        public boolean equals(Object obj)
        {
            if (obj instanceof c)
            {
                return Uh.equals(((c)obj).Uh);
            } else
            {
                return Uh.equals(obj);
            }
        }

        public void onConnected(Bundle bundle)
        {
            Uh.onConnected(bundle);
        }

        public void onConnectionSuspended(int k)
        {
            Uh.onDisconnected();
        }

        public c(com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks connectioncallbacks)
        {
            Uh = connectioncallbacks;
        }
    }

    public abstract class d extends b
    {

        private final DataHolder Rb;
        final com.google.android.gms.common.internal.h Uf;

        protected abstract void b(Object obj, DataHolder dataholder);

        protected final void j(Object obj)
        {
            b(obj, Rb);
        }

        protected void jH()
        {
            if (Rb != null)
            {
                Rb.close();
            }
        }

        public volatile void jI()
        {
            super.jI();
        }

        public volatile void jJ()
        {
            super.jJ();
        }

        public volatile void unregister()
        {
            super.unregister();
        }

        public d(Object obj, DataHolder dataholder)
        {
            Uf = com.google.android.gms.common.internal.h.this;
            super(obj);
            Rb = dataholder;
        }
    }

    public static final class e extends o.a
    {

        private com.google.android.gms.common.internal.h Ui;

        public void b(int k, IBinder ibinder, Bundle bundle)
        {
            s.b("onPostInitComplete can be called only once per call to getServiceFromBroker", Ui);
            Ui.a(k, ibinder, bundle);
            Ui = null;
        }

        public e(com.google.android.gms.common.internal.h h1)
        {
            Ui = h1;
        }
    }

    public final class f
        implements ServiceConnection
    {

        final com.google.android.gms.common.internal.h Uf;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            Uf.av(ibinder);
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            Uf.mHandler.sendMessage(Uf.mHandler.obtainMessage(4, Integer.valueOf(1)));
        }

        public f()
        {
            Uf = com.google.android.gms.common.internal.h.this;
            super();
        }
    }

    public static final class g
        implements com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    {

        private final com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener Uj;

        public boolean equals(Object obj)
        {
            if (obj instanceof g)
            {
                return Uj.equals(((g)obj).Uj);
            } else
            {
                return Uj.equals(obj);
            }
        }

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            Uj.onConnectionFailed(connectionresult);
        }

        public g(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
        {
            Uj = onconnectionfailedlistener;
        }
    }

    public final class h extends b
    {

        final com.google.android.gms.common.internal.h Uf;
        public final Bundle Uk;
        public final IBinder Ul;
        public final int statusCode;

        protected void b(Boolean boolean1)
        {
            if (boolean1 == null)
            {
                com.google.android.gms.common.internal.h.a(Uf, 1, null);
                return;
            }
            statusCode;
            JVM INSTR lookupswitch 2: default 44
        //                       0: 144
        //                       10: 276;
               goto _L1 _L2 _L3
_L1:
            RemoteException remoteexception;
            String s1;
            IInterface iinterface;
            PendingIntent pendingintent;
            if (Uk != null)
            {
                pendingintent = (PendingIntent)Uk.getParcelable("pendingIntent");
            } else
            {
                pendingintent = null;
            }
            if (com.google.android.gms.common.internal.h.c(Uf) != null)
            {
                com.google.android.gms.common.internal.j.I(com.google.android.gms.common.internal.h.d(Uf)).b(Uf.getStartServiceAction(), com.google.android.gms.common.internal.h.c(Uf));
                com.google.android.gms.common.internal.h.a(Uf, null);
            }
            com.google.android.gms.common.internal.h.a(Uf, 1, null);
            com.google.android.gms.common.internal.h.a(Uf).b(new ConnectionResult(statusCode, pendingintent));
            return;
_L2:
            s1 = Ul.getInterfaceDescriptor();
            if (!Uf.getServiceDescriptor().equals(s1)) goto _L5; else goto _L4
_L4:
            iinterface = Uf.l(Ul);
            if (iinterface != null)
            {
                try
                {
                    com.google.android.gms.common.internal.h.a(Uf, 3, iinterface);
                    com.google.android.gms.common.internal.h.a(Uf).ed();
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (RemoteException remoteexception) { }
            }
_L5:
            com.google.android.gms.common.internal.j.I(com.google.android.gms.common.internal.h.d(Uf)).b(Uf.getStartServiceAction(), com.google.android.gms.common.internal.h.c(Uf));
            com.google.android.gms.common.internal.h.a(Uf, null);
            com.google.android.gms.common.internal.h.a(Uf, 1, null);
            com.google.android.gms.common.internal.h.a(Uf).b(new ConnectionResult(8, null));
            return;
_L3:
            com.google.android.gms.common.internal.h.a(Uf, 1, null);
            throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
        }

        protected void j(Object obj)
        {
            b((Boolean)obj);
        }

        protected void jH()
        {
        }

        public h(int k, IBinder ibinder, Bundle bundle)
        {
            Uf = com.google.android.gms.common.internal.h.this;
            super(Boolean.valueOf(true));
            statusCode = k;
            Ul = ibinder;
            Uk = bundle;
        }
    }


    public static final String Ue[] = {
        "service_esmobile", "service_googleme"
    };
    private final String FB[];
    private final Looper Hy;
    private final i Rn;
    private IInterface TZ;
    private final ArrayList Ua;
    private f Ub;
    private int Uc;
    boolean Ud;
    private final Context mContext;
    final Handler mHandler;
    private final Object mL;

    public transient com.google.android.gms.common.internal.h(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String as[])
    {
        mL = new Object();
        Ua = new ArrayList();
        Uc = 1;
        Ud = false;
        mContext = (Context)s.l(context);
        Hy = (Looper)s.b(looper, "Looper must not be null");
        Rn = new i(context, looper, this);
        mHandler = new a(looper);
        c(as);
        FB = as;
        registerConnectionCallbacks((com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks)s.l(connectioncallbacks));
        registerConnectionFailedListener((com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener)s.l(onconnectionfailedlistener));
    }

    public transient com.google.android.gms.common.internal.h(Context context, com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener, String as[])
    {
        this(context, context.getMainLooper(), ((com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks) (new c(connectioncallbacks))), ((com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener) (new g(onconnectionfailedlistener))), as);
    }

    static f a(com.google.android.gms.common.internal.h h1, f f1)
    {
        h1.Ub = f1;
        return f1;
    }

    static i a(com.google.android.gms.common.internal.h h1)
    {
        return h1.Rn;
    }

    private void a(int k, IInterface iinterface)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if (k == 3)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (iinterface != null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (flag1 != flag2)
        {
            flag = false;
        }
        s.O(flag);
        synchronized (mL)
        {
            Uc = k;
            TZ = iinterface;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(com.google.android.gms.common.internal.h h1, int k, IInterface iinterface)
    {
        h1.a(k, iinterface);
    }

    static ArrayList b(com.google.android.gms.common.internal.h h1)
    {
        return h1.Ua;
    }

    static f c(com.google.android.gms.common.internal.h h1)
    {
        return h1.Ub;
    }

    static Context d(com.google.android.gms.common.internal.h h1)
    {
        return h1.mContext;
    }

    public void a(int k, IBinder ibinder, Bundle bundle)
    {
        mHandler.sendMessage(mHandler.obtainMessage(1, new h(k, ibinder, bundle)));
    }

    public final void a(b b1)
    {
        synchronized (Ua)
        {
            Ua.add(b1);
        }
        mHandler.sendMessage(mHandler.obtainMessage(2, b1));
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public abstract void a(p p, e e1);

    protected final void av(IBinder ibinder)
    {
        try
        {
            a(p.a.ay(ibinder), new e(this));
            return;
        }
        catch (DeadObjectException deadobjectexception)
        {
            Log.w("GmsClient", "service died");
            bL(1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("GmsClient", "Remote exception occurred", remoteexception);
        }
    }

    public void bL(int k)
    {
        mHandler.sendMessage(mHandler.obtainMessage(4, Integer.valueOf(k)));
    }

    public transient void c(String as[])
    {
    }

    public void connect()
    {
        Ud = true;
        a(2, ((IInterface) (null)));
        int k = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext);
        if (k != 0)
        {
            a(1, ((IInterface) (null)));
            mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(k)));
        } else
        {
            if (Ub != null)
            {
                Log.e("GmsClient", (new StringBuilder()).append("Calling connect() while still connected, missing disconnect() for ").append(getStartServiceAction()).toString());
                j.I(mContext).b(getStartServiceAction(), Ub);
            }
            Ub = new f();
            if (!j.I(mContext).a(getStartServiceAction(), Ub))
            {
                Log.e("GmsClient", (new StringBuilder()).append("unable to connect to service: ").append(getStartServiceAction()).toString());
                mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(9)));
                return;
            }
        }
    }

    public void disconnect()
    {
        Ud = false;
        ArrayList arraylist = Ua;
        arraylist;
        JVM INSTR monitorenter ;
        int k = Ua.size();
        int i1 = 0;
_L2:
        if (i1 >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        ((b)Ua.get(i1)).jJ();
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        Ua.clear();
        arraylist;
        JVM INSTR monitorexit ;
        a(1, ((IInterface) (null)));
        if (Ub != null)
        {
            j.I(mContext).b(getStartServiceAction(), Ub);
            Ub = null;
        }
        return;
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void eb()
    {
        if (!isConnected())
        {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        } else
        {
            return;
        }
    }

    public final Context getContext()
    {
        return mContext;
    }

    public final Looper getLooper()
    {
        return Hy;
    }

    public abstract String getServiceDescriptor();

    public abstract String getStartServiceAction();

    public Bundle hH()
    {
        return null;
    }

    public boolean isConnected()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (Uc == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isConnecting()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (Uc == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isConnectionCallbacksRegistered(com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks connectioncallbacks)
    {
        return Rn.isConnectionCallbacksRegistered(new c(connectioncallbacks));
    }

    public boolean isConnectionFailedListenerRegistered(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        return Rn.isConnectionFailedListenerRegistered(onconnectionfailedlistener);
    }

    public final String[] jF()
    {
        return FB;
    }

    public final IInterface jG()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (Uc == 4)
        {
            throw new DeadObjectException();
        }
        break MISSING_BLOCK_LABEL_28;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        eb();
        boolean flag;
        IInterface iinterface;
        if (TZ != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(flag, "Client is connected but service is null");
        iinterface = TZ;
        obj;
        JVM INSTR monitorexit ;
        return iinterface;
    }

    public boolean jd()
    {
        return Ud;
    }

    public abstract IInterface l(IBinder ibinder);

    public void registerConnectionCallbacks(com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks connectioncallbacks)
    {
        Rn.registerConnectionCallbacks(new c(connectioncallbacks));
    }

    public void registerConnectionCallbacks(com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        Rn.registerConnectionCallbacks(connectioncallbacks);
    }

    public void registerConnectionFailedListener(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        Rn.registerConnectionFailedListener(onconnectionfailedlistener);
    }

    public void registerConnectionFailedListener(com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        Rn.registerConnectionFailedListener(onconnectionfailedlistener);
    }

    public void unregisterConnectionCallbacks(com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks connectioncallbacks)
    {
        Rn.unregisterConnectionCallbacks(new c(connectioncallbacks));
    }

    public void unregisterConnectionFailedListener(com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        Rn.unregisterConnectionFailedListener(onconnectionfailedlistener);
    }

}
