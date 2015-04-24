// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


public final class cf
{

    private long a;
    private long b;

    public cf(long l)
    {
        a = 0L;
        b = l;
    }

    public final boolean a()
    {
        this;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l = System.nanoTime() - a;
        l1 = b;
        boolean flag;
        if (l > l1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        a = System.nanoTime();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
