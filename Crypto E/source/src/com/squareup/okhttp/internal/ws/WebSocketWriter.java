// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import java.util.Random;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Sink;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.ws:
//            Protocol

public final class WebSocketWriter
{
    final class FrameSink
        implements Sink
    {

        final WebSocketWriter a;
        private WebSocket.PayloadType b;
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


    private final boolean a;
    private final BufferedSink b;
    private final Random c;
    private boolean d;
    private boolean e;
    private final byte f[];
    private final byte g[];

    static BufferedSink a(WebSocketWriter websocketwriter)
    {
        return websocketwriter.b;
    }

    private void a(int i, Buffer buffer)
    {
        int j;
        j = 0;
        if (buffer != null)
        {
            j = (int)buffer.c();
            if (j > 125)
            {
                throw new IllegalArgumentException("Control frame payload must be less than 125B.");
            }
        }
        int k = i | 0x80;
        b.i(k);
        if (!a) goto _L2; else goto _L1
_L1:
        int l = j | 0x80;
        b.i(l);
        c.nextBytes(f);
        b.c(f);
        if (buffer != null)
        {
            a(((BufferedSource) (buffer)), j);
        }
_L4:
        b.a();
        return;
_L2:
        b.i(j);
        if (buffer != null)
        {
            b.a(buffer);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(WebSocket.PayloadType payloadtype, Buffer buffer, long l, boolean flag, boolean flag1)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[WebSocket.PayloadType.values().length];
                try
                {
                    a[WebSocket.PayloadType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[WebSocket.PayloadType.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls1.a[payloadtype.ordinal()];
        JVM INSTR tableswitch 1 2: default 36
    //                   1 63
    //                   2 300;
           goto _L3 _L4 _L5
_L3:
        throw new IllegalStateException((new StringBuilder()).append("Unknown payload type: ").append(payloadtype).toString());
_L4:
        int i = 1;
_L11:
        BufferedSink bufferedsink = b;
        bufferedsink;
        JVM INSTR monitorenter ;
        if (flag1)
        {
            i |= 0x80;
        }
        boolean flag2;
        b.i(i);
        flag2 = a;
        char c1;
        c1 = '\0';
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        c1 = '\200';
        c.nextBytes(f);
        if (l > 125L) goto _L7; else goto _L6
_L6:
        int i1 = c1 | (int)l;
        b.i(i1);
_L8:
        if (!a)
        {
            break MISSING_BLOCK_LABEL_280;
        }
        b.c(f);
        a(((BufferedSource) (buffer)), l);
_L9:
        b.a();
        bufferedsink;
        JVM INSTR monitorexit ;
        return;
_L7:
        int k;
        if (l > 32767L)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        k = c1 | 0x7e;
        b.i(k);
        b.h((int)l);
          goto _L8
        Exception exception;
        exception;
        bufferedsink;
        JVM INSTR monitorexit ;
        throw exception;
        int j = c1 | 0x7f;
        b.i(j);
        b.i(l);
          goto _L8
        b.a_(buffer, l);
          goto _L9
_L2:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L5:
        i = 2;
        if (true) goto _L11; else goto _L10
_L10:
    }

    static void a(WebSocketWriter websocketwriter, WebSocket.PayloadType payloadtype, Buffer buffer, long l, boolean flag, boolean flag1)
    {
        websocketwriter.a(payloadtype, buffer, l, flag, flag1);
    }

    private void a(BufferedSource bufferedsource, long l)
    {
        int j;
        for (long l1 = 0L; l1 < l; l1 += j)
        {
            int i = (int)Math.min(l, g.length);
            j = bufferedsource.a(g, 0, i);
            if (j == -1)
            {
                throw new AssertionError();
            }
            Protocol.a(g, j, f, l1);
            b.c(g, 0, j);
        }

    }

    static boolean a(WebSocketWriter websocketwriter, boolean flag)
    {
        websocketwriter.e = flag;
        return flag;
    }

    static boolean b(WebSocketWriter websocketwriter)
    {
        return websocketwriter.a;
    }

    static byte[] c(WebSocketWriter websocketwriter)
    {
        return websocketwriter.f;
    }

    static Random d(WebSocketWriter websocketwriter)
    {
        return websocketwriter.c;
    }

    public void a(int i, String s)
    {
        if (d)
        {
            throw new IllegalStateException("Closed");
        }
        Buffer buffer;
        if (i != 0)
        {
            if (i < 1000 || i >= 5000)
            {
                throw new IllegalArgumentException("Code must be in range [1000,5000).");
            }
            buffer = new Buffer();
            buffer.b(i);
            if (s != null)
            {
                buffer.a(s);
            }
        } else
        {
            buffer = null;
            if (s != null)
            {
                throw new IllegalArgumentException("Code required to include reason.");
            }
        }
        b(buffer);
    }

    public void a(Buffer buffer)
    {
        if (d)
        {
            throw new IllegalStateException("Closed");
        }
        synchronized (b)
        {
            a(10, buffer);
        }
        return;
        exception;
        bufferedsink;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(Buffer buffer)
    {
        synchronized (b)
        {
            a(8, buffer);
            d = true;
        }
        return;
        exception;
        bufferedsink;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
