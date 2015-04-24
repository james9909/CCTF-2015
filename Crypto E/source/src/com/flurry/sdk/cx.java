// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import com.flurry.android.FlurryAgent;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.flurry.sdk:
//            ec, dp, dq, el, 
//            eb, dl, dj, dz

public class cx
    implements dq.a, Thread.UncaughtExceptionHandler
{
    public static class a
    {

        public int a;

        public a()
        {
        }
    }


    private static final String a = com/flurry/sdk/cx.getSimpleName();
    private static cx b;
    private final HashMap c = new HashMap();
    private boolean d;

    private cx()
    {
        ec.a().a(this);
        d();
    }

    public static cx a()
    {
        com/flurry/sdk/cx;
        JVM INSTR monitorenter ;
        cx cx1;
        if (b == null)
        {
            b = new cx();
        }
        cx1 = b;
        com/flurry/sdk/cx;
        JVM INSTR monitorexit ;
        return cx1;
        Exception exception;
        exception;
        throw exception;
    }

    private void d()
    {
        dq dq1 = dp.a();
        d = ((Boolean)dq1.a("CaptureUncaughtExceptions")).booleanValue();
        dq1.a("CaptureUncaughtExceptions", this);
        el.a(4, a, (new StringBuilder()).append("initSettings, CrashReportingEnabled = ").append(d).toString());
        String s = (String)dq1.a("VersionName");
        dq1.a("VersionName", this);
        eb.a(s);
        el.a(4, a, (new StringBuilder()).append("initSettings, VersionName = ").append(s).toString());
    }

    public void a(String s)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, null, false);
        }
    }

    public void a(String s, Object obj)
    {
        if (s.equals("CaptureUncaughtExceptions"))
        {
            d = ((Boolean)obj).booleanValue();
            el.a(4, a, (new StringBuilder()).append("onSettingUpdate, CrashReportingEnabled = ").append(d).toString());
            return;
        }
        if (s.equals("VersionName"))
        {
            String s1 = (String)obj;
            eb.a(s1);
            el.a(4, a, (new StringBuilder()).append("onSettingUpdate, VersionName = ").append(s1).toString());
            return;
        } else
        {
            el.a(6, a, "onSettingUpdate internal error!");
            return;
        }
    }

    public void a(String s, String s1, String s2)
    {
        StackTraceElement astacktraceelement[] = Thread.currentThread().getStackTrace();
        StackTraceElement astacktraceelement1[];
        Throwable throwable;
        dj dj1;
        if (astacktraceelement != null && astacktraceelement.length > 2)
        {
            astacktraceelement1 = new StackTraceElement[-2 + astacktraceelement.length];
            System.arraycopy(astacktraceelement, 2, astacktraceelement1, 0, astacktraceelement1.length);
        } else
        {
            astacktraceelement1 = astacktraceelement;
        }
        throwable = new Throwable(s1);
        throwable.setStackTrace(astacktraceelement1);
        dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, s1, s2, throwable);
        }
    }

    public void a(String s, String s1, Throwable throwable)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, s1, throwable.getClass().getName(), throwable);
        }
    }

    public void a(String s, String s1, Map map)
    {
        if (map == null)
        {
            map = new HashMap();
        }
        if (map.size() >= 10)
        {
            el.d(a, (new StringBuilder()).append("MaxOriginParams exceeded: ").append(map.size()).toString());
            return;
        }
        map.put("flurryOriginVersion", s1);
        synchronized (c)
        {
            if (c.size() < 10 || c.containsKey(s))
            {
                break MISSING_BLOCK_LABEL_139;
            }
            el.d(a, (new StringBuilder()).append("MaxOrigins exceeded: ").append(c.size()).toString());
        }
        return;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        c.put(s, map);
        hashmap;
        JVM INSTR monitorexit ;
    }

    public void a(String s, Map map)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, map, false);
        }
    }

    public void a(String s, Map map, boolean flag)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, map, flag);
        }
    }

    public void a(String s, boolean flag)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, null, flag);
        }
    }

    public void a(boolean flag)
    {
        el.a(flag);
    }

    public HashMap b()
    {
        HashMap hashmap1;
        synchronized (c)
        {
            hashmap1 = new HashMap(c);
        }
        return hashmap1;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, null);
        }
    }

    public void b(String s, Map map)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, map);
        }
    }

    public void c()
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.e();
        }
    }

    public void c(String s)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, null, false);
        }
    }

    public void c(String s, Map map)
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            dj1.a(s, map, false);
        }
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        throwable.printStackTrace();
        if (!d) goto _L2; else goto _L1
_L1:
        String s;
        StackTraceElement astacktraceelement[];
        s = "";
        astacktraceelement = throwable.getStackTrace();
        if (astacktraceelement == null || astacktraceelement.length <= 0) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder();
        if (throwable.getMessage() != null)
        {
            stringbuilder.append((new StringBuilder()).append(" (").append(throwable.getMessage()).append(")\n").toString());
        }
        s = stringbuilder.toString();
_L6:
        FlurryAgent.onError("uncaught", s, throwable);
_L2:
        dl.a().d();
        dz.a().g();
        return;
_L4:
        if (throwable.getMessage() != null)
        {
            s = throwable.getMessage();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

}
