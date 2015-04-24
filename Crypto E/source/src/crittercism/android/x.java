// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package crittercism.android:
//            al, bz, c, e, 
//            dg, af, as, ae, 
//            ap

public final class x extends InputStream
    implements al
{

    private ae a;
    private c b;
    private InputStream c;
    private e d;
    private af e;

    public x(ae ae1, InputStream inputstream, e e1)
    {
        if (ae1 == null)
        {
            throw new NullPointerException("socket was null");
        }
        if (inputstream == null)
        {
            throw new NullPointerException("delegate was null");
        }
        if (e1 == null)
        {
            throw new NullPointerException("dispatch was null");
        }
        a = ae1;
        c = inputstream;
        d = e1;
        e = b();
        if (e == null)
        {
            throw new NullPointerException("parser was null");
        } else
        {
            return;
        }
    }

    private void a(Exception exception)
    {
        c c1;
        try
        {
            c1 = e();
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
            return;
        }
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        c1.g = bz.a(exception);
        d.a(c1, c.a.h);
    }

    private void a(byte abyte0[], int i, int j)
    {
        try
        {
            e.a(abyte0, i, j);
            return;
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            e = as.d;
            dg.a(throwable);
            return;
        }
    }

    private c e()
    {
        if (b == null)
        {
            b = a.b();
        }
        return b;
    }

    public final af a()
    {
        return e;
    }

    public final void a(int i)
    {
        c c1 = e();
        if (c1 != null)
        {
            c1.d();
            c1.e = i;
        }
    }

    public final void a(af af1)
    {
        e = af1;
    }

    public final void a(String s)
    {
    }

    public final void a(String s, String s1)
    {
    }

    public final boolean a(InputStream inputstream)
    {
        return c == inputstream;
    }

    public final int available()
    {
        return c.available();
    }

    public final af b()
    {
        return new ap(this);
    }

    public final void b(int i)
    {
        c _tmp = b;
        c c1 = b;
        c c2 = null;
        if (c1 != null)
        {
            int j = b.e;
            c2 = null;
            if (j >= 100)
            {
                c2 = null;
                if (j < 200)
                {
                    c2 = new c(b.a());
                    c2.e(b.a);
                    c2.d(b.d);
                    c2.f = b.f;
                }
            }
            b.b(i);
            d.a(b, c.a.g);
        }
        b = c2;
    }

    public final String c()
    {
        c c1 = e();
        String s = null;
        if (c1 != null)
        {
            s = c1.f;
        }
        return s;
    }

    public final void close()
    {
        try
        {
            e.f();
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
        }
        c.close();
    }

    public final void d()
    {
        if (b != null && b.g == bz.a && e != null)
        {
            e.f();
        }
    }

    public final void mark(int i)
    {
        c.mark(i);
    }

    public final boolean markSupported()
    {
        return c.markSupported();
    }

    public final int read()
    {
        int i;
        try
        {
            i = c.read();
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        try
        {
            e.a(i);
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            e = as.d;
            dg.a(throwable);
            return i;
        }
        return i;
    }

    public final int read(byte abyte0[])
    {
        int i;
        try
        {
            i = c.read(abyte0);
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        a(abyte0, 0, i);
        return i;
    }

    public final int read(byte abyte0[], int i, int j)
    {
        int k;
        try
        {
            k = c.read(abyte0, i, j);
        }
        catch (IOException ioexception)
        {
            a(ioexception);
            throw ioexception;
        }
        a(abyte0, i, k);
        return k;
    }

    public final void reset()
    {
        this;
        JVM INSTR monitorenter ;
        c.reset();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final long skip(long l)
    {
        return c.skip(l);
    }
}
