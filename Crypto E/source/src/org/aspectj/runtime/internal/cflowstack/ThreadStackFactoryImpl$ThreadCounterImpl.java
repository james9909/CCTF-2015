// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.internal.cflowstack;


// Referenced classes of package org.aspectj.runtime.internal.cflowstack:
//            ThreadCounter, ThreadStackFactoryImpl

static class <init> extends ThreadLocal
    implements ThreadCounter
{
    static class Counter
    {

        protected int a;

        Counter()
        {
            a = 0;
        }
    }


    public Object initialValue()
    {
        return new Counter();
    }

    private Counter.a()
    {
    }

    Counter.a(Counter.a a)
    {
        this();
    }
}
