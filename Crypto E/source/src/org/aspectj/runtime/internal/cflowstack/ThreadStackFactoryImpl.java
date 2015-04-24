// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.internal.cflowstack;

import java.util.Stack;

// Referenced classes of package org.aspectj.runtime.internal.cflowstack:
//            ThreadStackFactory, ThreadStack, ThreadCounter

public class ThreadStackFactoryImpl
    implements ThreadStackFactory
{
    static class ThreadCounterImpl extends ThreadLocal
        implements ThreadCounter
    {

        public Object initialValue()
        {
            return new Counter();
        }

        private ThreadCounterImpl()
        {
        }

    }

    static class ThreadCounterImpl.Counter
    {

        protected int a;

        ThreadCounterImpl.Counter()
        {
            a = 0;
        }
    }

    static class ThreadStackImpl extends ThreadLocal
        implements ThreadStack
    {

        public Object initialValue()
        {
            return new Stack();
        }

        private ThreadStackImpl()
        {
        }

    }


    public ThreadStackFactoryImpl()
    {
    }

    public ThreadStack a()
    {
        return new ThreadStackImpl();
    }

    public ThreadCounter b()
    {
        return new ThreadCounterImpl();
    }
}
