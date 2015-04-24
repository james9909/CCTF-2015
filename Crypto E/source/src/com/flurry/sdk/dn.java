// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.util.Collections;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.flurry.sdk:
//            dp, dq, el, dl, 
//            dj

public class dn
{

    private static final String a = com/flurry/sdk/dn.getSimpleName();
    private static dn b;

    public dn()
    {
    }

    public static dn a()
    {
        com/flurry/sdk/dn;
        JVM INSTR monitorenter ;
        dn dn1;
        if (b == null)
        {
            b = new dn();
        }
        dn1 = b;
        com/flurry/sdk/dn;
        JVM INSTR monitorexit ;
        return dn1;
        Exception exception;
        exception;
        throw exception;
    }

    public int b()
    {
        int i1 = ((Integer)dp.a().a("AgentVersion")).intValue();
        el.a(4, a, (new StringBuilder()).append("getAgentVersion() = ").append(i1).toString());
        return i1;
    }

    int c()
    {
        return ((Integer)dp.a().a("ReleaseMajorVersion")).intValue();
    }

    int d()
    {
        return ((Integer)dp.a().a("ReleaseMinorVersion")).intValue();
    }

    int e()
    {
        return ((Integer)dp.a().a("ReleasePatchVersion")).intValue();
    }

    String f()
    {
        return (String)dp.a().a("ReleaseBetaVersion");
    }

    public String g()
    {
        String s;
        Locale locale;
        Object aobj[];
        if (f().length() > 0)
        {
            s = ".";
        } else
        {
            s = "";
        }
        locale = Locale.getDefault();
        aobj = new Object[6];
        aobj[0] = Integer.valueOf(b());
        aobj[1] = Integer.valueOf(c());
        aobj[2] = Integer.valueOf(d());
        aobj[3] = Integer.valueOf(e());
        aobj[4] = s;
        aobj[5] = f();
        return String.format(locale, "Flurry_Android_%d_%d.%d.%d%s%s", aobj);
    }

    public String h()
    {
        dj dj1 = dl.a().c();
        String s = null;
        if (dj1 != null)
        {
            s = dj1.j();
        }
        return s;
    }

    public String i()
    {
        dj dj1 = dl.a().c();
        String s = null;
        if (dj1 != null)
        {
            s = dj1.k();
        }
        return s;
    }

    public String j()
    {
        dj dj1 = dl.a().c();
        String s = null;
        if (dj1 != null)
        {
            s = dj1.l();
        }
        return s;
    }

    public boolean k()
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            return dj1.o();
        } else
        {
            return true;
        }
    }

    public Map l()
    {
        dj dj1 = dl.a().c();
        if (dj1 != null)
        {
            return dj1.p();
        } else
        {
            return Collections.emptyMap();
        }
    }

}
