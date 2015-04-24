// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.crittercism.app;

import android.content.Context;
import crittercism.android.at;
import crittercism.android.ax;
import crittercism.android.ay;
import crittercism.android.ba;
import crittercism.android.bc;
import crittercism.android.bn;
import crittercism.android.br;
import crittercism.android.bt;
import crittercism.android.cf;
import crittercism.android.co;
import crittercism.android.d;
import crittercism.android.da;
import crittercism.android.df;
import crittercism.android.dg;
import crittercism.android.dh;
import crittercism.android.dl;
import crittercism.android.e;
import crittercism.android.g;
import crittercism.android.h;
import crittercism.android.i;
import java.io.File;
import java.net.URL;
import java.security.InvalidParameterException;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.crittercism.app:
//            CrittercismConfig

public class Crittercism
{

    private Crittercism()
    {
    }

    public static void a(Context context, String s)
    {
        com/crittercism/app/Crittercism;
        JVM INSTR monitorenter ;
        a(context, s, new CrittercismConfig());
        com/crittercism/app/Crittercism;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(Context context, String s, CrittercismConfig crittercismconfig)
    {
        com/crittercism/app/Crittercism;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        b(java/lang/String.getCanonicalName());
_L3:
        com/crittercism/app/Crittercism;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        b(android/content/Context.getCanonicalName());
          goto _L3
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Exception exception1;
        exception1;
        com/crittercism/app/Crittercism;
        JVM INSTR monitorexit ;
        throw exception1;
        if (crittercismconfig != null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        b(com/crittercism/app/CrittercismConfig.getCanonicalName());
          goto _L3
        Throwable throwable;
        throwable;
        dg.a(throwable);
          goto _L3
label0:
        {
            if (s.length() >= 24)
            {
                break label0;
            }
            dg.b("Crittercism", "Crittercism cannot be initialized", new InvalidParameterException("Given an invalid appID. The appID should be 24 characters in length."));
        }
          goto _L3
        boolean flag = ay.t().b;
        if (flag) goto _L3; else goto _L4
_L4:
        long l;
        ay ay1;
        l = System.nanoTime();
        ay1 = ay.t();
        dg.a("CrittercismInstance", "Initializing Crittercism...");
        ay1.d = s;
        ay1.w = new ba(crittercismconfig);
        ay1.c = context;
        ay1.s = new at(ay1.c, ay1.w);
        ay1.v = context.getPackageName();
        ay1.y = new da(context);
        ay1.u();
        long l1 = 0xdf8475800L;
        if (ay1.u)
        {
            l1 = 0x2cb417800L;
        }
        ay1.n = new cf(l1);
        bn.a(ay1.s);
        bn.a(ay1.c);
        bn.a(new br());
        bn.a(new bc(ay1.c, ay1.w));
        if (!h.a(ay1.c).exists() && ay1.w.i()) goto _L6; else goto _L5
_L5:
        ay1.o = new co(ay1.w, context, ay1, ay1, ay1);
        if (!ay1.u)
        {
            dg.a(new dl(ay1, ay1.r, ay1.o, ay1.g));
        }
        Thread.UncaughtExceptionHandler uncaughtexceptionhandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(uncaughtexceptionhandler instanceof ax))
        {
            Thread.setDefaultUncaughtExceptionHandler(new ax(ay1, uncaughtexceptionhandler));
        }
        (new dh(ay1.o)).start();
        ay1.b = true;
        long l2 = (System.nanoTime() - l) / 0xf4240L;
        (new StringBuilder("Crittercism finished initializing in ")).append(l2).append("ms");
        dg.b();
          goto _L3
        Exception exception;
        exception;
        (new StringBuilder("Exception in init > getInstance().initialize(..): ")).append(exception.getClass().getName());
        dg.b();
          goto _L3
_L6:
        ay1.x.a(ay1.w.a());
        ay1.x.b(ay1.w.c());
        d d1 = new d(ay1.c);
        i j = new i(ay1.x, d1);
        ay1.p = new g(ay1, new URL((new StringBuilder()).append(ay1.w.l()).append("/api/apm/network").toString()));
        ay1.x.a(ay1.p);
        ay1.x.a(ay1);
        (new dh(ay1.p, "OPTMZ")).start();
        ay1.t = j.a();
_L7:
        (new StringBuilder("installedApm = ")).append(ay1.t);
        dg.b();
          goto _L5
        Exception exception2;
        exception2;
        (new StringBuilder("Exception in startApm: ")).append(exception2.getClass().getName());
        dg.b();
        dg.c();
          goto _L7
    }

    public static void a(String s)
    {
        if (!ay.t().b)
        {
            c("leaveBreadcrumb");
            return;
        }
        if (s == null)
        {
            ay ay1;
            crittercism.android.ay._cls8 _lcls8;
            try
            {
                dg.b("Crittercism", "Cannot leave null breadcrumb", new NullPointerException());
                return;
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                dg.a(throwable);
            }
            break MISSING_BLOCK_LABEL_114;
        }
        ay1 = ay.t();
        _lcls8 = new crittercism.android.ay._cls8(ay1, new bt(s));
        if (!ay1.o.a(_lcls8))
        {
            (new StringBuilder("SENDING ")).append(s).append(" TO EXECUTOR");
            dg.b();
            ay1.r.execute(_lcls8);
            return;
        }
    }

    public static void a(Throwable throwable)
    {
        if (!ay.t().b)
        {
            c("logHandledException");
            return;
        }
        try
        {
            if (!ay.t().g.c())
            {
                ay.t().b(throwable);
                return;
            }
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable1)
        {
            dg.a(throwable1);
        }
        return;
    }

    private static void b(String s)
    {
        dg.b("Crittercism", "Crittercism cannot be initialized", new NullPointerException((new StringBuilder()).append(s).append(" was null").toString()));
    }

    private static void c(String s)
    {
        dg.b("Crittercism", (new StringBuilder("Must initialize Crittercism before calling ")).append(com/crittercism/app/Crittercism.getName()).append(".").append(s).append("().  Request is being ignored...").toString(), new IllegalStateException());
    }
}
