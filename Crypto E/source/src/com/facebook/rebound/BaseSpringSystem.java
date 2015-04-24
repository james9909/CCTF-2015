// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

// Referenced classes of package com.facebook.rebound:
//            ReentrantCallback, SpringLooper, Spring, SpringClock, 
//            SpringSystemListener

public class BaseSpringSystem
{

    private final Map a = new HashMap();
    private final Set b = new CopyOnWriteArraySet();
    private final SpringClock c;
    private final SpringLooper d;
    private long e;
    private ReentrantCallback f;
    private boolean g;

    public BaseSpringSystem(SpringClock springclock, SpringLooper springlooper)
    {
        e = -1L;
        f = new ReentrantCallback();
        g = true;
        if (springclock == null)
        {
            throw new IllegalArgumentException("clock is required");
        }
        if (springlooper == null)
        {
            throw new IllegalArgumentException("springLooper is required");
        } else
        {
            c = springclock;
            d = springlooper;
            d.a(this);
            return;
        }
    }

    void a(long l, long l1)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            Spring spring = (Spring)iterator.next();
            if (spring.e())
            {
                spring.a((double)l / 1000D, (double)l1 / 1000D);
            } else
            {
                b.remove(spring);
            }
        }

    }

    void a(Spring spring)
    {
        if (spring == null)
        {
            throw new IllegalArgumentException("spring is required");
        }
        if (a.containsKey(spring.a()))
        {
            throw new IllegalArgumentException("spring is already registered");
        } else
        {
            a.put(spring.a(), spring);
            return;
        }
    }

    void a(String s)
    {
        Spring spring;
        spring = (Spring)a.get(s);
        if (spring == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("springId ").append(s).append(" does not reference a registered spring").toString());
        }
        this;
        JVM INSTR monitorenter ;
        b.add(spring);
        if (a())
        {
            g = false;
            d.b();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a()
    {
        return g;
    }

    public Spring b()
    {
        Spring spring = new Spring(this);
        a(spring);
        return spring;
    }

    public void c()
    {
        long l = c.a();
        if (e == -1L)
        {
            e = l - 1L;
        }
        long l1 = l - e;
        e = l;
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((SpringSystemListener)iterator.next()).a(this)) { }
        a(l, l1);
        this;
        JVM INSTR monitorenter ;
        if (b.isEmpty())
        {
            g = true;
            e = -1L;
        }
        this;
        JVM INSTR monitorexit ;
        for (Iterator iterator1 = f.iterator(); iterator1.hasNext(); ((SpringSystemListener)iterator1.next()).b(this)) { }
        break MISSING_BLOCK_LABEL_155;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (g)
        {
            d.c();
        }
        return;
    }
}
