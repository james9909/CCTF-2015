// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26245;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class FontTableBox extends AbstractBox
{
    public static class FontRecord
    {

        int a;
        String b;

        public int a()
        {
            return 3 + Utf8.b(b);
        }

        public void a(ByteBuffer bytebuffer)
        {
            a = IsoTypeReader.d(bytebuffer);
            b = IsoTypeReader.a(bytebuffer, IsoTypeReader.f(bytebuffer));
        }

        public void b(ByteBuffer bytebuffer)
        {
            IsoTypeWriter.b(bytebuffer, a);
            IsoTypeWriter.d(bytebuffer, b.length());
            bytebuffer.put(Utf8.a(b));
        }

        public String toString()
        {
            return (new StringBuilder("FontRecord{fontId=")).append(a).append(", fontname='").append(b).append('\'').append('}').toString();
        }

        public FontRecord()
        {
        }

        public FontRecord(int i, String s)
        {
            a = i;
            b = s;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    List a;

    public FontTableBox()
    {
        super("ftab");
        a = new LinkedList();
    }

    private static void a()
    {
        Factory factory = new Factory("FontTableBox.java", com/googlecode/mp4parser/boxes/threegpp26245/FontTableBox);
        b = factory.a("method-execution", factory.a("1", "getEntries", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox", "", "", "", "java.util.List"), 52);
        c = factory.a("method-execution", factory.a("1", "setEntries", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox", "java.util.List", "entries", "", "void"), 56);
    }

    public void a(ByteBuffer bytebuffer)
    {
        int i = IsoTypeReader.d(bytebuffer);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            FontRecord fontrecord = new FontRecord();
            fontrecord.a(bytebuffer);
            a.add(fontrecord);
            j++;
        } while (true);
    }

    public void a(List list)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this, list);
        RequiresParseDetailAspect.a().a(joinpoint);
        a = list;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a.size());
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((FontRecord)iterator.next()).b(bytebuffer);
        } while (true);
    }

    protected long d()
    {
        Iterator iterator = a.iterator();
        int i = 2;
        do
        {
            if (!iterator.hasNext())
            {
                return (long)i;
            }
            i += ((FontRecord)iterator.next()).a();
        } while (true);
    }

    static 
    {
        a();
    }
}
