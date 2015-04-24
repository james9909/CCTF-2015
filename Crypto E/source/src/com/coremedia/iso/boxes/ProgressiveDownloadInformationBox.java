// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class ProgressiveDownloadInformationBox extends AbstractFullBox
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
            return 31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32);
        }

        public String toString()
        {
            return (new StringBuilder("Entry{rate=")).append(a).append(", initialDelay=").append(b).append('}').toString();
        }

        public Entry(long l, long l1)
        {
            a = l;
            b = l1;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    List a;

    public ProgressiveDownloadInformationBox()
    {
        super("pdin");
        a = Collections.emptyList();
    }

    private static void a()
    {
        Factory factory = new Factory("ProgressiveDownloadInformationBox.java", com/coremedia/iso/boxes/ProgressiveDownloadInformationBox);
        b = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "", "", "", "java.util.List"), 38);
        c = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "java.util.List", "entries", "", "void"), 42);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.ProgressiveDownloadInformationBox", "", "", "", "java.lang.String"), 112);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = new LinkedList();
        do
        {
            if (bytebuffer.remaining() < 8)
            {
                return;
            }
            Entry entry = new Entry(IsoTypeReader.b(bytebuffer), IsoTypeReader.b(bytebuffer));
            a.add(entry);
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
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
        return (long)(4 + 8 * a.size());
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("ProgressiveDownloadInfoBox{entries=")).append(a).append('}').toString();
    }

    static 
    {
        a();
    }
}
