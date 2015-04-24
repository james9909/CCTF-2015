// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26244;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class SegmentIndexBox extends AbstractFullBox
{
    public static class Entry
    {

        byte a;
        int b;
        long c;
        byte d;
        byte e;
        int f;

        public byte a()
        {
            return a;
        }

        public void a(byte byte0)
        {
            a = byte0;
        }

        public void a(int i)
        {
            b = i;
        }

        public void a(long l)
        {
            c = l;
        }

        public int b()
        {
            return b;
        }

        public void b(byte byte0)
        {
            d = byte0;
        }

        public void b(int i)
        {
            f = i;
        }

        public long c()
        {
            return c;
        }

        public void c(byte byte0)
        {
            e = byte0;
        }

        public byte d()
        {
            return d;
        }

        public byte e()
        {
            return e;
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                Entry entry = (Entry)obj;
                if (a != entry.a)
                {
                    return false;
                }
                if (b != entry.b)
                {
                    return false;
                }
                if (f != entry.f)
                {
                    return false;
                }
                if (e != entry.e)
                {
                    return false;
                }
                if (d != entry.d)
                {
                    return false;
                }
                if (c != entry.c)
                {
                    return false;
                }
            }
            return true;
        }

        public int f()
        {
            return f;
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * (31 * (31 * a + b) + (int)(c ^ c >>> 32)) + d) + e) + f;
        }

        public String toString()
        {
            return (new StringBuilder("Entry{referenceType=")).append(a).append(", referencedSize=").append(b).append(", subsegmentDuration=").append(c).append(", startsWithSap=").append(d).append(", sapType=").append(e).append(", sapDeltaTime=").append(f).append('}').toString();
        }

        public Entry()
        {
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    private static final org.aspectj.lang.JoinPoint.StaticPart z;
    List a;
    long b;
    long c;
    long d;
    long e;
    int n;

    public SegmentIndexBox()
    {
        super("sidx");
        a = new ArrayList();
    }

    private static void a()
    {
        Factory factory = new Factory("SegmentIndexBox.java", com/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox);
        o = factory.a("method-execution", factory.a("1", "getEntries", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "java.util.List"), 128);
        p = factory.a("method-execution", factory.a("1", "setEntries", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "java.util.List", "entries", "", "void"), 132);
        y = factory.a("method-execution", factory.a("1", "getReserved", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "int"), 168);
        z = factory.a("method-execution", factory.a("1", "setReserved", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "int", "reserved", "", "void"), 172);
        A = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "java.lang.String"), 298);
        q = factory.a("method-execution", factory.a("1", "getReferenceId", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 136);
        r = factory.a("method-execution", factory.a("1", "setReferenceId", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "referenceId", "", "void"), 140);
        s = factory.a("method-execution", factory.a("1", "getTimeScale", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 144);
        t = factory.a("method-execution", factory.a("1", "setTimeScale", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "timeScale", "", "void"), 148);
        u = factory.a("method-execution", factory.a("1", "getEarliestPresentationTime", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 152);
        v = factory.a("method-execution", factory.a("1", "setEarliestPresentationTime", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "earliestPresentationTime", "", "void"), 156);
        w = factory.a("method-execution", factory.a("1", "getFirstOffset", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 160);
        x = factory.a("method-execution", factory.a("1", "setFirstOffset", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "firstOffset", "", "void"), 164);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        c = IsoTypeReader.b(bytebuffer);
        int i;
        int j;
        if (q() == 0)
        {
            d = IsoTypeReader.b(bytebuffer);
            e = IsoTypeReader.b(bytebuffer);
        } else
        {
            d = IsoTypeReader.h(bytebuffer);
            e = IsoTypeReader.h(bytebuffer);
        }
        n = IsoTypeReader.d(bytebuffer);
        i = IsoTypeReader.d(bytebuffer);
        j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            BitReaderBuffer bitreaderbuffer = new BitReaderBuffer(bytebuffer);
            Entry entry = new Entry();
            entry.a((byte)bitreaderbuffer.a(1));
            entry.a(bitreaderbuffer.a(31));
            entry.a(IsoTypeReader.b(bytebuffer));
            BitReaderBuffer bitreaderbuffer1 = new BitReaderBuffer(bytebuffer);
            entry.b((byte)bitreaderbuffer1.a(1));
            entry.c((byte)bitreaderbuffer1.a(3));
            entry.b(bitreaderbuffer1.a(28));
            a.add(entry);
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        Iterator iterator;
        if (q() == 0)
        {
            IsoTypeWriter.b(bytebuffer, d);
            IsoTypeWriter.b(bytebuffer, e);
        } else
        {
            IsoTypeWriter.a(bytebuffer, d);
            IsoTypeWriter.a(bytebuffer, e);
        }
        IsoTypeWriter.b(bytebuffer, n);
        IsoTypeWriter.b(bytebuffer, a.size());
        iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Entry entry = (Entry)iterator.next();
            BitWriterBuffer bitwriterbuffer = new BitWriterBuffer(bytebuffer);
            bitwriterbuffer.a(entry.a(), 1);
            bitwriterbuffer.a(entry.b(), 31);
            IsoTypeWriter.b(bytebuffer, entry.c());
            BitWriterBuffer bitwriterbuffer1 = new BitWriterBuffer(bytebuffer);
            bitwriterbuffer1.a(entry.d(), 1);
            bitwriterbuffer1.a(entry.e(), 3);
            bitwriterbuffer1.a(entry.f(), 28);
        } while (true);
    }

    protected long d()
    {
        long l = 4L + (4L + 4L);
        int i;
        if (q() == 0)
        {
            i = 8;
        } else
        {
            i = 16;
        }
        return 2L + (2L + (l + (long)i)) + (long)(12 * a.size());
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(A, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SegmentIndexBox{entries=")).append(a).append(", referenceId=").append(b).append(", timeScale=").append(c).append(", earliestPresentationTime=").append(d).append(", firstOffset=").append(e).append(", reserved=").append(n).append('}').toString();
    }

    static 
    {
        a();
    }
}
