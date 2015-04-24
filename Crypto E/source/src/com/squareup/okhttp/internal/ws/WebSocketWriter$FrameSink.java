// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import java.util.Random;
import okio.Buffer;
import okio.BufferedSink;
import okio.Sink;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.ws:
//            WebSocketWriter

final class 
    implements Sink
{

    final WebSocketWriter a;
    private a b;
    private boolean c;

    public void a()
    {
        synchronized (WebSocketWriter.a(a))
        {
            WebSocketWriter.a(a).a();
        }
        return;
        exception;
        bufferedsink;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a_(Buffer buffer, long l)
    {
        WebSocketWriter.a(a, b, buffer, l, c, false);
        c = false;
    }

    public Timeout b()
    {
        return WebSocketWriter.a(a).b();
    }

    public void close()
    {
        BufferedSink bufferedsink = WebSocketWriter.a(a);
        bufferedsink;
        JVM INSTR monitorenter ;
        WebSocketWriter.a(a).i(128);
        if (!WebSocketWriter.b(a))
        {
            break MISSING_BLOCK_LABEL_113;
        }
        WebSocketWriter.a(a).i(128);
        WebSocketWriter.d(a).nextBytes(WebSocketWriter.c(a));
        WebSocketWriter.a(a).c(WebSocketWriter.c(a));
_L1:
        WebSocketWriter.a(a).a();
        WebSocketWriter.a(a, false);
        return;
        WebSocketWriter.a(a).i(0);
          goto _L1
        Exception exception;
        exception;
        bufferedsink;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
