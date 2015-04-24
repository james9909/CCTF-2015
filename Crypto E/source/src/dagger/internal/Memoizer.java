// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

abstract class Memoizer
{

    private final Map a = new LinkedHashMap();
    private final Lock b;
    private final Lock c;

    public Memoizer()
    {
        ReentrantReadWriteLock reentrantreadwritelock = new ReentrantReadWriteLock();
        b = reentrantreadwritelock.readLock();
        c = reentrantreadwritelock.writeLock();
    }

    protected abstract Object a(Object obj);

    public final Object b(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("key == null");
        }
        b.lock();
        Object obj1 = a.get(obj);
        Object obj2;
        if (obj1 != null)
        {
            b.unlock();
            return obj1;
        }
        b.unlock();
        obj2 = a(obj);
        if (obj2 == null)
        {
            throw new NullPointerException("create returned null");
        }
        break MISSING_BLOCK_LABEL_92;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
        c.lock();
        a.put(obj, obj2);
        c.unlock();
        return obj2;
        Exception exception1;
        exception1;
        c.unlock();
        throw exception1;
    }

    public final String toString()
    {
        b.lock();
        String s = a.toString();
        b.unlock();
        return s;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }
}
