// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class CompositionTimeToSample extends AbstractFullBox
{
    public static class Entry
    {

        int a;
        int b;

        public int a()
        {
            return a;
        }

        public int b()
        {
            return b;
        }

        public String toString()
        {
            return (new StringBuilder("Entry{count=")).append(a).append(", offset=").append(b).append('}').toString();
        }

        public Entry(int i, int j)
        {
            a = i;
            b = j;
        }
    }


    static final boolean b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    List a;

    public CompositionTimeToSample()
    {
        super("ctts");
        a = Collections.emptyList();
    }

    private static void a()
    {
        Factory factory = new Factory("CompositionTimeToSample.java", com/coremedia/iso/boxes/CompositionTimeToSample);
        c = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "", "", "", "java.util.List"), 57);
        d = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.CompositionTimeToSample", "java.util.List", "entries", "", "void"), 61);
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
            Entry entry = new Entry(CastUtils.a(IsoTypeReader.b(bytebuffer)), bytebuffer.getInt());
            a.add(entry);
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
            bytebuffer.putInt(entry.b());
        } while (true);
    }

    protected long d()
    {
        return (long)(8 + 8 * a.size());
    }

    static 
    {
        a();
        boolean flag;
        if (!com/coremedia/iso/boxes/CompositionTimeToSample.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
