// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.IOException;

// Referenced classes of package okio:
//            Source, AsyncTimeout, Buffer, Timeout

class it>
    implements Source
{

    final Source a;
    final AsyncTimeout b;

    public long a(Buffer buffer, long l)
    {
        b.c();
        long l1 = a.a(buffer, l);
        b.a(true);
        return l1;
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
        return (new StringBuilder()).append("AsyncTimeout.source(").append(a).append(")").toString();
    }

    der(AsyncTimeout asynctimeout, Source source)
    {
        b = asynctimeout;
        a = source;
        super();
    }
}
