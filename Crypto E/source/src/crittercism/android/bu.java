// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


public final class bu
{

    public static final bu a = new bu();
    private volatile int b;
    private final long c = System.currentTimeMillis();

    private bu()
    {
        b = 1;
    }

    private int b()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        i = b;
        b = i + 1;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public final String a()
    {
        return (new StringBuilder("1.")).append(c).append(".").append(b()).toString();
    }

}
