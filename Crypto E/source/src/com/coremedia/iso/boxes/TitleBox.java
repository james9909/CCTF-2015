// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TitleBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private String a;
    private String b;

    public TitleBox()
    {
        super("titl");
    }

    private static void c()
    {
        Factory factory = new Factory("TitleBox.java", com/coremedia/iso/boxes/TitleBox);
        c = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.TitleBox", "", "", "", "java.lang.String"), 46);
        d = factory.a("method-execution", factory.a("1", "getTitle", "com.coremedia.iso.boxes.TitleBox", "", "", "", "java.lang.String"), 50);
        e = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.TitleBox", "java.lang.String", "language", "", "void"), 59);
        n = factory.a("method-execution", factory.a("1", "setTitle", "com.coremedia.iso.boxes.TitleBox", "java.lang.String", "title", "", "void"), 63);
        o = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.TitleBox", "", "", "", "java.lang.String"), 86);
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
        return (long)(7 + Utf8.b(b));
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("TitleBox[language=")).append(a()).append(";title=").append(b()).append("]").toString();
    }

    static 
    {
        c();
    }
}
