// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            AbstractSampleEntry

public class TextSampleEntry extends AbstractSampleEntry
{
    public static class BoxRecord
    {

        int a;
        int b;
        int c;
        int d;

        public void a(ByteBuffer bytebuffer)
        {
            a = IsoTypeReader.d(bytebuffer);
            b = IsoTypeReader.d(bytebuffer);
            c = IsoTypeReader.d(bytebuffer);
            d = IsoTypeReader.d(bytebuffer);
        }

        public void b(ByteBuffer bytebuffer)
        {
            IsoTypeWriter.b(bytebuffer, a);
            IsoTypeWriter.b(bytebuffer, b);
            IsoTypeWriter.b(bytebuffer, c);
            IsoTypeWriter.b(bytebuffer, d);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                BoxRecord boxrecord = (BoxRecord)obj;
                if (c != boxrecord.c)
                {
                    return false;
                }
                if (b != boxrecord.b)
                {
                    return false;
                }
                if (d != boxrecord.d)
                {
                    return false;
                }
                if (a != boxrecord.a)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * a + b) + c) + d;
        }

        public BoxRecord()
        {
        }
    }

    public static class StyleRecord
    {

        int a;
        int b;
        int c;
        int d;
        int e;
        int f[] = {
            255, 255, 255, 255
        };

        public void a(ByteBuffer bytebuffer)
        {
            a = IsoTypeReader.d(bytebuffer);
            b = IsoTypeReader.d(bytebuffer);
            c = IsoTypeReader.d(bytebuffer);
            d = IsoTypeReader.f(bytebuffer);
            e = IsoTypeReader.f(bytebuffer);
            f = new int[4];
            f[0] = IsoTypeReader.f(bytebuffer);
            f[1] = IsoTypeReader.f(bytebuffer);
            f[2] = IsoTypeReader.f(bytebuffer);
            f[3] = IsoTypeReader.f(bytebuffer);
        }

        public void b(ByteBuffer bytebuffer)
        {
            IsoTypeWriter.b(bytebuffer, a);
            IsoTypeWriter.b(bytebuffer, b);
            IsoTypeWriter.b(bytebuffer, c);
            IsoTypeWriter.d(bytebuffer, d);
            IsoTypeWriter.d(bytebuffer, e);
            IsoTypeWriter.d(bytebuffer, f[0]);
            IsoTypeWriter.d(bytebuffer, f[1]);
            IsoTypeWriter.d(bytebuffer, f[2]);
            IsoTypeWriter.d(bytebuffer, f[3]);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                StyleRecord stylerecord = (StyleRecord)obj;
                if (b != stylerecord.b)
                {
                    return false;
                }
                if (d != stylerecord.d)
                {
                    return false;
                }
                if (c != stylerecord.c)
                {
                    return false;
                }
                if (e != stylerecord.e)
                {
                    return false;
                }
                if (a != stylerecord.a)
                {
                    return false;
                }
                if (!Arrays.equals(f, stylerecord.f))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            int i = 31 * (31 * (31 * (31 * (31 * a + b) + c) + d) + e);
            int j;
            if (f != null)
            {
                j = Arrays.hashCode(f);
            } else
            {
                j = 0;
            }
            return j + i;
        }

        public StyleRecord()
        {
        }
    }


    private long b;
    private int l;
    private int m;
    private int n[];
    private BoxRecord o;
    private StyleRecord p;

    public TextSampleEntry()
    {
        super("tx3g");
        n = new int[4];
        o = new BoxRecord();
        p = new StyleRecord();
    }

    public TextSampleEntry(String s)
    {
        super(s);
        n = new int[4];
        o = new BoxRecord();
        p = new StyleRecord();
    }

    public void a(BoxRecord boxrecord)
    {
        o = boxrecord;
    }

    public void a(StyleRecord stylerecord)
    {
        p = stylerecord;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(38);
        datasource.a(bytebuffer1);
        bytebuffer1.position(6);
        a = IsoTypeReader.d(bytebuffer1);
        b = IsoTypeReader.b(bytebuffer1);
        l = IsoTypeReader.f(bytebuffer1);
        m = IsoTypeReader.f(bytebuffer1);
        n = new int[4];
        n[0] = IsoTypeReader.f(bytebuffer1);
        n[1] = IsoTypeReader.f(bytebuffer1);
        n[2] = IsoTypeReader.f(bytebuffer1);
        n[3] = IsoTypeReader.f(bytebuffer1);
        o = new BoxRecord();
        o.a(bytebuffer1);
        p = new StyleRecord();
        p.a(bytebuffer1);
        a(datasource, l1 - 38L, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(38);
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.d(bytebuffer, l);
        IsoTypeWriter.d(bytebuffer, m);
        IsoTypeWriter.d(bytebuffer, n[0]);
        IsoTypeWriter.d(bytebuffer, n[1]);
        IsoTypeWriter.d(bytebuffer, n[2]);
        IsoTypeWriter.d(bytebuffer, n[3]);
        o.b(bytebuffer);
        p.b(bytebuffer);
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        b(writablebytechannel);
    }

    public long f()
    {
        long l1 = m();
        long l2 = l1 + 38L;
        int i;
        if (e || l1 + 38L >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return l2 + (long)i;
    }

    public String toString()
    {
        return "TextSampleEntry";
    }
}
