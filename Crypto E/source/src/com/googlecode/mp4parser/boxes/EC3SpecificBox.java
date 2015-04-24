// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class EC3SpecificBox extends AbstractBox
{
    public static class Entry
    {

        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;

        public String toString()
        {
            return (new StringBuilder("Entry{fscod=")).append(g).append(", bsid=").append(h).append(", bsmod=").append(i).append(", acmod=").append(j).append(", lfeon=").append(k).append(", reserved=").append(l).append(", num_dep_sub=").append(m).append(", chan_loc=").append(n).append(", reserved2=").append(o).append('}').toString();
        }

        public Entry()
        {
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    List a;
    int b;
    int c;

    public EC3SpecificBox()
    {
        super("dec3");
        a = new LinkedList();
    }

    private static void a()
    {
        Factory factory = new Factory("EC3SpecificBox.java", com/googlecode/mp4parser/boxes/EC3SpecificBox);
        d = factory.a("method-execution", factory.a("1", "getContentSize", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "long"), 25);
        e = factory.a("method-execution", factory.a("1", "getContent", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 65);
        n = factory.a("method-execution", factory.a("1", "getEntries", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "java.util.List"), 86);
        o = factory.a("method-execution", factory.a("1", "setEntries", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "java.util.List", "entries", "", "void"), 90);
        p = factory.a("method-execution", factory.a("1", "addEntry", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "com.googlecode.mp4parser.boxes.EC3SpecificBox$Entry", "entry", "", "void"), 94);
        q = factory.a("method-execution", factory.a("1", "getDataRate", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "int"), 98);
        r = factory.a("method-execution", factory.a("1", "setDataRate", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "int", "dataRate", "", "void"), 102);
        s = factory.a("method-execution", factory.a("1", "getNumIndSub", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "int"), 106);
        t = factory.a("method-execution", factory.a("1", "setNumIndSub", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "int", "numIndSub", "", "void"), 110);
    }

    public void a(ByteBuffer bytebuffer)
    {
        BitReaderBuffer bitreaderbuffer = new BitReaderBuffer(bytebuffer);
        b = bitreaderbuffer.a(13);
        c = 1 + bitreaderbuffer.a(3);
        int i = 0;
        do
        {
            if (i >= c)
            {
                return;
            }
            Entry entry = new Entry();
            entry.g = bitreaderbuffer.a(2);
            entry.h = bitreaderbuffer.a(5);
            entry.i = bitreaderbuffer.a(5);
            entry.j = bitreaderbuffer.a(3);
            entry.k = bitreaderbuffer.a(1);
            entry.l = bitreaderbuffer.a(3);
            entry.m = bitreaderbuffer.a(4);
            if (entry.m > 0)
            {
                entry.n = bitreaderbuffer.a(9);
            } else
            {
                entry.o = bitreaderbuffer.a(1);
            }
            a.add(entry);
            i++;
        } while (true);
    }

    public void b(ByteBuffer bytebuffer)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this, bytebuffer);
        RequiresParseDetailAspect.a().a(joinpoint);
        BitWriterBuffer bitwriterbuffer = new BitWriterBuffer(bytebuffer);
        bitwriterbuffer.a(b, 13);
        bitwriterbuffer.a(-1 + a.size(), 3);
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Entry entry = (Entry)iterator.next();
            bitwriterbuffer.a(entry.g, 2);
            bitwriterbuffer.a(entry.h, 5);
            bitwriterbuffer.a(entry.i, 5);
            bitwriterbuffer.a(entry.j, 3);
            bitwriterbuffer.a(entry.k, 1);
            bitwriterbuffer.a(entry.l, 3);
            bitwriterbuffer.a(entry.m, 4);
            if (entry.m > 0)
            {
                bitwriterbuffer.a(entry.n, 9);
            } else
            {
                bitwriterbuffer.a(entry.o, 1);
            }
        } while (true);
    }

    public long d()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        Iterator iterator = a.iterator();
        long l = 2L;
        do
        {
            if (!iterator.hasNext())
            {
                return l;
            }
            if (((Entry)iterator.next()).m > 0)
            {
                l = 4L + l;
            } else
            {
                l = 3L + l;
            }
        } while (true);
    }

    static 
    {
        a();
    }
}
