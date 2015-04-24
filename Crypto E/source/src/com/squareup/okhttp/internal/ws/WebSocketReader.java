// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.ws:
//            Protocol, WebSocketListener

public final class WebSocketReader
{
    public static interface FrameCallback
    {

        public abstract void a(Buffer buffer);

        public abstract void b(Buffer buffer);
    }

    final class FramedMessageSource
        implements Source
    {

        final WebSocketReader a;

        public long a(Buffer buffer, long l1)
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
            long l2 = Math.min(l1, WebSocketReader.d(a) - WebSocketReader.c(a));
            long l3;
            if (WebSocketReader.h(a))
            {
                long l4 = Math.min(l2, WebSocketReader.i(a).length);
                l3 = WebSocketReader.j(a).a(WebSocketReader.i(a), 0, (int)l4);
                if (l3 == -1L)
                {
                    throw new EOFException();
                }
                Protocol.a(WebSocketReader.i(a), l3, WebSocketReader.k(a), WebSocketReader.c(a));
                buffer.b(WebSocketReader.i(a), 0, (int)l3);
            } else
            {
                l3 = WebSocketReader.j(a).a(buffer, l2);
                if (l3 == -1L)
                {
                    throw new EOFException();
                }
            }
            WebSocketReader.a(a, l3 + WebSocketReader.c(a));
            return l3;
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


    private final boolean a;
    private final BufferedSource b;
    private final WebSocketListener c;
    private final FrameCallback d;
    private final Source e;
    private boolean f;
    private boolean g;
    private int h;
    private long i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private final byte n[];
    private final byte o[];

    static long a(WebSocketReader websocketreader, long l1)
    {
        websocketreader.j = l1;
        return l1;
    }

    static boolean a(WebSocketReader websocketreader)
    {
        return websocketreader.f;
    }

    static boolean a(WebSocketReader websocketreader, boolean flag)
    {
        websocketreader.g = flag;
        return flag;
    }

    private void b()
    {
        do
        {
label0:
            {
                if (!f)
                {
                    c();
                    if (l)
                    {
                        break label0;
                    }
                }
                return;
            }
            d();
        } while (true);
    }

    static boolean b(WebSocketReader websocketreader)
    {
        return websocketreader.g;
    }

    static long c(WebSocketReader websocketreader)
    {
        return websocketreader.j;
    }

    private void c()
    {
        boolean flag = true;
        if (f)
        {
            throw new IllegalStateException("Closed");
        }
        int i1 = 0xff & b.k();
        h = i1 & 0xf;
        boolean flag1;
        boolean flag2;
        if ((i1 & 0x80) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        k = flag1;
        if ((i1 & 8) != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        l = flag2;
        if (l && !k)
        {
            throw new ProtocolException("Control frames must be final.");
        }
        boolean flag3;
        boolean flag4;
        boolean flag5;
        if ((i1 & 0x40) != 0)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        if ((i1 & 0x20) != 0)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        if ((i1 & 0x10) != 0)
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        if (flag3 || flag4 || flag5)
        {
            throw new ProtocolException("Reserved flags are unsupported.");
        }
        int j1 = 0xff & b.k();
        if ((j1 & 0x80) == 0)
        {
            flag = false;
        }
        m = flag;
        if (m == a)
        {
            throw new ProtocolException("Client-sent frames must be masked. Server sent must not.");
        }
        i = j1 & 0x7f;
        if (i != 126L) goto _L2; else goto _L1
_L1:
        i = b.l();
_L4:
        j = 0L;
        if (l && i > 125L)
        {
            throw new ProtocolException("Control frame must be less than 125B.");
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (i == 127L)
        {
            i = b.n();
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (m)
        {
            b.a(n);
        }
        return;
    }

    static long d(WebSocketReader websocketreader)
    {
        return websocketreader.i;
    }

    private void d()
    {
        if (j >= i) goto _L2; else goto _L1
_L1:
        Buffer buffer = new Buffer();
        if (!a) goto _L4; else goto _L3
_L3:
        Buffer buffer1;
        b.b(buffer, i);
        buffer1 = buffer;
_L8:
        FrameCallback framecallback;
        int j1;
        switch (h)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown control opcode: ").append(Integer.toHexString(h)).toString());

        case 9: // '\t'
            d.a(buffer1);
            // fall through

        case 10: // '\n'
            return;

        case 8: // '\b'
            framecallback = d;
            break;
        }
          goto _L5
_L6:
        Protocol.a(o, j1, n, j);
        buffer.b(o, 0, j1);
        j = j + (long)j1;
_L4:
        if (j < i)
        {
            int i1 = (int)Math.min(i - j, o.length);
            j1 = b.a(o, 0, i1);
            if (j1 == -1)
            {
                throw new EOFException();
            }
        } else
        {
            buffer1 = buffer;
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L6; else goto _L5
_L5:
        Buffer buffer2 = null;
        if (buffer1 != null)
        {
            buffer2 = buffer1.v();
        }
        framecallback.b(buffer2);
        f = true;
        String s;
        short word0;
        if (buffer1 != null)
        {
            word0 = buffer1.l();
            s = buffer1.r();
        } else
        {
            s = "";
            word0 = 0;
        }
        c.a(word0, s);
        return;
_L2:
        buffer1 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static boolean e(WebSocketReader websocketreader)
    {
        return websocketreader.k;
    }

    static void f(WebSocketReader websocketreader)
    {
        websocketreader.b();
    }

    static int g(WebSocketReader websocketreader)
    {
        return websocketreader.h;
    }

    static boolean h(WebSocketReader websocketreader)
    {
        return websocketreader.m;
    }

    static byte[] i(WebSocketReader websocketreader)
    {
        return websocketreader.o;
    }

    static BufferedSource j(WebSocketReader websocketreader)
    {
        return websocketreader.b;
    }

    static byte[] k(WebSocketReader websocketreader)
    {
        return websocketreader.n;
    }

    public void a()
    {
        b();
        if (!f) goto _L2; else goto _L1
_L1:
        return;
_L2:
        WebSocket.PayloadType payloadtype;
        switch (h)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown opcode: ").append(Integer.toHexString(h)).toString());

        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            payloadtype = WebSocket.PayloadType.a;
            break;
        }
_L4:
        g = false;
        c.a(Okio.a(e), payloadtype);
        if (!g)
        {
            throw new IllegalStateException("Listener failed to call close on message payload.");
        }
        if (true) goto _L1; else goto _L3
_L3:
        payloadtype = WebSocket.PayloadType.b;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }
}
