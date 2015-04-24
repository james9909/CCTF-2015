// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            EasyMetric

public class DictionaryEasyMetric
{
    static final class LoggingType extends Enum
    {

        public static final LoggingType a;
        public static final LoggingType b;
        public static final LoggingType c;
        private static final LoggingType d[];

        public static LoggingType valueOf(String s)
        {
            return (LoggingType)Enum.valueOf(com/snapchat/android/analytics/framework/DictionaryEasyMetric$LoggingType, s);
        }

        public static LoggingType[] values()
        {
            return (LoggingType[])d.clone();
        }

        static 
        {
            a = new LoggingType("BEGIN", 0);
            b = new LoggingType("END", 1);
            c = new LoggingType("ONE_TIME_EVENT", 2);
            LoggingType aloggingtype[] = new LoggingType[3];
            aloggingtype[0] = a;
            aloggingtype[1] = b;
            aloggingtype[2] = c;
            d = aloggingtype;
        }

        private LoggingType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final DictionaryEasyMetric g = new DictionaryEasyMetric();
    private final Clock a;
    private final EasyMetric.EasyMetricFactory b;
    private final Map c;
    private final Map d;
    private final Map e;
    private final Object f;

    protected DictionaryEasyMetric()
    {
        this((new ClockProvider()).a(), new EasyMetric.EasyMetricFactory());
    }

    DictionaryEasyMetric(Clock clock, EasyMetric.EasyMetricFactory easymetricfactory)
    {
        c = new HashMap();
        d = new HashMap();
        e = new HashMap();
        f = new Object();
        a = clock;
        b = easymetricfactory;
    }

    private long a(String s, long l)
    {
        return l - PrimitiveUtils.a((Long)c.get(s));
    }

    public static DictionaryEasyMetric a()
    {
        return g;
    }

    private long c()
    {
        return a.b();
    }

    private String c(String s, String s1)
    {
        return (new StringBuilder()).append(s).append(", ").append(s1).toString();
    }

    private void d(String s)
    {
        if (c.containsKey(s))
        {
            c.remove(s);
        }
        if (d.containsKey(s))
        {
            d.remove(s);
        }
        if (e.containsKey(s))
        {
            e.remove(s);
        }
    }

    public DictionaryEasyMetric a(String s, String s1, Object obj)
    {
        return a(s, s1, obj, true);
    }

    public DictionaryEasyMetric a(String s, String s1, Object obj, boolean flag)
    {
        Object obj1 = f;
        obj1;
        JVM INSTR monitorenter ;
        if (!d.containsKey(s))
        {
            d.put(s, new HashMap());
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        if (((Map)d.get(s)).containsKey(s1))
        {
            break MISSING_BLOCK_LABEL_88;
        }
        ((Map)d.get(s)).put(s1, obj);
        obj1;
        JVM INSTR monitorexit ;
        return this;
        Exception exception;
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public DictionaryEasyMetric a(String s, String s1, String s2)
    {
        return a(s, s1, s2);
    }

    public void a(String s)
    {
        a(s, true);
    }

    public void a(String s, String s1)
    {
        synchronized (f)
        {
            a(c(s, s1));
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, Map map)
    {
        synchronized (f)
        {
            if (!d.containsKey(s))
            {
                d.put(s, new HashMap());
            }
            ((Map)d.get(s)).putAll(map);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, boolean flag)
    {
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        if (c.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_42;
        }
        c.put(s, Long.valueOf(c()));
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        synchronized (f)
        {
            c.clear();
            d.clear();
            e.clear();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s)
    {
        synchronized (f)
        {
            d(s);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s, String s1)
    {
        synchronized (f)
        {
            a(s, s1, Long.toString(a(c(s, s1), c())));
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s, boolean flag)
    {
        synchronized (f)
        {
            EasyMetric easymetric = b.a(s);
            if (c.containsKey(s))
            {
                easymetric.a(a(s, c()));
                if (d.containsKey(s))
                {
                    easymetric.a((Map)d.get(s));
                }
                if (e.containsKey(s))
                {
                    easymetric.b((Map)e.get(s));
                }
                easymetric.a(flag);
            }
            d(s);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(String s)
    {
        b(s, true);
    }


    // Unreferenced inner class com/snapchat/android/analytics/framework/DictionaryEasyMetric$1

/* anonymous class */
    static class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[LoggingType.values().length];
            try
            {
                a[LoggingType.a.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[LoggingType.b.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[LoggingType.c.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2)
            {
                return;
            }
        }
    }

}
