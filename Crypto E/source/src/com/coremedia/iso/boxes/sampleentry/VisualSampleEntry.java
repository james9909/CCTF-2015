// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            AbstractSampleEntry

public final class VisualSampleEntry extends AbstractSampleEntry
    implements Container
{

    static final boolean b;
    private int l;
    private int m;
    private double n;
    private double o;
    private int p;
    private String q;
    private int r;
    private long s[];

    public VisualSampleEntry()
    {
        super("avc1");
        n = 72D;
        o = 72D;
        p = 1;
        q = "";
        r = 24;
        s = new long[3];
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        long l2 = l1 + datasource.b();
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(78);
        datasource.a(bytebuffer1);
        bytebuffer1.position(6);
        a = IsoTypeReader.d(bytebuffer1);
        long l3 = IsoTypeReader.d(bytebuffer1);
        if (!b && 0L != l3)
        {
            throw new AssertionError("reserved byte not 0");
        }
        long l4 = IsoTypeReader.d(bytebuffer1);
        if (!b && 0L != l4)
        {
            throw new AssertionError("reserved byte not 0");
        }
        s[0] = IsoTypeReader.b(bytebuffer1);
        s[1] = IsoTypeReader.b(bytebuffer1);
        s[2] = IsoTypeReader.b(bytebuffer1);
        l = IsoTypeReader.d(bytebuffer1);
        m = IsoTypeReader.d(bytebuffer1);
        n = IsoTypeReader.i(bytebuffer1);
        o = IsoTypeReader.i(bytebuffer1);
        long l5 = IsoTypeReader.b(bytebuffer1);
        if (!b && 0L != l5)
        {
            throw new AssertionError("reserved byte not 0");
        }
        p = IsoTypeReader.d(bytebuffer1);
        int i1 = IsoTypeReader.f(bytebuffer1);
        if (i1 > 31)
        {
            System.out.println((new StringBuilder("invalid compressor name displayable data: ")).append(i1).toString());
            i1 = 31;
        }
        byte abyte0[] = new byte[i1];
        bytebuffer1.get(abyte0);
        q = Utf8.a(abyte0);
        if (i1 < 31)
        {
            bytebuffer1.get(new byte[31 - i1]);
        }
        r = IsoTypeReader.d(bytebuffer1);
        long l6 = IsoTypeReader.d(bytebuffer1);
        if (!b && 65535L != l6)
        {
            throw new AssertionError();
        } else
        {
            a(new DataSource(l2, datasource) {

                final VisualSampleEntry a;
                private final long b;
                private final DataSource c;

                public int a(ByteBuffer bytebuffer2)
                {
                    if (b == c.b())
                    {
                        return -1;
                    }
                    if ((long)bytebuffer2.remaining() > b - c.b())
                    {
                        ByteBuffer bytebuffer3 = ByteBuffer.allocate(CastUtils.a(b - c.b()));
                        c.a(bytebuffer3);
                        bytebuffer2.put((ByteBuffer)bytebuffer3.rewind());
                        return bytebuffer3.capacity();
                    } else
                    {
                        return c.a(bytebuffer2);
                    }
                }

                public long a()
                {
                    return b;
                }

                public long a(long l7, long l8, WritableByteChannel writablebytechannel)
                {
                    return c.a(l7, l8, writablebytechannel);
                }

                public ByteBuffer a(long l7, long l8)
                {
                    return c.a(l7, l8);
                }

                public void a(long l7)
                {
                    c.a(l7);
                }

                public long b()
                {
                    return c.b();
                }

                public void close()
                {
                    c.close();
                }

            
            {
                a = VisualSampleEntry.this;
                b = l1;
                c = datasource;
                super();
            }
            }, l1 - 78L, boxparser);
            return;
        }
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(78);
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, 0);
        IsoTypeWriter.b(bytebuffer, 0);
        IsoTypeWriter.b(bytebuffer, s[0]);
        IsoTypeWriter.b(bytebuffer, s[1]);
        IsoTypeWriter.b(bytebuffer, s[2]);
        IsoTypeWriter.b(bytebuffer, b());
        IsoTypeWriter.b(bytebuffer, c());
        IsoTypeWriter.a(bytebuffer, d());
        IsoTypeWriter.a(bytebuffer, h());
        IsoTypeWriter.b(bytebuffer, 0L);
        IsoTypeWriter.b(bytebuffer, i());
        IsoTypeWriter.d(bytebuffer, Utf8.b(j()));
        bytebuffer.put(Utf8.a(j()));
        int i1 = Utf8.b(j());
        do
        {
            if (i1 >= 31)
            {
                IsoTypeWriter.b(bytebuffer, k());
                IsoTypeWriter.b(bytebuffer, 65535);
                writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
                b(writablebytechannel);
                return;
            }
            i1++;
            bytebuffer.put((byte)0);
        } while (true);
    }

    public int b()
    {
        return l;
    }

    public int c()
    {
        return m;
    }

    public double d()
    {
        return n;
    }

    public long f()
    {
        long l1 = m();
        long l2 = l1 + 78L;
        int i1;
        if (e || 8L + (l1 + 78L) >= 0x100000000L)
        {
            i1 = 16;
        } else
        {
            i1 = 8;
        }
        return l2 + (long)i1;
    }

    public double h()
    {
        return o;
    }

    public int i()
    {
        return p;
    }

    public String j()
    {
        return q;
    }

    public int k()
    {
        return r;
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/sampleentry/VisualSampleEntry.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
