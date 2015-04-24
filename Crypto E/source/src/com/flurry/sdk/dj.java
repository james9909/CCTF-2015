// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import com.flurry.android.impl.analytics.FlurryAnalyticsModule;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.flurry.sdk:
//            cy, el, dc, cx, 
//            fa, dk, fb, db, 
//            dn, dd, dp, dq, 
//            dr, dm, eb, em, 
//            do, da, dz, di, 
//            dh, fc, dw, dy, 
//            ea, dl

public class dj
    implements dm.b, dq.a
{

    static int a = 100;
    static int b = 10;
    static int c = 1000;
    static int d = 0x27100;
    static int e = 50;
    static int f = 20;
    private static final String g = com/flurry/sdk/dj.getSimpleName();
    private String A;
    private String B;
    private byte C;
    private Location D;
    private boolean E;
    private String F;
    private byte G;
    private long H;
    private long I;
    private final Map J = new HashMap();
    private final List K = new ArrayList();
    private boolean L;
    private int M;
    private final List N = new ArrayList();
    private int O;
    private int P;
    private final cy Q = new cy();
    private Map R;
    private dm S;
    private int T;
    private boolean U;
    private final AtomicInteger h = new AtomicInteger(0);
    private final AtomicInteger i = new AtomicInteger(0);
    private final AtomicInteger j = new AtomicInteger(0);
    private final String k;
    private String l;
    private WeakReference m;
    private File n;
    private List o;
    private final Map p = new HashMap();
    private boolean q;
    private long r;
    private List s;
    private com.google.android.gms.ads.identifier.AdvertisingIdClient.Info t;
    private byte u[];
    private String v;
    private long w;
    private long x;
    private long y;
    private long z;

    public dj(String s1)
    {
        n = null;
        s = new ArrayList();
        A = "";
        B = "";
        C = -1;
        U = false;
        el.a(4, g, "Creating new Flurry session");
        k = s1;
        m = new WeakReference(null);
    }

    private void A()
    {
        dc dc1;
        el.a(3, g, "generating agent report");
        dc1 = new dc(k, l, q, o(), r, w, s, p(), Q.a(false), a(), cx.a().b(), System.currentTimeMillis());
        o = new ArrayList(s);
        if (dc1 == null)
        {
            break MISSING_BLOCK_LABEL_180;
        }
        if (dc1.a() != null)
        {
            el.a(3, g, (new StringBuilder()).append("generated report of size ").append(dc1.a().length).append(" with ").append(s.size()).append(" reports.").toString());
            a(dc1.a());
            s.removeAll(o);
            o = null;
            B();
            return;
        }
        try
        {
            el.d(g, "Error generating report");
            return;
        }
        catch (Throwable throwable)
        {
            el.a(6, g, "", throwable);
        }
        return;
    }

    private void B()
    {
        this;
        JVM INSTR monitorenter ;
        if (fa.a(n)) goto _L2; else goto _L1
_L1:
        el.d(g, "Error persisting report: could not create directory");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(n));
        dk dk1 = new dk();
        dk1.a(q);
        dk1.a(r);
        dk1.a(s);
        dk1.a(dataoutputstream, k, i());
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        el.b(g, "Error saving persistent data", exception1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void C()
    {
        Object obj = null;
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        el.a(4, g, (new StringBuilder()).append("Loading persistent data: ").append(n.getAbsolutePath()).toString());
        flag = n.exists();
        if (!flag) goto _L2; else goto _L1
_L1:
        Object obj1 = new FileInputStream(n);
        DataInputStream datainputstream = new DataInputStream(((java.io.InputStream) (obj1)));
        dk dk1 = new dk();
        dk1.a(datainputstream, k);
        q = dk1.a();
        r = dk1.c();
        s = dk1.b();
        boolean flag1 = true;
        fb.a(datainputstream);
        fb.a(((java.io.Closeable) (obj1)));
_L3:
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        el.a(3, g, "Deleting agent cache file");
        n.delete();
_L4:
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        q = false;
        r = w;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        datainputstream = null;
_L6:
        el.b(g, "Error loading persistent data", exception1);
        fb.a(datainputstream);
        fb.a(((java.io.Closeable) (obj)));
        flag1 = false;
          goto _L3
_L5:
        Exception exception2;
        fb.a(datainputstream);
        fb.a(((java.io.Closeable) (obj1)));
        throw exception2;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        el.a(4, g, "Agent cache file doesn't exist.");
        flag1 = false;
          goto _L4
        exception2;
        datainputstream = null;
          goto _L5
        exception2;
          goto _L5
        exception2;
        obj1 = obj;
          goto _L5
        exception1;
        obj = obj1;
        datainputstream = null;
          goto _L6
        exception1;
        obj = obj1;
          goto _L6
        exception2;
        datainputstream = null;
        obj1 = null;
          goto _L5
    }

    private void D()
    {
        T = 1 + T;
    }

    private void E()
    {
        if (T > 0)
        {
            T = -1 + T;
        }
    }

    private String F()
    {
        return (new StringBuilder()).append(".flurryagent.").append(Integer.toString(k.hashCode(), 16)).toString();
    }

    private int G()
    {
        return h.incrementAndGet();
    }

    private int H()
    {
        return i.incrementAndGet();
    }

    static com.google.android.gms.ads.identifier.AdvertisingIdClient.Info a(dj dj1, com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info)
    {
        dj1.t = info;
        return info;
    }

    static String a(dj dj1, String s1)
    {
        dj1.v = s1;
        return s1;
    }

    private void a(long l1)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = K.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            db db1 = (db)iterator.next();
            if (db1.a() && !db1.b())
            {
                db1.a(l1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_65;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    static void a(dj dj1)
    {
        dj1.C();
    }

    private void a(dr dr1, ByteBuffer bytebuffer)
    {
        synchronized (p)
        {
            p.put(dr1, bytebuffer);
        }
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(byte abyte0[])
    {
        dd dd1 = FlurryAnalyticsModule.getInstance().a();
        String s1 = (new StringBuilder()).append("").append(dn.a().b()).toString();
        dd1.b(abyte0, k, s1);
    }

    static byte[] a(dj dj1, byte abyte0[])
    {
        dj1.u = abyte0;
        return abyte0;
    }

    static void b(dj dj1)
    {
        dj1.v();
    }

    static List c(dj dj1)
    {
        return dj1.s;
    }

    private Map d(Context context)
    {
        boolean flag = context instanceof Activity;
        HashMap hashmap = null;
        if (flag)
        {
            Bundle bundle = ((Activity)context).getIntent().getExtras();
            hashmap = null;
            if (bundle != null)
            {
                el.a(3, g, (new StringBuilder()).append("Launch Options Bundle is present ").append(bundle.toString()).toString());
                HashMap hashmap1 = new HashMap();
                Iterator iterator = bundle.keySet().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    String s1 = (String)iterator.next();
                    if (s1 != null)
                    {
                        Object obj = bundle.get(s1);
                        String s2;
                        if (obj != null)
                        {
                            s2 = obj.toString();
                        } else
                        {
                            s2 = "null";
                        }
                        hashmap1.put(s1, new ArrayList(Arrays.asList(new String[] {
                            s2
                        })));
                        el.a(3, g, (new StringBuilder()).append("Launch options Key: ").append(s1).append(". Its value: ").append(s2).toString());
                    }
                } while (true);
                hashmap = hashmap1;
            }
        }
        return hashmap;
    }

    static void d(dj dj1)
    {
        dj1.B();
    }

    static void e(dj dj1)
    {
        dj1.y();
    }

    private void u()
    {
        dq dq1 = dp.a();
        G = ((Byte)dq1.a("Gender")).byteValue();
        dq1.a("Gender", this);
        el.a(4, g, (new StringBuilder()).append("initSettings, Gender = ").append(G).toString());
        F = (String)dq1.a("UserId");
        dq1.a("UserId", this);
        el.a(4, g, (new StringBuilder()).append("initSettings, UserId = ").append(F).toString());
        E = ((Boolean)dq1.a("LogEvents")).booleanValue();
        dq1.a("LogEvents", this);
        el.a(4, g, (new StringBuilder()).append("initSettings, LogEvents = ").append(E).toString());
        H = ((Long)dq1.a("Age")).longValue();
        dq1.a("Age", this);
        el.a(4, g, (new StringBuilder()).append("initSettings, BirthDate = ").append(H).toString());
        I = ((Long)dq1.a("ContinueSessionMillis")).longValue();
        dq1.a("ContinueSessionMillis", this);
        el.a(4, g, (new StringBuilder()).append("initSettings, ContinueSessionMillis = ").append(I).toString());
    }

    private void v()
    {
        try
        {
            if (v != null)
            {
                el.a(3, g, "Fetched phone id");
                a(dr.a, ByteBuffer.wrap(v.getBytes()));
            }
            if (u != null)
            {
                el.a(3, g, "Fetched hashed IMEI");
                a(dr.b, ByteBuffer.wrap(u));
            }
            if (t != null)
            {
                el.a(3, g, "Fetched advertising id");
                a(dr.c, ByteBuffer.wrap(t.getId().getBytes()));
            }
            A();
            return;
        }
        catch (Throwable throwable)
        {
            el.a(6, g, "", throwable);
        }
    }

    private void w()
    {
        a(new fc() {

            final dj a;

            public void a()
            {
                dh dh1 = a.d();
                dj.c(a).clear();
                dj.c(a).add(dh1);
                dj.d(a);
            }

            
            {
                a = dj.this;
                super();
            }
        });
    }

    private void x()
    {
        a(new fc() {

            final dj a;

            public void a()
            {
                dj.e(a);
            }

            
            {
                a = dj.this;
                super();
            }
        });
    }

    private void y()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (s.size() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        A();
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (Throwable throwable)
        {
            el.a(6, g, "", throwable);
        }
        return;
    }

    private void z()
    {
        a(new fc() {

            final dj a;

            public void a()
            {
                dz.a().d();
            }

            
            {
                a = dj.this;
                super();
            }
        });
    }

    Map a()
    {
        return R;
    }

    public void a(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        el.a(4, g, (new StringBuilder()).append("Initializing new Flurry session with context:").append(context).toString());
        m = new WeakReference(context);
        S = new dm(this);
        n = context.getFileStreamPath(F());
        l = eb.a();
        y = -1L;
        O = 0;
        B = TimeZone.getDefault().getID();
        A = (new StringBuilder()).append(Locale.getDefault().getLanguage()).append("_").append(Locale.getDefault().getCountry()).toString();
        L = true;
        M = 0;
        P = 0;
        R = d(context);
        u();
        long l1 = SystemClock.elapsedRealtime();
        w = System.currentTimeMillis();
        x = l1;
        a(((fc) (new fc() {

            final dj a;

            public void a()
            {
                dj.a(a, dw.a());
            }

            
            {
                a = dj.this;
                super();
            }
        })));
        a(((fc) (new fc() {

            final dj a;

            public void a()
            {
                dj.a(a, dy.a());
            }

            
            {
                a = dj.this;
                super();
            }
        })));
        a(((fc) (new fc() {

            final dj a;

            public void a()
            {
                dj.a(a, ea.a());
            }

            
            {
                a = dj.this;
                super();
            }
        })));
        a(((fc) (new fc() {

            final dj a;

            public void a()
            {
                dj.a(a);
            }

            
            {
                a = dj.this;
                super();
            }
        })));
        a(((fc) (new fc() {

            final dj a;

            public void a()
            {
                dj.b(a);
            }

            
            {
                a = dj.this;
                super();
            }
        })));
        em.a().a(this, context);
        U = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(fc fc)
    {
        com.flurry.sdk.do.a().c(fc);
    }

    public void a(String s1, Object obj)
    {
        if (s1.equals("Gender"))
        {
            G = ((Byte)obj).byteValue();
            el.a(4, g, (new StringBuilder()).append("onSettingUpdate, Gender = ").append(G).toString());
            return;
        }
        if (s1.equals("UserId"))
        {
            F = (String)obj;
            el.a(4, g, (new StringBuilder()).append("onSettingUpdate, UserId = ").append(F).toString());
            return;
        }
        if (s1.equals("LogEvents"))
        {
            E = ((Boolean)obj).booleanValue();
            el.a(4, g, (new StringBuilder()).append("onSettingUpdate, LogEvents = ").append(E).toString());
            return;
        }
        if (s1.equals("Age"))
        {
            H = ((Long)obj).longValue();
            el.a(4, g, (new StringBuilder()).append("onSettingUpdate, Birthdate = ").append(H).toString());
            return;
        }
        if (s1.equals("ContinueSessionMillis"))
        {
            I = ((Long)obj).longValue();
            el.a(4, g, (new StringBuilder()).append("onSettingUpdate, ContinueSessionMillis = ").append(I).toString());
            return;
        } else
        {
            el.a(6, g, "onSettingUpdate internal error!");
            return;
        }
    }

    public void a(String s1, String s2, String s3, Throwable throwable)
    {
        this;
        JVM INSTR monitorenter ;
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (!"uncaught".equals(s1)) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L6:
        O = 1 + O;
        if (N.size() >= e) goto _L5; else goto _L4
_L4:
        Long long2 = Long.valueOf(System.currentTimeMillis());
        da da3 = new da(H(), long2.longValue(), s1, s2, s3, throwable);
        N.add(da3);
        el.d(g, (new StringBuilder()).append("Error logged: ").append(da3.c()).toString());
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        flag = false;
          goto _L6
_L5:
        int i1;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        i1 = 0;
_L9:
        if (i1 >= N.size()) goto _L8; else goto _L7
_L7:
        da da1 = (da)N.get(i1);
        if (da1.c() == null || "uncaught".equals(da1.c()))
        {
            break MISSING_BLOCK_LABEL_241;
        }
        Long long1 = Long.valueOf(System.currentTimeMillis());
        da da2 = new da(H(), long1.longValue(), s1, s2, s3, throwable);
        N.set(i1, da2);
          goto _L8
        Exception exception;
        exception;
        throw exception;
        i1++;
          goto _L9
        el.d(g, "Max errors logged. No more errors logged.");
          goto _L8
    }

    public void a(String s1, Map map)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = K.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        db db1 = (db)iterator.next();
        if (!db1.a(s1)) goto _L4; else goto _L3
_L3:
        long l1 = SystemClock.elapsedRealtime() - x;
        if (map == null) goto _L6; else goto _L5
_L5:
        if (map.size() <= 0 || M >= d) goto _L6; else goto _L7
_L7:
        int i1;
        HashMap hashmap;
        i1 = M - db1.d();
        hashmap = new HashMap(db1.c());
        db1.a(map);
        if (i1 + db1.d() > d)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        if (db1.c().size() <= b) goto _L9; else goto _L8
_L8:
        el.d(g, (new StringBuilder()).append("MaxEventParams exceeded on endEvent: ").append(db1.c().size()).toString());
        db1.b(hashmap);
_L6:
        db1.a(l1);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L9:
        M = i1 + db1.d();
          goto _L6
        Exception exception;
        exception;
        throw exception;
        db1.b(hashmap);
        L = false;
        M = d;
        el.d(g, "Event Log size exceeded. No more event details logged.");
          goto _L6
    }

    public void a(String s1, Map map, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        String s2;
        int i1;
        l1 = SystemClock.elapsedRealtime() - x;
        s2 = fb.a(s1);
        i1 = s2.length();
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        cx.a a1 = (cx.a)J.get(s2);
        if (a1 != null) goto _L4; else goto _L3
_L3:
        if (J.size() >= a) goto _L6; else goto _L5
_L5:
        cx.a a2 = new cx.a();
        a2.a = 1;
        J.put(s2, a2);
        el.d(g, (new StringBuilder()).append("Event count started: ").append(s2).toString());
_L11:
        if (!E || K.size() >= c || M >= d) goto _L8; else goto _L7
_L7:
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_390;
        }
        Map map1 = Collections.emptyMap();
_L12:
        if (map1.size() <= b) goto _L10; else goto _L9
_L9:
        el.d(g, (new StringBuilder()).append("MaxEventParams exceeded: ").append(map1.size()).toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
_L6:
        el.d(g, (new StringBuilder()).append("Too many different events. Event not counted: ").append(s2).toString());
          goto _L11
_L4:
        a1.a = 1 + a1.a;
        el.d(g, (new StringBuilder()).append("Event count incremented: ").append(s2).toString());
          goto _L11
_L10:
label0:
        {
            db db1 = new db(G(), s2, map1, l1, flag);
            if (db1.d() + M > d)
            {
                break label0;
            }
            K.add(db1);
            M = M + db1.d();
        }
          goto _L1
        M = d;
        L = false;
        el.d(g, "Event Log size exceeded. No more event details logged.");
          goto _L1
_L8:
        L = false;
          goto _L1
        map1 = map;
          goto _L12
    }

    public void b()
    {
        q = true;
    }

    public void b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = U;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        el.d(g, (new StringBuilder()).append("Start session with context: ").append(context).append(" count:").append(g()).toString());
        m = new WeakReference(context);
        if (S.b())
        {
            S.a();
        }
        D();
        dz.a().c();
        D = dz.a().f();
        em.a().b(this, context);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void c()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = U;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        el.d(g, "Finalize session");
        if (S.b())
        {
            S.a();
        }
        if (g() != 0)
        {
            el.a(6, g, (new StringBuilder()).append("Session with apiKey = ").append(j()).append(" was ended while getSessionCount() is not 0").toString());
        }
        T = 0;
        x();
        em.a().a(this);
        a(new fc() {

            final dj a;

            public void a()
            {
                dl.a().a(a.j());
            }

            
            {
                a = dj.this;
                super();
            }
        });
        dp.a().b("Gender", this);
        dp.a().b("UserId", this);
        dp.a().b("Age", this);
        dp.a().b("LogEvents", this);
        dp.a().b("ContinueSessionMillis", this);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void c(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = U;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        em.a().c(this, context);
        D = dz.a().f();
        z();
        E();
        el.d(g, (new StringBuilder()).append("End session with context: ").append(context).append(" count:").append(g()).toString());
        y = SystemClock.elapsedRealtime() - x;
        a(y);
        w();
        if (g() == 0)
        {
            S.a(I);
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    dh d()
    {
        this;
        JVM INSTR monitorenter ;
        di di1;
        di1 = new di();
        di1.a(l);
        di1.a(w);
        di1.b(y);
        di1.c(z);
        di1.b(k());
        di1.c(l());
        di1.a(C);
        di1.d(h());
        di1.a(D);
        di1.b(f());
        di1.a(G);
        di1.a(Long.valueOf(H));
        di1.a(t());
        di1.a(r());
        di1.a(L);
        di1.b(s());
        di1.c(O);
        dh dh1 = new dh(di1);
_L2:
        if (dh1 != null)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        el.d(g, "New session report wasn't created");
        this;
        JVM INSTR monitorexit ;
        return dh1;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        dh1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void e()
    {
        this;
        JVM INSTR monitorenter ;
        P = 1 + P;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    int f()
    {
        return P;
    }

    int g()
    {
        return T;
    }

    String h()
    {
        if (F == null)
        {
            return "";
        } else
        {
            return F;
        }
    }

    public String i()
    {
        return v;
    }

    public String j()
    {
        return k;
    }

    public String k()
    {
        return A;
    }

    public String l()
    {
        return B;
    }

    public long m()
    {
        return w;
    }

    public long n()
    {
        return x;
    }

    public boolean o()
    {
        return t == null || !t.isLimitAdTrackingEnabled();
    }

    public Map p()
    {
        return new HashMap(p);
    }

    public void q()
    {
        c();
    }

    List r()
    {
        return K;
    }

    List s()
    {
        return N;
    }

    Map t()
    {
        return J;
    }

}
