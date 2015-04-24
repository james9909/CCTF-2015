// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.SystemClock;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ji, jl

public final class jm
{

    private static final ji MZ = new ji("RequestTracker");
    public static final Object Oh = new Object();
    private long Od;
    private long Oe;
    private long Of;
    private jl Og;

    public jm(long l)
    {
        Od = l;
        Oe = -1L;
        Of = 0L;
    }

    private void hZ()
    {
        Oe = -1L;
        Og = null;
        Of = 0L;
    }

    public void a(long l, jl jl1)
    {
        jl jl2;
        long l1;
        synchronized (Oh)
        {
            jl2 = Og;
            l1 = Oe;
            Oe = l;
            Og = jl1;
            Of = SystemClock.elapsedRealtime();
        }
        if (jl2 != null)
        {
            jl2.m(l1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean b(long l, int i, JSONObject jsonobject)
    {
        boolean flag = true;
        Object obj = Oh;
        obj;
        JVM INSTR monitorenter ;
        jl jl1;
        if (Oe == -1L || Oe != l)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        ji ji1 = MZ;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(Oe);
        ji1.b("request %d completed", aobj);
        jl1 = Og;
        hZ();
_L2:
        if (jl1 != null)
        {
            jl1.a(l, i, jsonobject);
        }
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        jl1 = null;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void clear()
    {
        synchronized (Oh)
        {
            if (Oe != -1L)
            {
                hZ();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean d(long l, int i)
    {
        return b(l, i, null);
    }

    public boolean e(long l, int i)
    {
        boolean flag;
        long l1;
        flag = true;
        l1 = 0L;
        Object obj = Oh;
        obj;
        JVM INSTR monitorenter ;
        jl jl1;
        if (Oe == -1L || l - Of < Od)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        ji ji1 = MZ;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(Oe);
        ji1.b("request %d timed out", aobj);
        l1 = Oe;
        jl1 = Og;
        hZ();
_L2:
        if (jl1 != null)
        {
            jl1.a(l1, i, null);
        }
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        jl1 = null;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean ia()
    {
        Object obj = Oh;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (Oe != -1L)
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

    public boolean o(long l)
    {
        Object obj = Oh;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (Oe != -1L && Oe == l)
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

}
