// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.google.android.gms.internal:
//            ji, iz, jd, je, 
//            jg

public final class jc extends h
{
    static final class a
        implements com.google.android.gms.cast.Cast.ApplicationConnectionResult
    {

        private final Status EI;
        private final ApplicationMetadata Nv;
        private final String Nw;
        private final boolean Nx;
        private final String wY;

        public ApplicationMetadata getApplicationMetadata()
        {
            return Nv;
        }

        public String getApplicationStatus()
        {
            return Nw;
        }

        public String getSessionId()
        {
            return wY;
        }

        public Status getStatus()
        {
            return EI;
        }

        public boolean getWasLaunched()
        {
            return Nx;
        }

        public a(Status status)
        {
            this(status, null, null, null, false);
        }

        public a(Status status, ApplicationMetadata applicationmetadata, String s, String s1, boolean flag)
        {
            EI = status;
            Nv = applicationmetadata;
            Nw = s;
            wY = s1;
            Nx = flag;
        }
    }

    class b
        implements com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    {

        final jc Ny;

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            jc.b(Ny);
        }

        private b()
        {
            Ny = jc.this;
            super();
        }

    }

    class c extends jh.a
    {

        final jc Ny;
        private final AtomicBoolean Nz;

        private boolean aV(int k)
        {
            Object obj = jc.hO();
            obj;
            JVM INSTR monitorenter ;
            if (jc.j(Ny) == null)
            {
                break MISSING_BLOCK_LABEL_49;
            }
            jc.j(Ny).e(new Status(k));
            jc.b(Ny, null);
            return true;
            obj;
            JVM INSTR monitorexit ;
            return false;
            Exception exception;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private void c(long l1, int k)
        {
            com.google.android.gms.common.api.BaseImplementation.b b1;
            synchronized (jc.i(Ny))
            {
                b1 = (com.google.android.gms.common.api.BaseImplementation.b)jc.i(Ny).remove(Long.valueOf(l1));
            }
            if (b1 != null)
            {
                b1.e(new Status(k));
            }
            return;
            exception;
            map;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ApplicationMetadata applicationmetadata, String s, String s1, boolean flag)
        {
            if (Nz.get())
            {
                return;
            }
            jc.a(Ny, applicationmetadata);
            jc.a(Ny, applicationmetadata.getApplicationId());
            jc.b(Ny, s1);
            synchronized (jc.hN())
            {
                if (jc.d(Ny) != null)
                {
                    jc.d(Ny).e(new a(new Status(0), applicationmetadata, s, s1, flag));
                    jc.a(Ny, null);
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(String s, double d1, boolean flag)
        {
            jc.hM().b("Deprecated callback: \"onStatusreceived\"", new Object[0]);
        }

        public void a(String s, long l1)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                c(l1, 0);
                return;
            }
        }

        public void a(String s, long l1, int k)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                c(l1, k);
                return;
            }
        }

        public void aR(int k)
        {
            if (hP())
            {
                ji ji1 = jc.hM();
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(k);
                ji1.b("ICastDeviceControllerListener.onDisconnected: %d", aobj);
                if (k != 0)
                {
                    Ny.bL(2);
                    return;
                }
            }
        }

        public void aS(int k)
        {
            if (Nz.get())
            {
                return;
            }
            synchronized (jc.hN())
            {
                if (jc.d(Ny) != null)
                {
                    jc.d(Ny).e(new a(new Status(k)));
                    jc.a(Ny, null);
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void aT(int k)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                aV(k);
                return;
            }
        }

        public void aU(int k)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                aV(k);
                return;
            }
        }

        public void b(iz iz1)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                jc.hM().b("onApplicationStatusChanged", new Object[0]);
                jc.f(Ny).post(new Runnable(this, iz1) {

                    final c NB;
                    final iz ND;

                    public void run()
                    {
                        jc.a(NB.Ny, ND);
                    }

            
            {
                NB = c1;
                ND = iz1;
                super();
            }
                });
                return;
            }
        }

        public void b(je je1)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                jc.hM().b("onDeviceStatusChanged", new Object[0]);
                jc.f(Ny).post(new Runnable(this, je1) {

                    final c NB;
                    final je NC;

                    public void run()
                    {
                        jc.a(NB.Ny, NC);
                    }

            
            {
                NB = c1;
                NC = je1;
                super();
            }
                });
                return;
            }
        }

        public void b(String s, byte abyte0[])
        {
            if (Nz.get())
            {
                return;
            } else
            {
                ji ji1 = jc.hM();
                Object aobj[] = new Object[2];
                aobj[0] = s;
                aobj[1] = Integer.valueOf(abyte0.length);
                ji1.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", aobj);
                return;
            }
        }

        public boolean hP()
        {
            if (Nz.getAndSet(true))
            {
                return false;
            } else
            {
                jc.c(Ny);
                return true;
            }
        }

        public boolean hQ()
        {
            return Nz.get();
        }

        public void l(String s, String s1)
        {
            if (Nz.get())
            {
                return;
            } else
            {
                jc.hM().b("Receive (type=text, ns=%s) %s", new Object[] {
                    s, s1
                });
                jc.f(Ny).post(new Runnable(this, s, s1) {

                    final String Ln;
                    final c NB;
                    final String NE;

                    public void run()
                    {
                        com.google.android.gms.cast.Cast.MessageReceivedCallback messagereceivedcallback;
                        synchronized (jc.g(NB.Ny))
                        {
                            messagereceivedcallback = (com.google.android.gms.cast.Cast.MessageReceivedCallback)jc.g(NB.Ny).get(Ln);
                        }
                        if (messagereceivedcallback != null)
                        {
                            messagereceivedcallback.onMessageReceived(com.google.android.gms.internal.jc.h(NB.Ny), Ln, NE);
                            return;
                        } else
                        {
                            ji ji1 = jc.hM();
                            Object aobj[] = new Object[1];
                            aobj[0] = Ln;
                            ji1.b("Discarded message for unknown namespace '%s'", aobj);
                            return;
                        }
                        exception;
                        map;
                        JVM INSTR monitorexit ;
                        throw exception;
                    }

            
            {
                NB = c1;
                Ln = s;
                NE = s1;
                super();
            }
                });
                return;
            }
        }

        public void onApplicationDisconnected(int k)
        {
            if (!Nz.get())
            {
                jc.a(Ny, null);
                jc.b(Ny, null);
                aV(k);
                if (jc.e(Ny) != null)
                {
                    jc.f(Ny).post(new Runnable(this, k) {

                        final int NA;
                        final c NB;

                        public void run()
                        {
                            if (jc.e(NB.Ny) != null)
                            {
                                jc.e(NB.Ny).onApplicationDisconnected(NA);
                            }
                        }

            
            {
                NB = c1;
                NA = k;
                super();
            }
                    });
                    return;
                }
            }
        }

        private c()
        {
            Ny = jc.this;
            super();
            Nz = new AtomicBoolean(false);
        }

    }


    private static final ji MZ = new ji("CastClientImpl");
    private static final Object Nt = new Object();
    private static final Object Nu = new Object();
    private final com.google.android.gms.cast.Cast.Listener Lx;
    private double Mh;
    private boolean Mi;
    private ApplicationMetadata Na;
    private final CastDevice Nb;
    private final Map Nc = new HashMap();
    private final long Nd;
    private c Ne;
    private String Nf;
    private boolean Ng;
    private boolean Nh;
    private boolean Ni;
    private int Nj;
    private int Nk;
    private final AtomicLong Nl = new AtomicLong(0L);
    private String Nm;
    private String Nn;
    private Bundle No;
    private final Map Np = new HashMap();
    private final b Nq = new b();
    private com.google.android.gms.common.api.BaseImplementation.b Nr;
    private com.google.android.gms.common.api.BaseImplementation.b Ns;
    private final Handler mHandler;

    public jc(Context context, Looper looper, CastDevice castdevice, long l1, com.google.android.gms.cast.Cast.Listener listener, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, 
            com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, (String[])null);
        Nb = castdevice;
        Lx = listener;
        Nd = l1;
        mHandler = new Handler(looper);
        hG();
        registerConnectionFailedListener(Nq);
    }

    static ApplicationMetadata a(jc jc1, ApplicationMetadata applicationmetadata)
    {
        jc1.Na = applicationmetadata;
        return applicationmetadata;
    }

    static com.google.android.gms.common.api.BaseImplementation.b a(jc jc1, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        jc1.Nr = b1;
        return b1;
    }

    static String a(jc jc1, String s)
    {
        jc1.Nm = s;
        return s;
    }

    private void a(iz iz1)
    {
        String s = iz1.hD();
        boolean flag;
        ji ji1;
        Object aobj[];
        if (!jd.a(s, Nf))
        {
            Nf = s;
            flag = true;
        } else
        {
            flag = false;
        }
        ji1 = MZ;
        aobj = new Object[2];
        aobj[0] = Boolean.valueOf(flag);
        aobj[1] = Boolean.valueOf(Ng);
        ji1.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", aobj);
        if (Lx != null && (flag || Ng))
        {
            Lx.onApplicationStatusChanged();
        }
        Ng = false;
    }

    static void a(jc jc1, iz iz1)
    {
        jc1.a(iz1);
    }

    static void a(jc jc1, je je1)
    {
        jc1.a(je1);
    }

    private void a(je je1)
    {
        ApplicationMetadata applicationmetadata = je1.getApplicationMetadata();
        if (!jd.a(applicationmetadata, Na))
        {
            Na = applicationmetadata;
            Lx.onApplicationMetadataChanged(Na);
        }
        double d1 = je1.hJ();
        boolean flag;
        boolean flag1;
        ji ji1;
        Object aobj[];
        int k;
        boolean flag2;
        ji ji2;
        Object aobj1[];
        int i1;
        boolean flag3;
        ji ji3;
        Object aobj2[];
        if (d1 != (0.0D / 0.0D) && d1 != Mh)
        {
            Mh = d1;
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = je1.hR();
        if (flag1 != Mi)
        {
            Mi = flag1;
            flag = true;
        }
        ji1 = MZ;
        aobj = new Object[2];
        aobj[0] = Boolean.valueOf(flag);
        aobj[1] = Boolean.valueOf(Nh);
        ji1.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", aobj);
        if (Lx != null && (flag || Nh))
        {
            Lx.onVolumeChanged();
        }
        k = je1.hS();
        if (k != Nj)
        {
            Nj = k;
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        ji2 = MZ;
        aobj1 = new Object[2];
        aobj1[0] = Boolean.valueOf(flag2);
        aobj1[1] = Boolean.valueOf(Nh);
        ji2.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", aobj1);
        if (Lx != null && (flag2 || Nh))
        {
            Lx.aL(Nj);
        }
        i1 = je1.hT();
        if (i1 != Nk)
        {
            Nk = i1;
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        ji3 = MZ;
        aobj2 = new Object[2];
        aobj2[0] = Boolean.valueOf(flag3);
        aobj2[1] = Boolean.valueOf(Nh);
        ji3.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", aobj2);
        if (Lx != null && (flag3 || Nh))
        {
            Lx.aM(Nk);
        }
        Nh = false;
    }

    static com.google.android.gms.common.api.BaseImplementation.b b(jc jc1, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        jc1.Ns = b1;
        return b1;
    }

    static String b(jc jc1, String s)
    {
        jc1.Nn = s;
        return s;
    }

    static void b(jc jc1)
    {
        jc1.hK();
    }

    private void c(com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        synchronized (Nt)
        {
            if (Nr != null)
            {
                Nr.e(new a(new Status(2002)));
            }
            Nr = b1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void c(jc jc1)
    {
        jc1.hG();
    }

    static com.google.android.gms.common.api.BaseImplementation.b d(jc jc1)
    {
        return jc1.Nr;
    }

    static com.google.android.gms.cast.Cast.Listener e(jc jc1)
    {
        return jc1.Lx;
    }

    private void e(com.google.android.gms.common.api.BaseImplementation.b b1)
    {
label0:
        {
            synchronized (Nu)
            {
                if (Ns == null)
                {
                    break label0;
                }
                b1.e(new Status(2001));
            }
            return;
        }
        Ns = b1;
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Handler f(jc jc1)
    {
        return jc1.mHandler;
    }

    static Map g(jc jc1)
    {
        return jc1.Nc;
    }

    static CastDevice h(jc jc1)
    {
        return jc1.Nb;
    }

    private void hG()
    {
        Ni = false;
        Nj = -1;
        Nk = -1;
        Na = null;
        Nf = null;
        Mh = 0.0D;
        Mi = false;
    }

    private void hK()
    {
        MZ.b("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (Nc)
        {
            Nc.clear();
        }
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void hL()
    {
        if (!Ni || Ne == null || Ne.hQ())
        {
            throw new IllegalStateException("Not connected to a device");
        } else
        {
            return;
        }
    }

    static ji hM()
    {
        return MZ;
    }

    static Object hN()
    {
        return Nt;
    }

    static Object hO()
    {
        return Nu;
    }

    static Map i(jc jc1)
    {
        return jc1.Np;
    }

    static com.google.android.gms.common.api.BaseImplementation.b j(jc jc1)
    {
        return jc1.Ns;
    }

    public void L(boolean flag)
    {
        ((jg)jG()).a(flag, Mh, Mi);
    }

    public void a(double d1)
    {
        if (Double.isInfinite(d1) || Double.isNaN(d1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Volume cannot be ").append(d1).toString());
        } else
        {
            ((jg)jG()).a(d1, Mh, Mi);
            return;
        }
    }

    protected void a(int k, IBinder ibinder, Bundle bundle)
    {
        ji ji1 = MZ;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(k);
        ji1.b("in onPostInitHandler; statusCode=%d", aobj);
        if (k == 0 || k == 1001)
        {
            Ni = true;
            Ng = true;
            Nh = true;
        } else
        {
            Ni = false;
        }
        if (k == 1001)
        {
            No = new Bundle();
            No.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            k = 0;
        }
        super.a(k, ibinder, bundle);
    }

    protected void a(p p1, com.google.android.gms.common.internal.h.e e1)
    {
        Bundle bundle = new Bundle();
        ji ji1 = MZ;
        Object aobj[] = new Object[2];
        aobj[0] = Nm;
        aobj[1] = Nn;
        ji1.b("getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s", aobj);
        Nb.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", Nd);
        if (Nm != null)
        {
            bundle.putString("last_application_id", Nm);
            if (Nn != null)
            {
                bundle.putString("last_session_id", Nn);
            }
        }
        Ne = new c();
        p1.a(e1, 0x640578, getContext().getPackageName(), Ne.asBinder(), bundle);
    }

    public void a(String s, com.google.android.gms.cast.Cast.MessageReceivedCallback messagereceivedcallback)
    {
        jd.aM(s);
        aL(s);
        if (messagereceivedcallback != null)
        {
            synchronized (Nc)
            {
                Nc.put(s, messagereceivedcallback);
            }
            ((jg)jG()).aP(s);
        }
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, LaunchOptions launchoptions, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        c(b1);
        ((jg)jG()).a(s, launchoptions);
    }

    public void a(String s, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        e(b1);
        ((jg)jG()).aO(s);
    }

    public void a(String s, String s1, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        if (TextUtils.isEmpty(s1))
        {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (s1.length() > 0x10000)
        {
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
        jd.aM(s);
        hL();
        long l1 = Nl.incrementAndGet();
        try
        {
            Np.put(Long.valueOf(l1), b1);
            ((jg)jG()).a(s, s1, l1);
            return;
        }
        catch (Throwable throwable)
        {
            Np.remove(Long.valueOf(l1));
            throw throwable;
        }
    }

    public void a(String s, boolean flag, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        c(b1);
        ((jg)jG()).h(s, flag);
    }

    public void aL(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        com.google.android.gms.cast.Cast.MessageReceivedCallback messagereceivedcallback;
        synchronized (Nc)
        {
            messagereceivedcallback = (com.google.android.gms.cast.Cast.MessageReceivedCallback)Nc.remove(s);
        }
        if (messagereceivedcallback == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        ((jg)jG()).aQ(s);
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        ji ji1 = MZ;
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = illegalstateexception.getMessage();
        ji1.a(illegalstateexception, "Error unregistering namespace (%s): %s", aobj);
        return;
    }

    protected jg aq(IBinder ibinder)
    {
        return jg.a.ar(ibinder);
    }

    public void b(String s, String s1, com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        c(b1);
        ((jg)jG()).m(s, s1);
    }

    public void d(com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        e(b1);
        ((jg)jG()).hU();
    }

    public void disconnect()
    {
        ji ji1 = MZ;
        Object aobj[] = new Object[2];
        aobj[0] = Ne;
        aobj[1] = Boolean.valueOf(isConnected());
        ji1.b("disconnect(); ServiceListener=%s, isConnected=%b", aobj);
        c c1 = Ne;
        Ne = null;
        if (c1 == null || !c1.hP())
        {
            MZ.b("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        hK();
        if (isConnected() || isConnecting())
        {
            ((jg)jG()).disconnect();
        }
        super.disconnect();
        return;
        RemoteException remoteexception;
        remoteexception;
        ji ji2 = MZ;
        Object aobj1[] = new Object[1];
        aobj1[0] = remoteexception.getMessage();
        ji2.a(remoteexception, "Error while disconnecting the controller interface: %s", aobj1);
        super.disconnect();
        return;
        Exception exception;
        exception;
        super.disconnect();
        throw exception;
    }

    public ApplicationMetadata getApplicationMetadata()
    {
        hL();
        return Na;
    }

    public String getApplicationStatus()
    {
        hL();
        return Nf;
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    public Bundle hH()
    {
        if (No != null)
        {
            Bundle bundle = No;
            No = null;
            return bundle;
        } else
        {
            return super.hH();
        }
    }

    public void hI()
    {
        ((jg)jG()).hI();
    }

    public double hJ()
    {
        hL();
        return Mh;
    }

    public boolean isMute()
    {
        hL();
        return Mi;
    }

    protected IInterface l(IBinder ibinder)
    {
        return aq(ibinder);
    }

}
