// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

// Referenced classes of package org.apache.commons.lang3.concurrent:
//            ConcurrentInitializer, ConcurrentException, ConcurrentRuntimeException

public class ConcurrentUtils
{
    static final class ConstantFuture
        implements Future
    {

        private final Object value;

        public boolean cancel(boolean flag)
        {
            return false;
        }

        public Object get()
        {
            return value;
        }

        public Object get(long l, TimeUnit timeunit)
        {
            return value;
        }

        public boolean isCancelled()
        {
            return false;
        }

        public boolean isDone()
        {
            return true;
        }

        ConstantFuture(Object obj)
        {
            value = obj;
        }
    }


    private ConcurrentUtils()
    {
    }

    static Throwable checkedException(Throwable throwable)
    {
        if (throwable != null && !(throwable instanceof RuntimeException) && !(throwable instanceof Error))
        {
            return throwable;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Not a checked exception: ").append(throwable).toString());
        }
    }

    public static Future constantFuture(Object obj)
    {
        return new ConstantFuture(obj);
    }

    public static Object createIfAbsent(ConcurrentMap concurrentmap, Object obj, ConcurrentInitializer concurrentinitializer)
    {
        Object obj1;
        if (concurrentmap == null || concurrentinitializer == null)
        {
            obj1 = null;
        } else
        {
            obj1 = concurrentmap.get(obj);
            if (obj1 == null)
            {
                return putIfAbsent(concurrentmap, obj, concurrentinitializer.get());
            }
        }
        return obj1;
    }

    public static Object createIfAbsentUnchecked(ConcurrentMap concurrentmap, Object obj, ConcurrentInitializer concurrentinitializer)
    {
        Object obj1;
        try
        {
            obj1 = createIfAbsent(concurrentmap, obj, concurrentinitializer);
        }
        catch (ConcurrentException concurrentexception)
        {
            throw new ConcurrentRuntimeException(concurrentexception.getCause());
        }
        return obj1;
    }

    public static ConcurrentException extractCause(ExecutionException executionexception)
    {
        if (executionexception == null || executionexception.getCause() == null)
        {
            return null;
        } else
        {
            throwCause(executionexception);
            return new ConcurrentException(executionexception.getMessage(), executionexception.getCause());
        }
    }

    public static ConcurrentRuntimeException extractCauseUnchecked(ExecutionException executionexception)
    {
        if (executionexception == null || executionexception.getCause() == null)
        {
            return null;
        } else
        {
            throwCause(executionexception);
            return new ConcurrentRuntimeException(executionexception.getMessage(), executionexception.getCause());
        }
    }

    public static void handleCause(ExecutionException executionexception)
    {
        ConcurrentException concurrentexception = extractCause(executionexception);
        if (concurrentexception != null)
        {
            throw concurrentexception;
        } else
        {
            return;
        }
    }

    public static void handleCauseUnchecked(ExecutionException executionexception)
    {
        ConcurrentRuntimeException concurrentruntimeexception = extractCauseUnchecked(executionexception);
        if (concurrentruntimeexception != null)
        {
            throw concurrentruntimeexception;
        } else
        {
            return;
        }
    }

    public static Object initialize(ConcurrentInitializer concurrentinitializer)
    {
        if (concurrentinitializer != null)
        {
            return concurrentinitializer.get();
        } else
        {
            return null;
        }
    }

    public static Object initializeUnchecked(ConcurrentInitializer concurrentinitializer)
    {
        Object obj;
        try
        {
            obj = initialize(concurrentinitializer);
        }
        catch (ConcurrentException concurrentexception)
        {
            throw new ConcurrentRuntimeException(concurrentexception.getCause());
        }
        return obj;
    }

    public static Object putIfAbsent(ConcurrentMap concurrentmap, Object obj, Object obj1)
    {
        if (concurrentmap == null)
        {
            obj1 = null;
        } else
        {
            Object obj2 = concurrentmap.putIfAbsent(obj, obj1);
            if (obj2 != null)
            {
                return obj2;
            }
        }
        return obj1;
    }

    private static void throwCause(ExecutionException executionexception)
    {
        if (executionexception.getCause() instanceof RuntimeException)
        {
            throw (RuntimeException)executionexception.getCause();
        }
        if (executionexception.getCause() instanceof Error)
        {
            throw (Error)executionexception.getCause();
        } else
        {
            return;
        }
    }
}
