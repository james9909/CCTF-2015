// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            FrameWriter, Http20Draft16, ErrorCode, Settings

static final class e
    implements FrameWriter
{

    private final BufferedSink a;
    private final boolean b;
    private final Buffer c = new Buffer();
    private final a d;
    private int e;
    private boolean f;

    private void b(int i, long l)
    {
        while (l > 0L) 
        {
            int j = (int)Math.min(e, l);
            l -= j;
            byte byte0;
            if (l == 0L)
            {
                byte0 = 4;
            } else
            {
                byte0 = 0;
            }
            a(i, j, (byte)9, byte0);
            a.a_(c, j);
        }
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        boolean flag = b;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_36;
        }
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        if (Http20Draft16.b().isLoggable(Level.FINE))
        {
            Logger logger = Http20Draft16.b();
            Object aobj[] = new Object[1];
            aobj[0] = Http20Draft16.a().c();
            logger.fine(String.format(">> CONNECTION %s", aobj));
        }
        a.c(Http20Draft16.a().f());
        a.a();
          goto _L1
    }

    void a(int i, byte byte0, Buffer buffer, int j)
    {
        a(i, j, (byte)0, byte0);
        if (j > 0)
        {
            a.a_(buffer, j);
        }
    }

    void a(int i, int j, byte byte0, byte byte1)
    {
        if (Http20Draft16.b().isLoggable(Level.FINE))
        {
            Http20Draft16.b().fine(gger.a(false, i, j, byte0, byte1));
        }
        if (j > e)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(e);
            aobj1[1] = Integer.valueOf(j);
            throw Http20Draft16.b("FRAME_SIZE_ERROR length > %d: %d", aobj1);
        }
        if ((0x80000000 & i) != 0)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            throw Http20Draft16.b("reserved bit set: %s", aobj);
        } else
        {
            Http20Draft16.a(a, j);
            a.i(byte0 & 0xff);
            a.i(byte1 & 0xff);
            a.g(0x7fffffff & i);
            return;
        }
    }

    public void a(int i, int j, List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        long l;
        int k;
        if (c.c() != 0L)
        {
            throw new IllegalStateException();
        }
        d.(list);
        l = c.c();
        k = (int)Math.min(-4 + e, l);
        byte byte0;
        if (l == (long)k)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        a(i, k + 4, (byte)5, byte0);
        a.g(0x7fffffff & j);
        a.a_(c, k);
        if (l <= (long)k)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        b(i, l - (long)k);
        this;
        JVM INSTR monitorexit ;
    }

    public void a(int i, long l)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (l != 0L && l <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(l);
        throw Http20Draft16.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", aobj);
        a(i, 4, (byte)8, (byte)0);
        a.g((int)l);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(int i, ErrorCode errorcode)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (errorcode.t == -1)
        {
            throw new IllegalArgumentException();
        }
        a(i, 4, (byte)3, (byte)0);
        a.g(errorcode.s);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(int i, ErrorCode errorcode, byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (errorcode.s == -1)
        {
            throw Http20Draft16.b("errorCode.httpCode == -1", new Object[0]);
        }
        a(0, 8 + abyte0.length, (byte)7, (byte)0);
        a.g(i);
        a.g(errorcode.s);
        if (abyte0.length > 0)
        {
            a.c(abyte0);
        }
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(Settings settings)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        e = settings.d(e);
        a(0, 0, (byte)4, (byte)1);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(boolean flag, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        byte byte0;
        byte0 = 0;
        if (flag)
        {
            byte0 = 1;
        }
        a(0, 8, (byte)6, byte0);
        a.g(i);
        a.g(j);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    void a(boolean flag, int i, List list)
    {
        if (f)
        {
            throw new IOException("closed");
        }
        if (c.c() != 0L)
        {
            throw new IllegalStateException();
        }
        d.(list);
        long l = c.c();
        int j = (int)Math.min(e, l);
        byte byte0;
        if (l == (long)j)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        if (flag)
        {
            byte0 |= 1;
        }
        a(i, j, (byte)1, byte0);
        a.a_(c, j);
        if (l > (long)j)
        {
            b(i, l - (long)j);
        }
    }

    public void a(boolean flag, int i, Buffer buffer, int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        byte byte0;
        byte0 = 0;
        if (flag)
        {
            byte0 = (byte)1;
        }
        a(i, byte0, buffer, j);
        this;
        JVM INSTR monitorexit ;
    }

    public void a(boolean flag, boolean flag1, int i, int j, List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new UnsupportedOperationException();
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (f)
        {
            throw new IOException("closed");
        }
        a(flag, i, list);
        this;
        JVM INSTR monitorexit ;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void b(Settings settings)
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        a(0, 6 * settings.b(), (byte)4, (byte)0);
_L6:
        if (i >= 10) goto _L2; else goto _L1
_L1:
        if (settings.a(i)) goto _L4; else goto _L3
_L5:
        int j;
        a.h(j);
        a.g(settings.b(i));
          goto _L3
_L2:
        a.a();
        this;
        JVM INSTR monitorexit ;
        return;
_L8:
        j = i;
          goto _L5
_L3:
        i++;
          goto _L6
_L4:
        if (i != 4)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = 3;
          goto _L5
        if (i != 7) goto _L8; else goto _L7
_L7:
        j = 4;
          goto _L5
    }

    public int c()
    {
        return e;
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        f = true;
        a.close();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    gger(BufferedSink bufferedsink, boolean flag)
    {
        a = bufferedsink;
        b = flag;
        d = new init>(c);
        e = 16384;
    }
}
