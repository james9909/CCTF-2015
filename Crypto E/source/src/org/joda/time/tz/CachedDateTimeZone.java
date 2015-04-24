// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import org.joda.time.DateTimeZone;

public class CachedDateTimeZone extends DateTimeZone
{
    static final class Info
    {

        public final long a;
        public final DateTimeZone b;
        Info c;
        private String d;
        private int e;
        private int f;

        public String a(long l)
        {
            if (c == null || l < c.a)
            {
                if (d == null)
                {
                    d = b.a(a);
                }
                return d;
            } else
            {
                return c.a(l);
            }
        }

        public int b(long l)
        {
            if (c == null || l < c.a)
            {
                if (e == 0x80000000)
                {
                    e = b.b(a);
                }
                return e;
            } else
            {
                return c.b(l);
            }
        }

        Info(DateTimeZone datetimezone, long l)
        {
            e = 0x80000000;
            f = 0x80000000;
            a = l;
            b = datetimezone;
        }
    }


    private static final int b;
    private final DateTimeZone c;
    private final Info d[];

    private CachedDateTimeZone(DateTimeZone datetimezone)
    {
        super(datetimezone.c());
        d = new Info[1 + b];
        c = datetimezone;
    }

    public static CachedDateTimeZone a(DateTimeZone datetimezone)
    {
        if (datetimezone instanceof CachedDateTimeZone)
        {
            return (CachedDateTimeZone)datetimezone;
        } else
        {
            return new CachedDateTimeZone(datetimezone);
        }
    }

    private Info g(long l)
    {
        int i = (int)(l >> 32);
        Info ainfo[] = d;
        int j = i & b;
        Info info = ainfo[j];
        if (info == null || (int)(info.a >> 32) != i)
        {
            info = h(l);
            ainfo[j] = info;
        }
        return info;
    }

    private Info h(long l)
    {
        long l1 = l & 0xffffffff00000000L;
        Info info = new Info(c, l1);
        long l2 = l1 | 0xffffffffL;
        Info info1 = info;
        do
        {
            long l3 = c.e(l1);
            if (l3 == l1 || l3 > l2)
            {
                return info;
            }
            Info info2 = new Info(c, l3);
            info1.c = info2;
            info1 = info2;
            l1 = l3;
        } while (true);
    }

    public String a(long l)
    {
        return g(l).a(l);
    }

    public int b(long l)
    {
        return g(l).b(l);
    }

    public boolean d()
    {
        return c.d();
    }

    public long e(long l)
    {
        return c.e(l);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof CachedDateTimeZone)
        {
            return c.equals(((CachedDateTimeZone)obj).c);
        } else
        {
            return false;
        }
    }

    public long f(long l)
    {
        return c.f(l);
    }

    public int hashCode()
    {
        return c.hashCode();
    }

    static 
    {
        Integer integer1 = Integer.getInteger("org.joda.time.tz.CachedDateTimeZone.size");
        Integer integer = integer1;
_L1:
        SecurityException securityexception;
        int k;
        if (integer == null)
        {
            k = 512;
        } else
        {
            int i = -1 + integer.intValue();
            int j = 0;
            for (; i > 0; i >>= 1)
            {
                j++;
            }

            k = 1 << j;
        }
        b = k - 1;
        return;
        securityexception;
        integer = null;
          goto _L1
    }
}
