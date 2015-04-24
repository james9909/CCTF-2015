// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeReaderVariable;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.IsoTypeWriterVariable;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class TrackFragmentRandomAccessBox extends AbstractFullBox
{
    public static class Entry
    {

        private long a;
        private long b;
        private long c;
        private long d;
        private long e;

        static long a(Entry entry)
        {
            return entry.a;
        }

        static void a(Entry entry, long l)
        {
            entry.a = l;
        }

        static long b(Entry entry)
        {
            return entry.b;
        }

        static void b(Entry entry, long l)
        {
            entry.b = l;
        }

        static long c(Entry entry)
        {
            return entry.c;
        }

        static void c(Entry entry, long l)
        {
            entry.c = l;
        }

        static long d(Entry entry)
        {
            return entry.d;
        }

        static void d(Entry entry, long l)
        {
            entry.d = l;
        }

        static long e(Entry entry)
        {
            return entry.e;
        }

        static void e(Entry entry, long l)
        {
            entry.e = l;
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
                if (b != entry.b)
                {
                    return false;
                }
                if (e != entry.e)
                {
                    return false;
                }
                if (a != entry.a)
                {
                    return false;
                }
                if (c != entry.c)
                {
                    return false;
                }
                if (d != entry.d)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * (31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32)) + (int)(d ^ d >>> 32)) + (int)(e ^ e >>> 32);
        }

        public String toString()
        {
            return (new StringBuilder("Entry{time=")).append(a).append(", moofOffset=").append(b).append(", trafNumber=").append(c).append(", trunNumber=").append(d).append(", sampleNumber=").append(e).append('}').toString();
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
    private long a;
    private int b;
    private int c;
    private int d;
    private int e;
    private List n;

    public TrackFragmentRandomAccessBox()
    {
        super("tfra");
        c = 2;
        d = 2;
        e = 2;
        n = Collections.emptyList();
    }

    private static void a()
    {
        Factory factory = new Factory("TrackFragmentRandomAccessBox.java", com/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox);
        o = factory.a("method-execution", factory.a("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "long", "trackId", "", "void"), 145);
        p = factory.a("method-execution", factory.a("1", "setLengthSizeOfTrafNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfTrafNum", "", "void"), 149);
        y = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "java.util.List"), 185);
        z = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "java.util.List", "entries", "", "void"), 189);
        A = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "java.lang.String"), 290);
        q = factory.a("method-execution", factory.a("1", "setLengthSizeOfTrunNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfTrunNum", "", "void"), 153);
        r = factory.a("method-execution", factory.a("1", "setLengthSizeOfSampleNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfSampleNum", "", "void"), 157);
        s = factory.a("method-execution", factory.a("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "long"), 161);
        t = factory.a("method-execution", factory.a("1", "getReserved", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 165);
        u = factory.a("method-execution", factory.a("1", "getLengthSizeOfTrafNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 169);
        v = factory.a("method-execution", factory.a("1", "getLengthSizeOfTrunNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 173);
        w = factory.a("method-execution", factory.a("1", "getLengthSizeOfSampleNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 177);
        x = factory.a("method-execution", factory.a("1", "getNumberOfEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "long"), 181);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.b(bytebuffer);
        long l = IsoTypeReader.b(bytebuffer);
        b = (int)(l >> 6);
        c = 1 + ((int)(63L & l) >> 4);
        d = 1 + ((int)(12L & l) >> 2);
        e = 1 + (int)(l & 3L);
        long l1 = IsoTypeReader.b(bytebuffer);
        n = new ArrayList();
        int i = 0;
        do
        {
            if ((long)i >= l1)
            {
                return;
            }
            Entry entry = new Entry();
            if (q() == 1)
            {
                Entry.a(entry, IsoTypeReader.h(bytebuffer));
                Entry.b(entry, IsoTypeReader.h(bytebuffer));
            } else
            {
                Entry.a(entry, IsoTypeReader.b(bytebuffer));
                Entry.b(entry, IsoTypeReader.b(bytebuffer));
            }
            Entry.c(entry, IsoTypeReaderVariable.a(bytebuffer, c));
            Entry.d(entry, IsoTypeReaderVariable.a(bytebuffer, d));
            Entry.e(entry, IsoTypeReaderVariable.a(bytebuffer, e));
            n.add(entry);
            i++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, (long)(b << 6) | (long)((3 & -1 + c) << 4) | (long)((3 & -1 + d) << 2) | (long)(3 & -1 + e));
        IsoTypeWriter.b(bytebuffer, n.size());
        Iterator iterator = n.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Entry entry = (Entry)iterator.next();
            if (q() == 1)
            {
                IsoTypeWriter.a(bytebuffer, Entry.a(entry));
                IsoTypeWriter.a(bytebuffer, Entry.b(entry));
            } else
            {
                IsoTypeWriter.b(bytebuffer, Entry.a(entry));
                IsoTypeWriter.b(bytebuffer, Entry.b(entry));
            }
            IsoTypeWriterVariable.a(Entry.c(entry), bytebuffer, c);
            IsoTypeWriterVariable.a(Entry.d(entry), bytebuffer, d);
            IsoTypeWriterVariable.a(Entry.e(entry), bytebuffer, e);
        } while (true);
    }

    protected long d()
    {
        long l = 4L + 12L;
        long l1;
        if (q() == 1)
        {
            l1 = l + (long)(16 * n.size());
        } else
        {
            l1 = l + (long)(8 * n.size());
        }
        return l1 + (long)(c * n.size()) + (long)(d * n.size()) + (long)(e * n.size());
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(A, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("TrackFragmentRandomAccessBox{trackId=")).append(a).append(", entries=").append(n).append('}').toString();
    }

    static 
    {
        a();
    }
}
