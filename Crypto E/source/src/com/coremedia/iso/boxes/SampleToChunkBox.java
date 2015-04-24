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
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class SampleToChunkBox extends AbstractFullBox
{
    public static class Entry
    {

        long a;
        long b;
        long c;

        public long a()
        {
            return a;
        }

        public long b()
        {
            return b;
        }

        public long c()
        {
            return c;
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
                if (c != entry.c)
                {
                    return false;
                }
                if (b != entry.b)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32);
        }

        public String toString()
        {
            return (new StringBuilder("Entry{firstChunk=")).append(a).append(", samplesPerChunk=").append(b).append(", sampleDescriptionIndex=").append(c).append('}').toString();
        }

        public Entry(long l, long l1, long l2)
        {
            a = l;
            b = l1;
            c = l2;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    List a;

    public SampleToChunkBox()
    {
        super("stsc");
        a = Collections.emptyList();
    }

    private static void a()
    {
        Factory factory = new Factory("SampleToChunkBox.java", com/coremedia/iso/boxes/SampleToChunkBox);
        b = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.util.List"), 47);
        c = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "java.util.List", "entries", "", "void"), 51);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.lang.String"), 84);
        e = factory.a("method-execution", factory.a("1", "blowup", "com.coremedia.iso.boxes.SampleToChunkBox", "int", "chunkCount", "", "[J"), 95);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        int i = CastUtils.a(IsoTypeReader.b(bytebuffer));
        a = new ArrayList(i);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            a.add(new Entry(IsoTypeReader.b(bytebuffer), IsoTypeReader.b(bytebuffer), IsoTypeReader.b(bytebuffer)));
            j++;
        } while (true);
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
            Entry entry = (Entry)iterator.next();
            IsoTypeWriter.b(bytebuffer, entry.a());
            IsoTypeWriter.b(bytebuffer, entry.b());
            IsoTypeWriter.b(bytebuffer, entry.c());
        } while (true);
    }

    protected long d()
    {
        return (long)(8 + 12 * a.size());
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("SampleToChunkBox[entryCount=")).append(a.size()).append("]").toString();
    }

    static 
    {
        a();
    }
}
