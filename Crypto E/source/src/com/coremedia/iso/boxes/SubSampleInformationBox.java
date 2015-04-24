// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

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

public class SubSampleInformationBox extends AbstractFullBox
{
    public static class SubSampleEntry
    {

        private long a;
        private List b;

        public long a()
        {
            return a;
        }

        public void a(long l)
        {
            a = l;
        }

        public int b()
        {
            return b.size();
        }

        public List c()
        {
            return b;
        }

        public String toString()
        {
            return (new StringBuilder("SampleEntry{sampleDelta=")).append(a).append(", subsampleCount=").append(b.size()).append(", subsampleEntries=").append(b).append('}').toString();
        }

        public SubSampleEntry()
        {
            b = new ArrayList();
        }
    }

    public static class SubSampleEntry.SubsampleEntry
    {

        private long a;
        private int b;
        private int c;
        private long d;

        public long a()
        {
            return a;
        }

        public void a(int i)
        {
            b = i;
        }

        public void a(long l)
        {
            a = l;
        }

        public int b()
        {
            return b;
        }

        public void b(int i)
        {
            c = i;
        }

        public void b(long l)
        {
            d = l;
        }

        public int c()
        {
            return c;
        }

        public long d()
        {
            return d;
        }

        public String toString()
        {
            return (new StringBuilder("SubsampleEntry{subsampleSize=")).append(a).append(", subsamplePriority=").append(b).append(", discardable=").append(c).append(", reserved=").append(d).append('}').toString();
        }

        public SubSampleEntry.SubsampleEntry()
        {
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private List a;

    public SubSampleInformationBox()
    {
        super("subs");
        a = new ArrayList();
    }

    private static void a()
    {
        Factory factory = new Factory("SubSampleInformationBox.java", com/coremedia/iso/boxes/SubSampleInformationBox);
        b = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.util.List"), 50);
        c = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "java.util.List", "entries", "", "void"), 54);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.lang.String"), 124);
    }

    public void a(ByteBuffer bytebuffer)
    {
        long l;
        int i;
        c(bytebuffer);
        l = IsoTypeReader.b(bytebuffer);
        i = 0;
_L2:
        if ((long)i >= l)
        {
            return;
        }
        SubSampleEntry subsampleentry = new SubSampleEntry();
        subsampleentry.a(IsoTypeReader.b(bytebuffer));
        int j = IsoTypeReader.d(bytebuffer);
        int k = 0;
        do
        {
label0:
            {
                if (k < j)
                {
                    break label0;
                }
                a.add(subsampleentry);
                i++;
            }
            if (true)
            {
                continue;
            }
            SubSampleEntry.SubsampleEntry subsampleentry1 = new SubSampleEntry.SubsampleEntry();
            long l1;
            if (q() == 1)
            {
                l1 = IsoTypeReader.b(bytebuffer);
            } else
            {
                l1 = IsoTypeReader.d(bytebuffer);
            }
            subsampleentry1.a(l1);
            subsampleentry1.a(IsoTypeReader.f(bytebuffer));
            subsampleentry1.b(IsoTypeReader.f(bytebuffer));
            subsampleentry1.b(IsoTypeReader.b(bytebuffer));
            subsampleentry.c().add(subsampleentry1);
            k++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a.size());
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            SubSampleEntry subsampleentry = (SubSampleEntry)iterator.next();
            IsoTypeWriter.b(bytebuffer, subsampleentry.a());
            IsoTypeWriter.b(bytebuffer, subsampleentry.b());
            Iterator iterator1 = subsampleentry.c().iterator();
            while (iterator1.hasNext()) 
            {
                SubSampleEntry.SubsampleEntry subsampleentry1 = (SubSampleEntry.SubsampleEntry)iterator1.next();
                if (q() == 1)
                {
                    IsoTypeWriter.b(bytebuffer, subsampleentry1.a());
                } else
                {
                    IsoTypeWriter.b(bytebuffer, CastUtils.a(subsampleentry1.a()));
                }
                IsoTypeWriter.d(bytebuffer, subsampleentry1.b());
                IsoTypeWriter.d(bytebuffer, subsampleentry1.c());
                IsoTypeWriter.b(bytebuffer, subsampleentry1.d());
            }
        } while (true);
    }

    protected long d()
    {
        Iterator iterator = a.iterator();
        long l = 8L;
        do
        {
            if (!iterator.hasNext())
            {
                return l;
            }
            SubSampleEntry subsampleentry = (SubSampleEntry)iterator.next();
            l = 2L + (l + 4L);
            int i = 0;
            while (i < subsampleentry.c().size()) 
            {
                long l1;
                if (q() == 1)
                {
                    l1 = l + 4L;
                } else
                {
                    l1 = l + 2L;
                }
                l = 4L + (l1 + 2L);
                i++;
            }
        } while (true);
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SubSampleInformationBox{entryCount=")).append(a.size()).append(", entries=").append(a).append('}').toString();
    }

    static 
    {
        a();
    }
}
