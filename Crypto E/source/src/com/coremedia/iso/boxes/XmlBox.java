// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class XmlBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    String a;

    public XmlBox()
    {
        super("xml ");
        a = "";
    }

    private static void a()
    {
        Factory factory = new Factory("XmlBox.java", com/coremedia/iso/boxes/XmlBox);
        b = factory.a("method-execution", factory.a("1", "getXml", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 20);
        c = factory.a("method-execution", factory.a("1", "setXml", "com.coremedia.iso.boxes.XmlBox", "java.lang.String", "xml", "", "void"), 24);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 46);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.a(bytebuffer, bytebuffer.remaining());
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(Utf8.a(a));
    }

    protected long d()
    {
        return (long)(4 + Utf8.b(a));
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("XmlBox{xml='")).append(a).append('\'').append('}').toString();
    }

    static 
    {
        a();
    }
}
