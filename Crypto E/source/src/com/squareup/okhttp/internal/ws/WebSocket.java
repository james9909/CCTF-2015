// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.Executor;
import okio.Buffer;

// Referenced classes of package com.squareup.okhttp.internal.ws:
//            WebSocketWriter, WebSocketListener, WebSocketReader

public final class WebSocket
{
    public static final class PayloadType extends Enum
    {

        public static final PayloadType a;
        public static final PayloadType b;
        private static final PayloadType c[];

        public static PayloadType valueOf(String s)
        {
            return (PayloadType)Enum.valueOf(com/squareup/okhttp/internal/ws/WebSocket$PayloadType, s);
        }

        public static PayloadType[] values()
        {
            return (PayloadType[])c.clone();
        }

        static 
        {
            a = new PayloadType("TEXT", 0);
            b = new PayloadType("BINARY", 1);
            PayloadType apayloadtype[] = new PayloadType[2];
            apayloadtype[0] = a;
            apayloadtype[1] = b;
            c = apayloadtype;
        }

        private PayloadType(String s, int i)
        {
            super(s, i);
        }
    }

    class ReaderRunnable extends NamedRunnable
    {

        final WebSocket a;
        private final WebSocketReader c;
        private final WebSocketListener d;

        protected void b()
        {
_L2:
            if (WebSocket.c(a))
            {
                break; /* Loop/switch isn't completed */
            }
            c.a();
            if (true) goto _L2; else goto _L1
            IOException ioexception;
            ioexception;
            WebSocket.a(a, ioexception, d);
_L1:
        }
    }


    private final Executor a;
    private volatile boolean b;
    private volatile boolean c;
    private final Object d;
    private Connection e;
    private WebSocketWriter f;

    static WebSocketWriter a(WebSocket websocket)
    {
        return websocket.f;
    }

    private void a()
    {
        Internal.b.b(e, this);
        e = null;
    }

    static void a(WebSocket websocket, IOException ioexception, WebSocketListener websocketlistener)
    {
        websocket.a(ioexception, websocketlistener);
    }

    static void a(WebSocket websocket, Buffer buffer)
    {
        websocket.a(buffer);
    }

    private void a(IOException ioexception, WebSocketListener websocketlistener)
    {
        boolean flag = true;
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        c = true;
        if (b)
        {
            flag = false;
        }
        b = true;
        if (flag)
        {
            Exception exception;
            if (ioexception instanceof ProtocolException)
            {
                try
                {
                    f.a(1002, null);
                }
                catch (IOException ioexception2) { }
            }
            try
            {
                a();
            }
            catch (IOException ioexception1) { }
        }
        websocketlistener.a(ioexception);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(Buffer buffer)
    {
        boolean flag;
        synchronized (d)
        {
            c = true;
            flag = b;
            b = true;
        }
        if (flag)
        {
            a();
            return;
        } else
        {
            f.b(buffer);
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Executor b(WebSocket websocket)
    {
        return websocket.a;
    }

    static boolean c(WebSocket websocket)
    {
        return websocket.c;
    }

    // Unreferenced inner class com/squareup/okhttp/internal/ws/WebSocket$1

/* anonymous class */
    class _cls1
        implements WebSocketReader.FrameCallback
    {

        final WebSocket a;

        public void a(Buffer buffer)
        {
            WebSocket.b(a).execute(new NamedRunnable(this, "WebSocket PongWriter", new Object[0], buffer) {

                final Buffer a;
                final _cls1 c;

                protected void b()
                {
                    try
                    {
    class _cls1
        implements WebSocketReader.FrameCallback
    {
                        WebSocket.a(c.a).a(a);
                        return;
                    }
                    catch (IOException ioexception)
                    {
                        return;
                    }
                }

            transient 
            {
                c = _pcls1;
                a = buffer;
                super(s, aobj);
            }
            });
        }

        public void b(Buffer buffer)
        {
            WebSocket.a(a, buffer);
        }
    }

}
