// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class SampleToGroupBox extends AbstractFullBox
{
    public static class Entry
    {

        private long a;
        private int b;

        public long a()
        {
            return a;
        }

        public int b()
        {
            return b;
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
                if (a != entry.a)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (int)(a ^ a >>> 32) + b;
        }

        public String toString()
        {
            return (new StringBuilder("Entry{sampleCount=")).append(a).append(", groupDescriptionIndex=").append(b).append('}').toString();
        }

        public Entry(long l, int i)
        {
            a = l;
            b = i;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    List a;
    private String b;
    private String c;

    public SampleToGroupBox()
    {
        super("sbgp");
        a = new LinkedList();
    }

    private static void a()
    {
        Factory factory = new Factory("SampleToGroupBox.java", com/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox);
        d = factory.a("method-execution", factory.a("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 150);
        e = factory.a("method-execution", factory.a("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingType", "", "void"), 154);
        n = factory.a("method-execution", factory.a("1", "getGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 158);
        o = factory.a("method-execution", factory.a("1", "setGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingTypeParameter", "", "void"), 162);
        p = factory.a("method-execution", factory.a("1", "getEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.util.List"), 166);
        q = factory.a("method-execution", factory.a("1", "setEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.util.List", "entries", "", "void"), 170);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        b = IsoTypeReader.m(bytebuffer);
        if (q() == 1)
        {
            c = IsoTypeReader.m(bytebuffer);
        }
        long l = IsoTypeReader.b(bytebuffer);
        do
        {
            long l1 = l - 1L;
            if (l <= 0L)
            {
                return;
            }
            a.add(new Entry(CastUtils.a(IsoTypeReader.b(bytebuffer)), CastUtils.a(IsoTypeReader.b(bytebuffer))));
            l = l1;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(b.getBytes());
        if (q() == 1)
        {
            bytebuffer.put(c.getBytes());
        }
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
        } while (true);
    }

    protected long d()
    {
        int i;
        if (q() == 1)
        {
            i = 16 + 8 * a.size();
        } else
        {
            i = 12 + 8 * a.size();
        }
        return (long)i;
    }

    static 
    {
        a();
    }
}
