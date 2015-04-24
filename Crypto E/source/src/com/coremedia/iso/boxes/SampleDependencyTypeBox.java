// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class SampleDependencyTypeBox extends AbstractFullBox
{
    public static class Entry
    {

        private int a;

        static int a(Entry entry)
        {
            return entry.a;
        }

        public int a()
        {
            return 3 & a >> 6;
        }

        public int b()
        {
            return 3 & a >> 4;
        }

        public int c()
        {
            return 3 & a >> 2;
        }

        public int d()
        {
            return 3 & a;
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
            }
            return true;
        }

        public int hashCode()
        {
            return a;
        }

        public String toString()
        {
            return (new StringBuilder("Entry{reserved=")).append(a()).append(", sampleDependsOn=").append(b()).append(", sampleIsDependentOn=").append(c()).append(", sampleHasRedundancy=").append(d()).append('}').toString();
        }

        public Entry(int i)
        {
            a = i;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private List a;

    public SampleDependencyTypeBox()
    {
        super("sdtp");
        a = new ArrayList();
    }

    private static void a()
    {
        Factory factory = new Factory("SampleDependencyTypeBox.java", com/coremedia/iso/boxes/SampleDependencyTypeBox);
        b = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.util.List"), 139);
        c = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "java.util.List", "entries", "", "void"), 143);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.lang.String"), 148);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        do
        {
            if (bytebuffer.remaining() <= 0)
            {
                return;
            }
            a.add(new Entry(IsoTypeReader.f(bytebuffer)));
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
            IsoTypeWriter.d(bytebuffer, Entry.a((Entry)iterator.next()));
        } while (true);
    }

    protected long d()
    {
        return (long)(4 + a.size());
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SampleDependencyTypeBox");
        stringbuilder.append("{entries=").append(a);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        a();
    }
}
