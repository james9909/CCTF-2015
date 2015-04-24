// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class Timeout
{

    public static final Timeout b = new Timeout() {

        public Timeout a(long l)
        {
            return this;
        }

        public Timeout a(long l, TimeUnit timeunit)
        {
            return this;
        }

        public void j()
        {
        }

    };
    private boolean a;
    private long c;
    private long d;

    public Timeout()
    {
    }

    public Timeout a(long l)
    {
        a = true;
        c = l;
        return this;
    }

    public Timeout a(long l, TimeUnit timeunit)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("timeout < 0: ").append(l).toString());
        }
        if (timeunit == null)
        {
            throw new IllegalArgumentException("unit == null");
        } else
        {
            d = timeunit.toNanos(l);
            return this;
        }
    }

    public long f()
    {
        return d;
    }

    public boolean g()
    {
        return a;
    }

    public long h()
    {
        if (!a)
        {
            throw new IllegalStateException("No deadline");
        } else
        {
            return c;
        }
    }

    public Timeout i()
    {
        a = false;
        return this;
    }

    public void j()
    {
        if (Thread.interrupted())
        {
            throw new InterruptedIOException();
        }
        if (a && System.nanoTime() > c)
        {
            throw new IOException("deadline reached");
        } else
        {
            return;
        }
    }

}
