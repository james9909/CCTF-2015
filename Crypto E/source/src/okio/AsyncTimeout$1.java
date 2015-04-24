// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.IOException;

// Referenced classes of package okio:
//            Sink, AsyncTimeout, Buffer, Timeout

class it>
    implements Sink
{

    final Sink a;
    final AsyncTimeout b;

    public void a()
    {
        b.c();
        a.a();
        b.a(true);
        return;
        IOException ioexception;
        ioexception;
        throw b.a(ioexception);
        Exception exception;
        exception;
        b.a(false);
        throw exception;
    }

    public void a_(Buffer buffer, long l)
    {
        b.c();
        a.a_(buffer, l);
        b.a(true);
        return;
        IOException ioexception;
        ioexception;
        throw b.a(ioexception);
        Exception exception;
        exception;
        b.a(false);
        throw exception;
    }

    public Timeout b()
    {
        return b;
    }

    public void close()
    {
        b.c();
        a.close();
        b.a(true);
        return;
        IOException ioexception;
        ioexception;
        throw b.a(ioexception);
        Exception exception;
        exception;
        b.a(false);
        throw exception;
    }

    public String toString()
    {
        return (new StringBuilder()).append("AsyncTimeout.sink(").append(a).append(")").toString();
    }

    der(AsyncTimeout asynctimeout, Sink sink)
    {
        b = asynctimeout;
        a = sink;
        super();
    }
}
