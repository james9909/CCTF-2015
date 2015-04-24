// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.List;
import java.util.zip.Deflater;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            FrameWriter, Spdy3, Header, ErrorCode, 
//            Settings

static final class b
    implements FrameWriter
{

    private final BufferedSink a;
    private final Buffer b = new Buffer();
    private final BufferedSink c;
    private final boolean d;
    private boolean e;

    private void a(List list)
    {
        if (b.c() != 0L)
        {
            throw new IllegalStateException();
        }
        c.g(list.size());
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            ByteString bytestring = ((Header)list.get(j)).h;
            c.g(bytestring.e());
            c.b(bytestring);
            ByteString bytestring1 = ((Header)list.get(j)).i;
            c.g(bytestring1.e());
            c.b(bytestring1);
        }

        c.a();
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
    }

    public void a(int i, int j, List list)
    {
    }

    void a(int i, int j, Buffer buffer, int k)
    {
        if (e)
        {
            throw new IOException("closed");
        }
        if ((long)k > 0xffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("FRAME_TOO_LARGE max size is 16Mib: ").append(k).toString());
        }
        a.g(0x7fffffff & i);
        a.g((j & 0xff) << 24 | 0xffffff & k);
        if (k > 0)
        {
            a.a_(buffer, k);
        }
    }

    public void a(int i, long l)
    {
        this;
        JVM INSTR monitorenter ;
        if (e)
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
            break MISSING_BLOCK_LABEL_67;
        }
        throw new IllegalArgumentException((new StringBuilder()).append("windowSizeIncrement must be between 1 and 0x7fffffff: ").append(l).toString());
        a.g(0x80030009);
        a.g(8);
        a.g(i);
        a.g((int)l);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(int i, ErrorCode errorcode)
    {
        this;
        JVM INSTR monitorenter ;
        if (e)
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
        a.g(0x80030003);
        a.g(8);
        a.g(0x7fffffff & i);
        a.g(errorcode.t);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(int i, ErrorCode errorcode, byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (e)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (errorcode.u == -1)
        {
            throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
        }
        a.g(0x80030007);
        a.g(8);
        a.g(i);
        a.g(errorcode.u);
        a.a();
        this;
        JVM INSTR monitorexit ;
    }

    public void a(Settings settings)
    {
    }

    public void a(boolean flag, int i, int j)
    {
        int k = 1;
        this;
        JVM INSTR monitorenter ;
        if (e)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_29;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int l = d;
        int i1;
        if ((i & 1) == k)
        {
            i1 = k;
        } else
        {
            i1 = 0;
        }
        if (l == i1)
        {
            k = 0;
        }
          goto _L1
_L3:
        if (flag == k)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        throw new IllegalArgumentException("payload != reply");
        a.g(0x80030006);
        a.g(4);
        a.g(i);
        a.a();
        this;
        JVM INSTR monitorexit ;
        return;
_L1:
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void a(boolean flag, int i, Buffer buffer, int j)
    {
        this;
        JVM INSTR monitorenter ;
        int k;
        if (flag)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        a(i, k, buffer, j);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(boolean flag, boolean flag1, int i, int j, List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (e)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int k;
        a(list);
        k = (int)(10L + b.c());
        break MISSING_BLOCK_LABEL_46;
_L2:
        l = byte0 | flag2;
        a.g(0x80030001);
        a.g((l & 0xff) << 24 | k & 0xffffff);
        a.g(i & 0x7fffffff);
        a.g(j & 0x7fffffff);
        a.h(0);
        a.a(b);
        a.a();
        this;
        JVM INSTR monitorexit ;
        return;
        boolean flag2;
        byte byte0;
        int l;
        if (flag)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        byte0 = 0;
        if (flag1)
        {
            byte0 = 2;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        if (e)
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
        this;
        JVM INSTR monitorenter ;
        if (e)
        {
            throw new IOException("closed");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i = settings.b();
        int j = 4 + i * 8;
        a.g(0x80030004);
        a.g(0 | j & 0xffffff);
        a.g(i);
        int k = 0;
_L2:
        if (k > 10)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        if (!settings.a(k))
        {
            break MISSING_BLOCK_LABEL_163;
        }
        int l = settings.c(k);
        a.g((l & 0xff) << 24 | k & 0xffffff);
        a.g(settings.b(k));
        break MISSING_BLOCK_LABEL_163;
        a.a();
        this;
        JVM INSTR monitorexit ;
        return;
        k++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public int c()
    {
        return 16383;
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        e = true;
        Util.a(a, c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    (BufferedSink bufferedsink, boolean flag)
    {
        a = bufferedsink;
        d = flag;
        Deflater deflater = new Deflater();
        deflater.setDictionary(Spdy3.a);
        c = Okio.a(new DeflaterSink(b, deflater));
    }
}
