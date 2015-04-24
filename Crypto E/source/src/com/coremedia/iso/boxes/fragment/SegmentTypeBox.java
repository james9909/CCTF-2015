// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class SegmentTypeBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private String a;
    private long b;
    private List c;

    public SegmentTypeBox()
    {
        super("styp");
        c = Collections.emptyList();
    }

    private static void c()
    {
        Factory factory = new Factory("SegmentTypeBox.java", com/coremedia/iso/boxes/fragment/SegmentTypeBox);
        d = factory.a("method-execution", factory.a("1", "getMajorBrand", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "java.lang.String"), 85);
        e = factory.a("method-execution", factory.a("1", "setMajorBrand", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        n = factory.a("method-execution", factory.a("1", "setMinorVersion", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "long", "minorVersion", "", "void"), 103);
        o = factory.a("method-execution", factory.a("1", "getMinorVersion", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "long"), 113);
        p = factory.a("method-execution", factory.a("1", "getCompatibleBrands", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "java.util.List"), 122);
        q = factory.a("method-execution", factory.a("1", "setCompatibleBrands", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "java.util.List", "compatibleBrands", "", "void"), 126);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.m(bytebuffer);
        b = IsoTypeReader.b(bytebuffer);
        int i = bytebuffer.remaining() / 4;
        c = new LinkedList();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            c.add(IsoTypeReader.m(bytebuffer));
            j++;
        } while (true);
    }

    public long b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.a(a));
        IsoTypeWriter.b(bytebuffer, b);
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            bytebuffer.put(IsoFile.a((String)iterator.next()));
        } while (true);
    }

    protected long d()
    {
        return (long)(8 + 4 * c.size());
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SegmentTypeBox[");
        stringbuilder.append("majorBrand=").append(a());
        stringbuilder.append(";");
        stringbuilder.append("minorVersion=").append(b());
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                stringbuilder.append("]");
                return stringbuilder.toString();
            }
            String s = (String)iterator.next();
            stringbuilder.append(";");
            stringbuilder.append("compatibleBrand=").append(s);
        } while (true);
    }

    static 
    {
        c();
    }
}
