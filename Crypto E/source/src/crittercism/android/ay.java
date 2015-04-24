// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.app.ActivityManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Process;
import com.crittercism.app.CritterRateMyAppButtons;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            au, av, aw, f, 
//            df, di, ba, e, 
//            co, h, dg, g, 
//            dc, dh, bd, bj, 
//            cn, da, dd, bi, 
//            de, cf, at, c, 
//            cq, cb, ce, cs, 
//            ck, cj, cl, bt

public final class ay
    implements au, av, aw, f
{

    static ay a;
    int A;
    private bj B;
    private bj C;
    public boolean b;
    public Context c;
    public String d;
    public final ConditionVariable e = new ConditionVariable(false);
    public final ConditionVariable f = new ConditionVariable(false);
    public df g;
    bj h;
    bj i;
    bj j;
    bj k;
    bj l;
    bj m;
    public cf n;
    public co o;
    public g p;
    ExecutorService q;
    public ExecutorService r;
    public at s;
    public boolean t;
    public boolean u;
    public String v;
    public ba w;
    public e x;
    public da y;
    de z;

    protected ay()
    {
        b = false;
        c = null;
        d = null;
        g = new df();
        n = null;
        o = null;
        p = null;
        q = Executors.newCachedThreadPool(new di());
        r = Executors.newSingleThreadExecutor(new di());
        t = false;
        u = false;
        v = "";
        w = new ba();
        z = null;
        A = 0;
        x = new e(r);
    }

    public static ay t()
    {
        if (a == null)
        {
            a = new ay();
        }
        return a;
    }

    public final String a()
    {
        String s1 = d;
        if (s1 == null)
        {
            s1 = "";
        }
        return s1;
    }

    public final String a(String s1, String s2)
    {
        SharedPreferences sharedpreferences = c.getSharedPreferences(s1, 0);
        String s3 = null;
        if (sharedpreferences != null)
        {
            s3 = sharedpreferences.getString(s2, null);
        }
        return s3;
    }

    public final void a(c c1)
    {
        cq cq = new cq(c1) {

            final c a;
            final ay b;

            public final void a()
            {
                b.m.a(a);
            }

            
            {
                b = ay.this;
                a = c1;
                super();
            }
        };
        if (!o.a(cq))
        {
            r.execute(cq);
        }
    }

    public final void a(h h1)
    {
        while (!t || !w.i() || !h1.a || h1.c) 
        {
            return;
        }
        dg.a("Crittercism", "Enabling OPTMZ");
        p.a(h1.d, TimeUnit.SECONDS);
        p.a();
    }

    public final void a(String s1)
    {
        g.a().b = true;
        (new dh(new cq() {

            final ay a;

            public final void a()
            {
                a.g.a().a(ay.a, cb.h.a(), cb.h.b());
            }

            
            {
                a = ay.this;
                super();
            }
        })).start();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(0x10000000);
        intent.setData(Uri.parse(s1));
        c.startActivity(intent);
    }

    public final void a(String s1, String s2, int i1)
    {
        SharedPreferences sharedpreferences = c.getSharedPreferences(s1, 0);
        if (sharedpreferences != null)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            if (editor != null)
            {
                editor.remove(s2);
                editor.putInt(s2, i1);
                editor.commit();
            }
        }
    }

    public final void a(String s1, String s2, String s3)
    {
        SharedPreferences sharedpreferences = c.getSharedPreferences(s1, 0);
        if (sharedpreferences != null)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            if (editor != null)
            {
                editor.remove(s2);
                editor.putString(s2, s3);
                editor.commit();
            }
        }
    }

    final void a(Throwable throwable)
    {
        bd bd1 = new bd(throwable, Thread.currentThread().getId());
        bd1.a("crashed_session", l);
        if (C.b() > 0)
        {
            bd1.a("previous_session", C);
        }
        bd1.a(m);
        bd1.b = new JSONArray();
        Iterator iterator = Thread.getAllStackTraces().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            HashMap hashmap = new HashMap();
            Thread thread = (Thread)entry.getKey();
            if (thread.getId() != bd1.a)
            {
                hashmap.put("name", thread.getName());
                hashmap.put("id", Long.valueOf(thread.getId()));
                hashmap.put("state", thread.getState().name());
                hashmap.put("stacktrace", new JSONArray(Arrays.asList((Object[])entry.getValue())));
                bd1.b.put(new JSONObject(hashmap));
            }
        } while (true);
        k.a(bd1);
        cn cn1 = new cn(c);
        cn1.a(h, new ci.a(), w.k(), this);
        cn1.a(i, new ci.a(), w.k(), this);
        cn1.a(j, new ci.a(), w.k(), this);
        cn1.a(k, new ci.a(), w.k(), this);
        try
        {
            cn1.a();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            (new StringBuilder("InterruptedException in logCrashException: ")).append(interruptedexception.getMessage());
            dg.b();
            dg.c();
            return;
        }
        catch (Throwable throwable1)
        {
            (new StringBuilder("Unexpected throwable in logCrashException: ")).append(throwable1.getMessage());
        }
        dg.b();
        dg.c();
    }

    public final int b(String s1, String s2)
    {
        SharedPreferences sharedpreferences = c.getSharedPreferences(s1, 0);
        int i1 = 0;
        if (sharedpreferences != null)
        {
            i1 = sharedpreferences.getInt(s2, 0);
        }
        return i1;
    }

    public final String b()
    {
        return (new bn.c()).a;
    }

    public final void b(Throwable throwable)
    {
        this;
        JVM INSTR monitorenter ;
        if (throwable != null) goto _L2; else goto _L1
_L1:
        dg.c("Crittercism", "Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!u)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        cq cq = new cq(throwable, Thread.currentThread().getId()) {

            final Throwable a;
            final long b;
            final ay c;

            public final void a()
            {
                if (c.g.c())
                {
                    return;
                }
                synchronized (c.n)
                {
                    if (c.A < 10)
                    {
                        bd bd1 = new bd(a, b);
                        bd1.a("current_session", c.l);
                        bd1.a(c.m);
                        bd1.c = "he";
                        if (c.n.a())
                        {
                            JSONArray jsonarray = (new JSONArray()).put(bd1.a());
                            (new cs((new ce(ay.a)).a(bi.b.g(), jsonarray), new ck((new cj(c.w.k(), "/android_v2/handle_exceptions")).a()), null)).run();
                            ay ay1 = c;
                            ay1.A = 1 + ay1.A;
                            c.n.b();
                        }
                    }
                }
            }

            
            {
                c = ay.this;
                a = throwable;
                b = l1;
                super();
            }
        };
        if (!o.a(cq))
        {
            r.execute(cq);
        }
          goto _L3
        Exception exception;
        exception;
        throw exception;
        cq cq1 = new cq(throwable, Thread.currentThread().getId()) {

            final Throwable a;
            final long b;
            final ay c;

            public final void a()
            {
                if (!c.g.c())
                {
                    bd bd1 = new bd(a, b);
                    bd1.a("current_session", c.l);
                    bd1.c = "he";
                    if (c.i.a(bd1) && c.n.a())
                    {
                        cn cn1 = new cn(c.c);
                        cn1.a(c.i, new ci.a(), c.w.k(), ay.a);
                        cn1.a(c.o, c.q);
                        c.n.b();
                        return;
                    }
                }
            }

            
            {
                c = ay.this;
                a = throwable;
                b = l1;
                super();
            }
        };
        if (!o.a(cq1))
        {
            r.execute(cq1);
        }
          goto _L3
    }

    public final String c()
    {
        String s1 = "";
        if (y != null)
        {
            s1 = y.a();
        }
        return s1;
    }

    public final boolean c(String s1, String s2)
    {
        SharedPreferences sharedpreferences = c.getSharedPreferences(s1, 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            flag = sharedpreferences.getBoolean(s2, false);
        }
        return flag;
    }

    public final int d()
    {
        int i1 = -1;
        if (g != null)
        {
            i1 = Integer.valueOf(g.b().a).intValue();
        }
        return i1;
    }

    public final String e()
    {
        return (new bn.f()).a;
    }

    public final String f()
    {
        return "Android";
    }

    public final String g()
    {
        return Build.MODEL;
    }

    public final String h()
    {
        return android.os.Build.VERSION.RELEASE;
    }

    public final df i()
    {
        return g;
    }

    public final bj j()
    {
        return h;
    }

    public final bj k()
    {
        return i;
    }

    public final bj l()
    {
        return B;
    }

    public final bj m()
    {
        return j;
    }

    public final bj n()
    {
        return k;
    }

    public final bj o()
    {
        return l;
    }

    public final bj p()
    {
        return m;
    }

    public final bj q()
    {
        return C;
    }

    public final de r()
    {
        return z;
    }

    public final void s()
    {
        if (u)
        {
            l = (new bj(c, bi.f)).a(c);
        } else
        {
            l = new bj(c, bi.f);
        }
        C = new bj(c, bi.h);
        m = new bj(c, bi.g);
        h = new bj(c, bi.a);
        i = new bj(c, bi.b);
        B = new bj(c, bi.c);
        j = new bj(c, bi.d);
        k = new bj(c, bi.e);
        if (!u)
        {
            z = new de(c, d);
        }
    }

    public final void u()
    {
        int i1 = Process.myUid();
        int j1 = Process.myPid();
        ActivityManager activitymanager = (ActivityManager)c.getSystemService("activity");
        Iterator iterator = activitymanager.getRunningAppProcesses().iterator();
        int k1 = 0;
        while (iterator.hasNext()) 
        {
            Iterator iterator1;
            int l1;
            if (((android.app.ActivityManager.RunningAppProcessInfo)iterator.next()).uid == i1)
            {
                l1 = k1 + 1;
            } else
            {
                l1 = k1;
            }
            k1 = l1;
        }
        if (k1 <= 1)
        {
            u = false;
        } else
        {
            iterator1 = activitymanager.getRunningServices(0x7fffffff).iterator();
            while (iterator1.hasNext()) 
            {
                if (((android.app.ActivityManager.RunningServiceInfo)iterator1.next()).pid == j1)
                {
                    u = true;
                    return;
                }
            }
        }
    }

    public final void v()
    {
        g.a().b = true;
        (new dh(new cq() {

            final ay a;

            public final void a()
            {
                a.g.a().a(ay.a, cb.h.a(), cb.h.b());
            }

            
            {
                a = ay.this;
                super();
            }
        })).start();
    }

    public final void w()
    {
        cq cq;
        if (!u)
        {
            if (!o.a(cq = new cq(this) {

        final ay a;
        final ay b;

        public final void a()
        {
            if (a.g.c())
            {
                return;
            } else
            {
                ce ce1 = new ce(a);
                JSONObject jsonobject = a.z.a();
                ce1.a.put("metadata", jsonobject);
                (new cs(ce1, new ck((new cj(b.w.k(), "/android_v2/update_user_metadata")).a()), new cl(a.z))).run();
                return;
            }
        }

            
            {
                b = ay.this;
                a = ay2;
                super();
            }
    }))
            {
                q.execute(cq);
                return;
            }
        }
    }

    // Unreferenced inner class crittercism/android/ay$1

/* anonymous class */
    public final class _cls1 extends cq
    {

        final ay a;

        public final void a()
        {
            if (a.g.c())
            {
                return;
            } else
            {
                cn cn1 = new cn(a.c);
                cn1.a(a.h, new cd.a(), a.w.k(), ay.a);
                cn1.a(a.i, new ci.a(), a.w.k(), ay.a);
                cn1.a(a.j, new ci.a(), a.w.k(), ay.a);
                cn1.a(a.k, new ci.a(), a.w.k(), ay.a);
                cn1.a(a.o, a.q);
                return;
            }
        }
    }


    // Unreferenced inner class crittercism/android/ay$12

/* anonymous class */
    final class _cls12
        implements android.content.DialogInterface.OnClickListener
    {

        final String a;

        public final void onClick(DialogInterface dialoginterface, int i1)
        {
            try
            {
                ay.t().a(a);
                return;
            }
            catch (Exception exception)
            {
                dg.c("CrittercismInstance", "YES button failed.  Email support@crittercism.com.");
            }
        }
    }


    // Unreferenced inner class crittercism/android/ay$13

/* anonymous class */
    final class _cls13
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i1)
        {
            try
            {
                ay.t().v();
                return;
            }
            catch (Exception exception)
            {
                dg.c("CrittercismInstance", "NO button failed.  Email support@crittercism.com.");
            }
        }
    }


    // Unreferenced inner class crittercism/android/ay$2

/* anonymous class */
    final class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i1)
        {
            try
            {
                ay.t();
                return;
            }
            catch (Exception exception)
            {
                dg.c("CrittercismInstance", "MAYBE LATER button failed.  Email support@crittercism.com.");
            }
        }
    }


    // Unreferenced inner class crittercism/android/ay$3

/* anonymous class */
    final class _cls3 extends cq
    {

        final ay a;
        final JSONObject b;

        public final void a()
        {
            if (!a.g.c())
            {
                a.z.a(b);
                if (a.z.b())
                {
                    a.w();
                    return;
                }
            }
        }
    }


    // Unreferenced inner class crittercism/android/ay$5

/* anonymous class */
    public static final class _cls5
    {

        public static final int a[];

        static 
        {
            a = new int[CritterRateMyAppButtons.values().length];
            try
            {
                a[CritterRateMyAppButtons.a.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[CritterRateMyAppButtons.b.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[CritterRateMyAppButtons.c.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2)
            {
                return;
            }
        }
    }


    // Unreferenced inner class crittercism/android/ay$8

/* anonymous class */
    public final class _cls8 extends cq
    {

        final bt a;
        final ay b;

        public final void a()
        {
            b.l.a(a);
        }

            public 
            {
                b = ay.this;
                a = bt;
                super();
            }
    }

}
