// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, SpdyStream, ErrorCode, Ping, 
//            Settings, HeadersMode, Variant, FrameReader, 
//            IncomingStreamHandler, FrameWriter

class <init> extends NamedRunnable
    implements <init>
{

    FrameReader a;
    final SpdyConnection c;

    private void a(Settings settings)
    {
        ExecutorService executorservice = SpdyConnection.f();
        Object aobj[] = new Object[1];
        aobj[0] = SpdyConnection.a(c);
        executorservice.submit(new NamedRunnable("OkHttp %s ACK Settings", aobj, settings) {

            final Settings a;
            final SpdyConnection.Reader c;

            public void b()
            {
                try
                {
                    c.c.i.a(a);
                    return;
                }
                catch (IOException ioexception)
                {
                    return;
                }
            }

            transient 
            {
                c = SpdyConnection.Reader.this;
                a = settings;
                super(s, aobj);
            }
        });
    }

    public void a()
    {
    }

    public void a(int i, int j, int k, boolean flag)
    {
    }

    public void a(int i, int j, List list)
    {
        SpdyConnection.a(c, j, list);
    }

    public void a(int i, long l)
    {
        if (i == 0)
        {
            synchronized (c)
            {
                SpdyConnection spdyconnection1 = c;
                spdyconnection1.d = l + spdyconnection1.d;
                c.notifyAll();
            }
            return;
        }
        break MISSING_BLOCK_LABEL_50;
        exception1;
        spdyconnection;
        JVM INSTR monitorexit ;
        throw exception1;
        SpdyStream spdystream;
        spdystream = c.a(i);
        if (spdystream == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        spdystream;
        JVM INSTR monitorenter ;
        spdystream.a(l);
        spdystream;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int i, ErrorCode errorcode)
    {
        if (SpdyConnection.a(c, i))
        {
            SpdyConnection.a(c, i, errorcode);
        } else
        {
            SpdyStream spdystream = c.b(i);
            if (spdystream != null)
            {
                spdystream.c(errorcode);
                return;
            }
        }
    }

    public void a(int i, ErrorCode errorcode, ByteString bytestring)
    {
        if (bytestring.e() <= 0);
        SpdyStream aspdystream[];
        synchronized (c)
        {
            aspdystream = (SpdyStream[])SpdyConnection.e(c).values().toArray(new SpdyStream[SpdyConnection.e(c).size()]);
            SpdyConnection.b(c, true);
        }
        int j = aspdystream.length;
        for (int k = 0; k < j; k++)
        {
            SpdyStream spdystream = aspdystream[k];
            if (spdystream.a() > i && spdystream.c())
            {
                spdystream.c(ErrorCode.k);
                c.b(spdystream.a());
            }
        }

        break MISSING_BLOCK_LABEL_139;
        exception;
        spdyconnection;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(boolean flag, int i, int j)
    {
        if (flag)
        {
            Ping ping = SpdyConnection.c(c, i);
            if (ping != null)
            {
                ping.b();
            }
            return;
        } else
        {
            SpdyConnection.b(c, true, i, j, null);
            return;
        }
    }

    public void a(boolean flag, int i, BufferedSource bufferedsource, int j)
    {
        if (SpdyConnection.a(c, i))
        {
            SpdyConnection.a(c, i, bufferedsource, j, flag);
        } else
        {
            SpdyStream spdystream = c.a(i);
            if (spdystream == null)
            {
                c.a(i, ErrorCode.c);
                bufferedsource.g(j);
                return;
            }
            spdystream.a(bufferedsource, j);
            if (flag)
            {
                spdystream.h();
                return;
            }
        }
    }

    public void a(boolean flag, Settings settings)
    {
        SpdyConnection spdyconnection = c;
        spdyconnection;
        JVM INSTR monitorenter ;
        int i = c.f.e(0x10000);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        c.f.a();
        int j;
        c.f.a(settings);
        if (c.a() == Protocol.d)
        {
            a(settings);
        }
        j = c.f.e(0x10000);
        long l;
        if (j == -1 || j == i)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        l = j - i;
        if (!SpdyConnection.g(c))
        {
            c.a(l);
            SpdyConnection.a(c, true);
        }
        if (SpdyConnection.e(c).isEmpty()) goto _L2; else goto _L1
_L1:
        SpdyStream aspdystream[] = (SpdyStream[])SpdyConnection.e(c).values().toArray(new SpdyStream[SpdyConnection.e(c).size()]);
_L3:
        spdyconnection;
        JVM INSTR monitorexit ;
        if (aspdystream != null && l != 0L)
        {
            int k = aspdystream.length;
            for (int i1 = 0; i1 < k; i1++)
            {
                synchronized (aspdystream[i1])
                {
                    spdystream.a(l);
                }
            }

        }
        break MISSING_BLOCK_LABEL_249;
        Exception exception;
        exception;
        spdyconnection;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        spdystream;
        JVM INSTR monitorexit ;
        throw exception1;
        return;
_L2:
        aspdystream = null;
          goto _L3
        l = 0L;
        aspdystream = null;
          goto _L3
    }

    public void a(boolean flag, boolean flag1, int i, int j, List list, HeadersMode headersmode)
    {
        if (!SpdyConnection.a(c, i)) goto _L2; else goto _L1
_L1:
        SpdyConnection.a(c, i, list, flag1);
_L4:
        return;
_L2:
        synchronized (c)
        {
            if (!SpdyConnection.b(c))
            {
                break MISSING_BLOCK_LABEL_54;
            }
        }
        return;
        exception;
        spdyconnection;
        JVM INSTR monitorexit ;
        throw exception;
        SpdyStream spdystream = c.a(i);
        if (spdystream != null)
        {
            break MISSING_BLOCK_LABEL_228;
        }
        if (!headersmode.a())
        {
            break MISSING_BLOCK_LABEL_92;
        }
        c.a(i, ErrorCode.c);
        spdyconnection;
        JVM INSTR monitorexit ;
        return;
        if (i > SpdyConnection.c(c))
        {
            break MISSING_BLOCK_LABEL_107;
        }
        spdyconnection;
        JVM INSTR monitorexit ;
        return;
        if (i % 2 != SpdyConnection.d(c) % 2)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        spdyconnection;
        JVM INSTR monitorexit ;
        return;
        SpdyStream spdystream1 = new SpdyStream(i, c, flag, flag1, list);
        SpdyConnection.b(c, i);
        SpdyConnection.e(c).put(Integer.valueOf(i), spdystream1);
        ExecutorService executorservice = SpdyConnection.f();
        Object aobj[] = new Object[2];
        aobj[0] = SpdyConnection.a(c);
        aobj[1] = Integer.valueOf(i);
        executorservice.submit(new NamedRunnable("OkHttp %s stream %d", aobj, spdystream1) {

            final SpdyStream a;
            final SpdyConnection.Reader c;

            public void b()
            {
                try
                {
                    SpdyConnection.f(c.c).a(a);
                    return;
                }
                catch (IOException ioexception)
                {
                    throw new RuntimeException(ioexception);
                }
            }

            transient 
            {
                c = SpdyConnection.Reader.this;
                a = spdystream;
                super(s, aobj);
            }
        });
        spdyconnection;
        JVM INSTR monitorexit ;
        return;
        spdyconnection;
        JVM INSTR monitorexit ;
        if (headersmode.b())
        {
            spdystream.b(ErrorCode.b);
            c.b(i);
            return;
        }
        spdystream.a(list, headersmode);
        if (flag1)
        {
            spdystream.h();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void b()
    {
        ErrorCode errorcode;
        ErrorCode errorcode1;
        errorcode = ErrorCode.g;
        errorcode1 = ErrorCode.g;
        ErrorCode errorcode4;
        a = c.g.a(Okio.a(Okio.b(c.h)), c.b);
        if (!c.b)
        {
            a.a();
        }
        while (a.a(this)) ;
        errorcode = ErrorCode.a;
        errorcode4 = ErrorCode.l;
        Exception exception;
        ErrorCode errorcode2;
        Exception exception1;
        IOException ioexception;
        IOException ioexception1;
        ErrorCode errorcode3;
        IOException ioexception2;
        try
        {
            SpdyConnection.a(c, errorcode, errorcode4);
        }
        catch (IOException ioexception3) { }
        Util.a(a);
        return;
        ioexception1;
        errorcode2 = ErrorCode.b;
        errorcode3 = ErrorCode.b;
        try
        {
            SpdyConnection.a(c, errorcode2, errorcode3);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception2) { }
        Util.a(a);
        return;
        exception;
        errorcode2 = errorcode;
        exception1 = exception;
_L2:
        try
        {
            SpdyConnection.a(c, errorcode2, errorcode1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception) { }
        Util.a(a);
        throw exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private _cls2.a(SpdyConnection spdyconnection)
    {
        c = spdyconnection;
        Object aobj[] = new Object[1];
        aobj[0] = SpdyConnection.a(spdyconnection);
        super("OkHttp %s", aobj);
    }

    c(SpdyConnection spdyconnection, c c1)
    {
        this(spdyconnection);
    }
}
