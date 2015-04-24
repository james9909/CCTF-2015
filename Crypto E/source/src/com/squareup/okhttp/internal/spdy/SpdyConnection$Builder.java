// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import java.net.Socket;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            IncomingStreamHandler, PushObserver, SpdyConnection

public static class b
{

    private String a;
    private Socket b;
    private IncomingStreamHandler c;
    private Protocol d;
    private PushObserver e;
    private boolean f;

    static Protocol a(b b1)
    {
        return b1.d;
    }

    static PushObserver b(d d1)
    {
        return d1.e;
    }

    static boolean c(e e1)
    {
        return e1.f;
    }

    static IncomingStreamHandler d(f f1)
    {
        return f1.c;
    }

    static String e(c c1)
    {
        return c1.a;
    }

    static Socket f(a a1)
    {
        return a1.b;
    }

    public b a(Protocol protocol)
    {
        d = protocol;
        return this;
    }

    public SpdyConnection a()
    {
        return new SpdyConnection(this, null);
    }

    public (String s, boolean flag, Socket socket)
    {
        c = IncomingStreamHandler.a;
        d = Protocol.c;
        e = PushObserver.a;
        a = s;
        f = flag;
        b = socket;
    }
}
