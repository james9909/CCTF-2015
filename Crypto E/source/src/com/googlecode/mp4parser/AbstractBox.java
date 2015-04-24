// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.Logger;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser:
//            DataSource

public abstract class AbstractBox
    implements Box
{

    private static Logger a = Logger.a(com/googlecode/mp4parser/AbstractBox);
    static final boolean m;
    private byte b[];
    private Container c;
    private ByteBuffer d;
    private ByteBuffer e;
    protected String f;
    boolean g;
    boolean h;
    long i;
    long j;
    long k;
    DataSource l;

    public AbstractBox(String s)
    {
        k = -1L;
        e = null;
        f = s;
        h = true;
        g = true;
    }

    protected AbstractBox(String s, byte abyte0[])
    {
        k = -1L;
        e = null;
        f = s;
        b = abyte0;
        h = true;
        g = true;
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = h;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        a.a((new StringBuilder("mem mapping ")).append(g()).toString());
        d = l.a(i, k);
        h = true;
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        throw new RuntimeException(ioexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean b()
    {
        int i1 = 8;
        if ("uuid".equals(g()))
        {
            i1 = 24;
        }
        if (h)
        {
            if (g)
            {
                long l1 = d();
                int j1;
                if (e != null)
                {
                    j1 = e.limit();
                } else
                {
                    j1 = 0;
                }
                return l1 + (long)j1 + (long)i1 < 0x100000000L;
            }
            return (long)(i1 + d.limit()) < 0x100000000L;
        }
        return k + (long)i1 < 0x100000000L;
    }

    private boolean c(ByteBuffer bytebuffer)
    {
        ByteBuffer bytebuffer1;
        long l1 = d();
        int i1;
        if (e != null)
        {
            i1 = e.limit();
        } else
        {
            i1 = 0;
        }
        bytebuffer1 = ByteBuffer.allocate(CastUtils.a(l1 + (long)i1));
        b(bytebuffer1);
        if (e == null) goto _L2; else goto _L1
_L1:
        e.rewind();
_L5:
        if (e.remaining() > 0) goto _L3; else goto _L2
_L2:
        bytebuffer.rewind();
        bytebuffer1.rewind();
        if (bytebuffer.remaining() != bytebuffer1.remaining())
        {
            System.err.print((new StringBuilder(String.valueOf(g()))).append(": remaining differs ").append(bytebuffer.remaining()).append(" vs. ").append(bytebuffer1.remaining()).toString());
            a.b((new StringBuilder(String.valueOf(g()))).append(": remaining differs ").append(bytebuffer.remaining()).append(" vs. ").append(bytebuffer1.remaining()).toString());
            return false;
        }
        break; /* Loop/switch isn't completed */
_L3:
        bytebuffer1.put(e);
        if (true) goto _L5; else goto _L4
_L4:
        int j1 = bytebuffer.position();
        int k1 = -1 + bytebuffer.limit();
        int i2 = -1 + bytebuffer1.limit();
        do
        {
            if (k1 < j1)
            {
                return true;
            }
            byte byte0 = bytebuffer.get(k1);
            byte byte1 = bytebuffer1.get(i2);
            if (byte0 != byte1)
            {
                Logger logger = a;
                Object aobj[] = new Object[4];
                aobj[0] = g();
                aobj[1] = Integer.valueOf(k1);
                aobj[2] = Byte.valueOf(byte0);
                aobj[3] = Byte.valueOf(byte1);
                logger.b(String.format("%s: buffers differ at %d: %2X/%2X", aobj));
                byte abyte0[] = new byte[bytebuffer.remaining()];
                byte abyte1[] = new byte[bytebuffer1.remaining()];
                bytebuffer.get(abyte0);
                bytebuffer1.get(abyte1);
                System.err.println((new StringBuilder("original      : ")).append(Hex.a(abyte0, 4)).toString());
                System.err.println((new StringBuilder("reconstructed : ")).append(Hex.a(abyte1, 4)).toString());
                return false;
            }
            k1--;
            i2--;
        } while (true);
    }

    private void d(ByteBuffer bytebuffer)
    {
        if (b())
        {
            IsoTypeWriter.b(bytebuffer, f());
            bytebuffer.put(IsoFile.a(g()));
        } else
        {
            IsoTypeWriter.b(bytebuffer, 1L);
            bytebuffer.put(IsoFile.a(g()));
            IsoTypeWriter.a(bytebuffer, f());
        }
        if ("uuid".equals(g()))
        {
            bytebuffer.put(o());
        }
    }

    public void a(Container container)
    {
        c = container;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        i = datasource.b();
        j = i - (long)bytebuffer.remaining();
        k = l1;
        l = datasource;
        datasource.a(l1 + datasource.b());
        h = false;
        g = false;
    }

    public abstract void a(ByteBuffer bytebuffer);

    public void a(WritableByteChannel writablebytechannel)
    {
        byte byte0;
        byte byte1;
        byte0 = 8;
        byte1 = 16;
        if (!h)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        if (!g) goto _L2; else goto _L1
_L1:
        ByteBuffer bytebuffer2;
        bytebuffer2 = ByteBuffer.allocate(CastUtils.a(f()));
        d(bytebuffer2);
        b(bytebuffer2);
        if (e == null) goto _L4; else goto _L3
_L3:
        e.rewind();
_L6:
        if (e.remaining() > 0) goto _L5; else goto _L4
_L4:
        writablebytechannel.write((ByteBuffer)bytebuffer2.rewind());
        return;
_L5:
        bytebuffer2.put(e);
        if (true) goto _L6; else goto _L2
_L2:
        ByteBuffer bytebuffer1;
        if (!b())
        {
            byte0 = byte1;
        }
        if (!"uuid".equals(g()))
        {
            byte1 = 0;
        }
        bytebuffer1 = ByteBuffer.allocate(byte0 + byte1);
        d(bytebuffer1);
        writablebytechannel.write((ByteBuffer)bytebuffer1.rewind());
        writablebytechannel.write((ByteBuffer)d.position(0));
        return;
        ByteBuffer bytebuffer;
        if (!b())
        {
            byte0 = byte1;
        }
        if (!"uuid".equals(g()))
        {
            byte1 = 0;
        }
        bytebuffer = ByteBuffer.allocate(byte0 + byte1);
        d(bytebuffer);
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        l.a(i, k, writablebytechannel);
        return;
    }

    public abstract void b(ByteBuffer bytebuffer);

    public abstract long d();

    public Container e()
    {
        return c;
    }

    public long f()
    {
        long l1;
        byte byte0;
        int i1;
        byte byte1;
        long l2;
        ByteBuffer bytebuffer;
        int j1;
        if (h)
        {
            if (g)
            {
                l1 = d();
            } else
            {
                int k1;
                if (d != null)
                {
                    k1 = d.limit();
                } else
                {
                    k1 = 0;
                }
                l1 = k1;
            }
        } else
        {
            l1 = k;
        }
        if (l1 >= 0xfffffff8L)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        i1 = byte0 + 8;
        if ("uuid".equals(g()))
        {
            byte1 = 16;
        } else
        {
            byte1 = 0;
        }
        l2 = l1 + (long)(byte1 + i1);
        bytebuffer = e;
        j1 = 0;
        if (bytebuffer != null)
        {
            j1 = e.limit();
        }
        return l2 + (long)j1;
    }

    public String g()
    {
        return f;
    }

    public final void n()
    {
        this;
        JVM INSTR monitorenter ;
        a();
        a.a((new StringBuilder("parsing details of ")).append(g()).toString());
        if (d != null)
        {
            ByteBuffer bytebuffer = d;
            g = true;
            bytebuffer.rewind();
            a(bytebuffer);
            if (bytebuffer.remaining() > 0)
            {
                e = bytebuffer.slice();
            }
            d = null;
            if (!m && !c(bytebuffer))
            {
                throw new AssertionError();
            }
        }
        break MISSING_BLOCK_LABEL_106;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public byte[] o()
    {
        return b;
    }

    public boolean p()
    {
        return g;
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/AbstractBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        m = flag;
    }
}
