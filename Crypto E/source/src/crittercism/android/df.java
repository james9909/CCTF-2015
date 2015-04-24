// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            db, cb, aw, dd, 
//            dc

public final class df
{

    private db a;
    private dc b;
    private dd c;

    public df()
    {
    }

    public final dc a()
    {
        this;
        JVM INSTR monitorenter ;
        dc dc1 = b;
        this;
        JVM INSTR monitorexit ;
        return dc1;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(aw aw1)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        a = db.a.a(aw1);
        if (a.a())
        {
            break MISSING_BLOCK_LABEL_126;
        }
        i = aw1.b(cb.k.a(), cb.k.b());
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        i = aw1.b(cb.l.a(), cb.l.b());
        dd dd1 = new dd(i);
        dd1.a = 1 + dd1.a;
        c = dd1;
        dc dc1 = dc.a.a(aw1, cb.h.a(), cb.h.b());
        dc1.c = 1 + dc1.c;
        b = dc1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(dc dc1)
    {
        this;
        JVM INSTR monitorenter ;
        b = dc1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final dd b()
    {
        this;
        JVM INSTR monitorenter ;
        dd dd1 = c;
        this;
        JVM INSTR monitorexit ;
        return dd1;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean c()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = true;
        boolean flag1;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        flag1 = a.a();
        flag = flag1;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }
}
