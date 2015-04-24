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
import java.util.Map;
import java.util.WeakHashMap;
import org.aspectj.runtime.reflect.Factory;

public class TimeToSampleBox extends AbstractFullBox
{
    public static class Entry
    {

        long a;
        long b;

        public long a()
        {
            return a;
        }

        public long b()
        {
            return b;
        }

        public String toString()
        {
            return (new StringBuilder("Entry{count=")).append(a).append(", delta=").append(b).append('}').toString();
        }

        public Entry(long l, long l1)
        {
            a = l;
            b = l1;
        }
    }


    static Map b = new WeakHashMap();
    static final boolean c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    List a;

    public TimeToSampleBox()
    {
        super("stts");
        a = Collections.emptyList();
    }

    private static void a()
    {
        Factory factory = new Factory("TimeToSampleBox.java", com/coremedia/iso/boxes/TimeToSampleBox);
        d = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.util.List"), 79);
        e = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "java.util.List", "entries", "", "void"), 83);
        n = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.lang.String"), 87);
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
            a.add(new Entry(IsoTypeReader.b(bytebuffer), IsoTypeReader.b(bytebuffer)));
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
        } while (true);
    }

    protected long d()
    {
        return (long)(8 + 8 * a.size());
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("TimeToSampleBox[entryCount=")).append(a.size()).append("]").toString();
    }

    static 
    {
        a();
        boolean flag;
        if (!com/coremedia/iso/boxes/TimeToSampleBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }
}
