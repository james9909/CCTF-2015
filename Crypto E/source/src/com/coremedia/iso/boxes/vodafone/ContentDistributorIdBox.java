// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class ContentDistributorIdBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private String a;
    private String b;

    public ContentDistributorIdBox()
    {
        super("cdis");
    }

    private static void c()
    {
        Factory factory = new Factory("ContentDistributorIdBox.java", com/coremedia/iso/boxes/vodafone/ContentDistributorIdBox);
        c = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 40);
        d = factory.a("method-execution", factory.a("1", "getContentDistributorId", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 44);
        e = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.vodafone.ContentDistributorIdBox", "", "", "", "java.lang.String"), 68);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(c, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.l(bytebuffer);
        b = IsoTypeReader.g(bytebuffer);
    }

    public String b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.a(bytebuffer, a);
        bytebuffer.put(Utf8.a(b));
        bytebuffer.put((byte)0);
    }

    protected long d()
    {
        return (long)(5 + (2 + Utf8.b(b)));
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("ContentDistributorIdBox[language=")).append(a()).append(";contentDistributorId=").append(b()).append("]").toString();
    }

    static 
    {
        c();
    }
}
