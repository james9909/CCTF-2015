// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            AbstractSampleEntry

public final class AudioSampleEntry extends AbstractSampleEntry
{

    static final boolean b;
    private int l;
    private int m;
    private long n;
    private int o;
    private int p;
    private int q;
    private long r;
    private long s;
    private long t;
    private long u;
    private int v;
    private long w;
    private byte x[];

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        int i = 36;
        int j = 16;
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(28);
        datasource.a(bytebuffer1);
        bytebuffer1.position(6);
        a = IsoTypeReader.d(bytebuffer1);
        o = IsoTypeReader.d(bytebuffer1);
        v = IsoTypeReader.d(bytebuffer1);
        w = IsoTypeReader.b(bytebuffer1);
        l = IsoTypeReader.d(bytebuffer1);
        m = IsoTypeReader.d(bytebuffer1);
        p = IsoTypeReader.d(bytebuffer1);
        q = IsoTypeReader.d(bytebuffer1);
        n = IsoTypeReader.b(bytebuffer1);
        if (!d.equals("mlpa"))
        {
            n = n >>> j;
        }
        if (o == 1)
        {
            ByteBuffer bytebuffer4 = ByteBuffer.allocate(j);
            datasource.a(bytebuffer4);
            bytebuffer4.rewind();
            r = IsoTypeReader.b(bytebuffer4);
            s = IsoTypeReader.b(bytebuffer4);
            t = IsoTypeReader.b(bytebuffer4);
            u = IsoTypeReader.b(bytebuffer4);
        }
        if (o == 2)
        {
            ByteBuffer bytebuffer3 = ByteBuffer.allocate(i);
            datasource.a(bytebuffer3);
            bytebuffer3.rewind();
            r = IsoTypeReader.b(bytebuffer3);
            s = IsoTypeReader.b(bytebuffer3);
            t = IsoTypeReader.b(bytebuffer3);
            u = IsoTypeReader.b(bytebuffer3);
            x = new byte[20];
            bytebuffer3.get(x);
        }
        if ("owma".equals(d))
        {
            System.err.println("owma");
            long l4 = l1 - 28L;
            long l5;
            int k;
            int i1;
            long l6;
            ByteBuffer bytebuffer2;
            if (o != 1)
            {
                j = 0;
            }
            l5 = l4 - (long)j;
            k = o;
            i1 = 0;
            if (k == 2)
            {
                i1 = i;
            }
            l6 = l5 - (long)i1;
            bytebuffer2 = ByteBuffer.allocate(CastUtils.a(l6));
            datasource.a(bytebuffer2);
            a(new Box(l6, bytebuffer2) {

                final AudioSampleEntry a;
                private final long b;
                private final ByteBuffer c;

                public void a(Container container)
                {
                    if (!AudioSampleEntry.b && container != a)
                    {
                        throw new AssertionError("you cannot diswown this special box");
                    } else
                    {
                        return;
                    }
                }

                public void a(DataSource datasource1, ByteBuffer bytebuffer5, long l7, BoxParser boxparser1)
                {
                    throw new RuntimeException("NotImplemented");
                }

                public void a(WritableByteChannel writablebytechannel)
                {
                    c.rewind();
                    writablebytechannel.write(c);
                }

                public Container e()
                {
                    return a;
                }

                public long f()
                {
                    return b;
                }

                public String g()
                {
                    return "----";
                }

            
            {
                a = AudioSampleEntry.this;
                b = l1;
                c = bytebuffer;
                super();
            }
            });
            return;
        }
        long l2 = l1 - 28L;
        long l3;
        if (o != 1)
        {
            j = 0;
        }
        l3 = l2 - (long)j;
        if (o != 2)
        {
            i = 0;
        }
        a(datasource, l3 - (long)i, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        byte byte0;
        int i;
        int j;
        byte byte1;
        ByteBuffer bytebuffer;
        if (o == 1)
        {
            byte0 = 16;
        } else
        {
            byte0 = 0;
        }
        i = byte0 + 28;
        j = o;
        byte1 = 0;
        if (j == 2)
        {
            byte1 = 36;
        }
        bytebuffer = ByteBuffer.allocate(i + byte1);
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, o);
        IsoTypeWriter.b(bytebuffer, v);
        IsoTypeWriter.b(bytebuffer, w);
        IsoTypeWriter.b(bytebuffer, l);
        IsoTypeWriter.b(bytebuffer, m);
        IsoTypeWriter.b(bytebuffer, p);
        IsoTypeWriter.b(bytebuffer, q);
        if (d.equals("mlpa"))
        {
            IsoTypeWriter.b(bytebuffer, b());
        } else
        {
            IsoTypeWriter.b(bytebuffer, b() << 16);
        }
        if (o == 1)
        {
            IsoTypeWriter.b(bytebuffer, r);
            IsoTypeWriter.b(bytebuffer, s);
            IsoTypeWriter.b(bytebuffer, t);
            IsoTypeWriter.b(bytebuffer, u);
        }
        if (o == 2)
        {
            IsoTypeWriter.b(bytebuffer, r);
            IsoTypeWriter.b(bytebuffer, s);
            IsoTypeWriter.b(bytebuffer, t);
            IsoTypeWriter.b(bytebuffer, u);
            bytebuffer.put(x);
        }
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        b(writablebytechannel);
    }

    public long b()
    {
        return n;
    }

    public long f()
    {
        int i = 16;
        int j;
        int k;
        int i1;
        byte byte0;
        long l1;
        if (o == 1)
        {
            j = i;
        } else
        {
            j = 0;
        }
        k = j + 28;
        i1 = o;
        byte0 = 0;
        if (i1 == 2)
        {
            byte0 = 36;
        }
        l1 = (long)(k + byte0) + m();
        if (!e && 8L + l1 < 0x100000000L)
        {
            i = 8;
        }
        return l1 + (long)i;
    }

    public String toString()
    {
        return (new StringBuilder("AudioSampleEntry{bytesPerSample=")).append(u).append(", bytesPerFrame=").append(t).append(", bytesPerPacket=").append(s).append(", samplesPerPacket=").append(r).append(", packetSize=").append(q).append(", compressionId=").append(p).append(", soundVersion=").append(o).append(", sampleRate=").append(n).append(", sampleSize=").append(m).append(", channelCount=").append(l).append(", boxes=").append(a()).append('}').toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/sampleentry/AudioSampleEntry.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
