// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import com.snapchat.android.model.UserPrefs;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

public class CrashSampler
{

    private static final CrashSampler a = new CrashSampler();
    private boolean b;
    private boolean c;
    private final ReleaseManager d;

    private CrashSampler()
    {
        this(ReleaseManager.a());
    }

    protected CrashSampler(ReleaseManager releasemanager)
    {
        d = releasemanager;
    }

    public static CrashSampler a()
    {
        return a;
    }

    protected static boolean a(double d1, String s)
    {
        return Math.abs((double)s.hashCode() / 2147483647D) < d1;
    }

    protected boolean a(double d1)
    {
        UUID uuid = UserPrefs.aP();
        if (uuid == null)
        {
            return a(d1, UUID.randomUUID().toString());
        } else
        {
            return a(d1, uuid.toString());
        }
    }

    public boolean b()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (!c)
        {
            c();
        }
        flag = b;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    protected void c()
    {
        if (d.b())
        {
            b = false;
        } else
        if (d.c())
        {
            b = true;
        } else
        if (d.d())
        {
            b = a(0.5D);
        } else
        {
            b = a(0.0099999997764825821D);
        }
        c = true;
    }

}
