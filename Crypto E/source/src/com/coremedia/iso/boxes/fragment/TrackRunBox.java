// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            SampleFlags

public class TrackRunBox extends AbstractFullBox
{
    public static class Entry
    {

        private long a;
        private long b;
        private SampleFlags c;
        private long d;

        static long a(Entry entry)
        {
            return entry.a;
        }

        static void a(Entry entry, long l1)
        {
            entry.a = l1;
        }

        static void a(Entry entry, SampleFlags sampleflags)
        {
            entry.c = sampleflags;
        }

        static long b(Entry entry)
        {
            return entry.b;
        }

        static void b(Entry entry, long l1)
        {
            entry.b = l1;
        }

        static SampleFlags c(Entry entry)
        {
            return entry.c;
        }

        static void c(Entry entry, long l1)
        {
            entry.d = l1;
        }

        static long d(Entry entry)
        {
            return entry.d;
        }

        public long a()
        {
            return b;
        }

        public String toString()
        {
            return (new StringBuilder("Entry{duration=")).append(a).append(", size=").append(b).append(", dlags=").append(c).append(", compTimeOffset=").append(d).append('}').toString();
        }

        public Entry()
        {
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart A;
    private static final org.aspectj.lang.JoinPoint.StaticPart B;
    private static final org.aspectj.lang.JoinPoint.StaticPart C;
    private static final org.aspectj.lang.JoinPoint.StaticPart D;
    private static final org.aspectj.lang.JoinPoint.StaticPart E;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
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
    private int a;
    private SampleFlags b;
    private List c;

    public TrackRunBox()
    {
        super("trun");
        c = new ArrayList();
    }

    private static void m()
    {
        Factory factory = new Factory("TrackRunBox.java", com/coremedia/iso/boxes/fragment/TrackRunBox);
        d = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.util.List"), 57);
        e = factory.a("method-execution", factory.a("1", "setDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "int", "dataOffset", "", "void"), 120);
        v = factory.a("method-execution", factory.a("1", "setDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 271);
        w = factory.a("method-execution", factory.a("1", "setSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 279);
        x = factory.a("method-execution", factory.a("1", "setSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 287);
        y = factory.a("method-execution", factory.a("1", "setSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 296);
        z = factory.a("method-execution", factory.a("1", "setSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "boolean", "v", "", "void"), 304);
        A = factory.a("method-execution", factory.a("1", "getDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "int"), 313);
        B = factory.a("method-execution", factory.a("1", "getFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 317);
        C = factory.a("method-execution", factory.a("1", "setFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "firstSampleFlags", "", "void"), 321);
        D = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.lang.String"), 331);
        E = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "java.util.List", "entries", "", "void"), 346);
        n = factory.a("method-execution", factory.a("1", "getSampleCompositionTimeOffsets", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "[J"), 129);
        o = factory.a("method-execution", factory.a("1", "getSampleCount", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "long"), 242);
        p = factory.a("method-execution", factory.a("1", "isDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 246);
        q = factory.a("method-execution", factory.a("1", "isFirstSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 250);
        r = factory.a("method-execution", factory.a("1", "isSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 255);
        s = factory.a("method-execution", factory.a("1", "isSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 259);
        t = factory.a("method-execution", factory.a("1", "isSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 263);
        u = factory.a("method-execution", factory.a("1", "isSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "boolean"), 267);
    }

    public List a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        long l1 = IsoTypeReader.b(bytebuffer);
        int i1;
        if ((1 & r()) == 1)
        {
            a = CastUtils.a(IsoTypeReader.b(bytebuffer));
        } else
        {
            a = -1;
        }
        if ((4 & r()) == 4)
        {
            b = new SampleFlags(bytebuffer);
        }
        i1 = 0;
        do
        {
            if ((long)i1 >= l1)
            {
                return;
            }
            Entry entry = new Entry();
            if ((0x100 & r()) == 256)
            {
                Entry.a(entry, IsoTypeReader.b(bytebuffer));
            }
            if ((0x200 & r()) == 512)
            {
                Entry.b(entry, IsoTypeReader.b(bytebuffer));
            }
            if ((0x400 & r()) == 1024)
            {
                Entry.a(entry, new SampleFlags(bytebuffer));
            }
            if ((0x800 & r()) == 2048)
            {
                if (q() == 0)
                {
                    Entry.c(entry, IsoTypeReader.b(bytebuffer));
                } else
                {
                    Entry.c(entry, bytebuffer.getInt());
                }
            }
            c.add(entry);
            i1++;
        } while (true);
    }

    public long b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (long)c.size();
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, c.size());
        int i1 = r();
        if ((i1 & 1) == 1)
        {
            IsoTypeWriter.b(bytebuffer, a);
        }
        if ((i1 & 4) == 4)
        {
            b.a(bytebuffer);
        }
        Iterator iterator = c.iterator();
        do
        {
            Entry entry;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                entry = (Entry)iterator.next();
                if ((i1 & 0x100) == 256)
                {
                    IsoTypeWriter.b(bytebuffer, Entry.a(entry));
                }
                if ((i1 & 0x200) == 512)
                {
                    IsoTypeWriter.b(bytebuffer, Entry.b(entry));
                }
                if ((i1 & 0x400) == 1024)
                {
                    Entry.c(entry).a(bytebuffer);
                }
            } while ((i1 & 0x800) != 2048);
            if (q() == 0)
            {
                IsoTypeWriter.b(bytebuffer, Entry.d(entry));
            } else
            {
                bytebuffer.putInt((int)Entry.d(entry));
            }
        } while (true);
    }

    public boolean c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (1 & r()) == 1;
    }

    protected long d()
    {
        long l1 = 8L;
        int i1 = r();
        if ((i1 & 1) == 1)
        {
            l1 += 4L;
        }
        long l2;
        long l3;
        if ((i1 & 4) == 4)
        {
            l2 = l1 + 4L;
        } else
        {
            l2 = l1;
        }
        l3 = 0L;
        if ((i1 & 0x100) == 256)
        {
            l3 += 4L;
        }
        if ((i1 & 0x200) == 512)
        {
            l3 += 4L;
        }
        if ((i1 & 0x400) == 1024)
        {
            l3 += 4L;
        }
        if ((i1 & 0x800) == 2048)
        {
            l3 += 4L;
        }
        return l2 + l3 * (long)c.size();
    }

    public boolean h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (0x200 & r()) == 512;
    }

    public boolean i()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (0x100 & r()) == 256;
    }

    public boolean j()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(t, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (0x400 & r()) == 1024;
    }

    public boolean k()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(u, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (0x800 & r()) == 2048;
    }

    public int l()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(A, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(D, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackRunBox");
        stringbuilder.append("{sampleCount=").append(c.size());
        stringbuilder.append(", dataOffset=").append(a);
        stringbuilder.append(", dataOffsetPresent=").append(c());
        stringbuilder.append(", sampleSizePresent=").append(h());
        stringbuilder.append(", sampleDurationPresent=").append(i());
        stringbuilder.append(", sampleFlagsPresentPresent=").append(j());
        stringbuilder.append(", sampleCompositionTimeOffsetPresent=").append(k());
        stringbuilder.append(", firstSampleFlags=").append(b);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        m();
    }
}
