// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fs, fl, gx, hm, 
//            gy, bp, bq, db

public class ab
{

    private static final Object mx = new Object();
    private static ab my;
    private final fl mA;
    private final gx mB;
    private final hm mC;
    private final gy mD;
    private final bp mE;
    private final bq mF;
    private final db mG;
    private final fs mz;

    protected ab()
    {
        this(new fs(), new fl(), new gx(), new hm(), gy.w(android.os.Build.VERSION.SDK_INT), new bp(), new bq(), new db());
    }

    protected ab(fs fs1, fl fl1, gx gx1, hm hm1, gy gy1, bp bp1, bq bq1, 
            db db1)
    {
        mz = fs1;
        mA = fl1;
        mB = gx1;
        mC = hm1;
        mD = gy1;
        mE = bp1;
        mF = bq1;
        mG = db1;
    }

    protected static void a(ab ab1)
    {
        synchronized (mx)
        {
            my = ab1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static ab aD()
    {
        ab ab1;
        synchronized (mx)
        {
            ab1 = my;
        }
        return ab1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static fs aE()
    {
        return aD().mz;
    }

    public static fl aF()
    {
        return aD().mA;
    }

    public static gx aG()
    {
        return aD().mB;
    }

    public static hm aH()
    {
        return aD().mC;
    }

    public static bp aI()
    {
        return aD().mE;
    }

    public static bq aJ()
    {
        return aD().mF;
    }

    public static db aK()
    {
        return aD().mG;
    }

    public static gy aL()
    {
        return aD().mD;
    }

    static 
    {
        a(new ab());
    }
}
