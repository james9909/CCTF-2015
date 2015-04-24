// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.internal.cflowstack;


// Referenced classes of package org.aspectj.runtime.internal.cflowstack:
//            ThreadStackFactory, ThreadStackImpl11, ThreadCounterImpl11, ThreadStack, 
//            ThreadCounter

public class ThreadStackFactoryImpl11
    implements ThreadStackFactory
{

    public ThreadStackFactoryImpl11()
    {
    }

    public ThreadStack a()
    {
        return new ThreadStackImpl11();
    }

    public ThreadCounter b()
    {
        return new ThreadCounterImpl11();
    }
}
