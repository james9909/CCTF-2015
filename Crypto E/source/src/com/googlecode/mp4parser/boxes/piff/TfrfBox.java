// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class TfrfBox extends AbstractFullBox
{
    public class Entry
    {

        long a;
        long b;
        final TfrfBox c;

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("Entry");
            stringbuilder.append("{fragmentAbsoluteTime=").append(a);
            stringbuilder.append(", fragmentAbsoluteDuration=").append(b);
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public Entry()
        {
            c = TfrfBox.this;
            super();
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    public List a;

    public TfrfBox()
    {
        super("uuid");
        a = new ArrayList();
    }

    private static void a()
    {
        Factory factory = new Factory("TfrfBox.java", com/googlecode/mp4parser/boxes/piff/TfrfBox);
        b = factory.a("method-execution", factory.a("1", "getFragmentCount", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "long"), 91);
        c = factory.a("method-execution", factory.a("1", "getEntries", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "java.util.List"), 95);
        d = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.piff.TfrfBox", "", "", "", "java.lang.String"), 100);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        int i = IsoTypeReader.f(bytebuffer);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            Entry entry = new Entry();
            if (q() == 1)
            {
                entry.a = IsoTypeReader.h(bytebuffer);
                entry.b = IsoTypeReader.h(bytebuffer);
            } else
            {
                entry.a = IsoTypeReader.b(bytebuffer);
                entry.b = IsoTypeReader.b(bytebuffer);
            }
            a.add(entry);
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.d(bytebuffer, a.size());
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Entry entry = (Entry)iterator.next();
            if (q() == 1)
            {
                IsoTypeWriter.a(bytebuffer, entry.a);
                IsoTypeWriter.a(bytebuffer, entry.b);
            } else
            {
                IsoTypeWriter.b(bytebuffer, entry.a);
                IsoTypeWriter.b(bytebuffer, entry.b);
            }
        } while (true);
    }

    protected long d()
    {
        int i = a.size();
        byte byte0;
        if (q() == 1)
        {
            byte0 = 16;
        } else
        {
            byte0 = 8;
        }
        return (long)(5 + byte0 * i);
    }

    public byte[] o()
    {
        return (new byte[] {
            -44, -128, 126, -14, -54, 57, 70, -107, -114, 84, 
            38, -53, -98, 70, -89, -97
        });
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TfrfBox");
        stringbuilder.append("{entries=").append(a);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        a();
    }
}
