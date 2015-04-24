// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.ws:
//            WebSocketReader, Protocol

final class I
    implements Source
{

    final WebSocketReader a;

    public long a(Buffer buffer, long l)
    {
        if (WebSocketReader.a(a))
        {
            throw new IOException("Closed");
        }
        if (WebSocketReader.b(a))
        {
            throw new IllegalStateException("Closed");
        }
        if (WebSocketReader.c(a) == WebSocketReader.d(a))
        {
            if (WebSocketReader.e(a))
            {
                return -1L;
            }
            WebSocketReader.f(a);
            if (WebSocketReader.g(a) != 0)
            {
                throw new ProtocolException((new StringBuilder()).append("Expected continuation opcode. Got: ").append(Integer.toHexString(WebSocketReader.g(a))).toString());
            }
        }
        long l1 = Math.min(l, WebSocketReader.d(a) - WebSocketReader.c(a));
        long l2;
        if (WebSocketReader.h(a))
        {
            long l3 = Math.min(l1, WebSocketReader.i(a).length);
            l2 = WebSocketReader.j(a).a(WebSocketReader.i(a), 0, (int)l3);
            if (l2 == -1L)
            {
                throw new EOFException();
            }
            Protocol.a(WebSocketReader.i(a), l2, WebSocketReader.k(a), WebSocketReader.c(a));
            buffer.b(WebSocketReader.i(a), 0, (int)l2);
        } else
        {
            l2 = WebSocketReader.j(a).a(buffer, l1);
            if (l2 == -1L)
            {
                throw new EOFException();
            }
        }
        WebSocketReader.a(a, l2 + WebSocketReader.c(a));
        return l2;
    }

    public Timeout b()
    {
        return WebSocketReader.j(a).b();
    }

    public void close()
    {
        if (!WebSocketReader.b(a)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        WebSocketReader.a(a, true);
        if (!WebSocketReader.a(a))
        {
            WebSocketReader.j(a).g(WebSocketReader.d(a) - WebSocketReader.c(a));
            while (!WebSocketReader.e(a)) 
            {
                WebSocketReader.f(a);
                WebSocketReader.j(a).g(WebSocketReader.d(a));
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
