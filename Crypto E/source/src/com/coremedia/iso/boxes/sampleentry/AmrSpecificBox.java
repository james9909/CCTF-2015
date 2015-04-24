// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class AmrSpecificBox extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private String a;
    private int b;
    private int c;
    private int d;
    private int e;

    public AmrSpecificBox()
    {
        super("damr");
    }

    private static void j()
    {
        Factory factory = new Factory("AmrSpecificBox.java", com/coremedia/iso/boxes/sampleentry/AmrSpecificBox);
        n = factory.a("method-execution", factory.a("1", "getVendor", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "java.lang.String"), 46);
        o = factory.a("method-execution", factory.a("1", "getDecoderVersion", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 50);
        p = factory.a("method-execution", factory.a("1", "getModeSet", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 54);
        q = factory.a("method-execution", factory.a("1", "getModeChangePeriod", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 58);
        r = factory.a("method-execution", factory.a("1", "getFramesPerSample", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 62);
        s = factory.a("method-execution", factory.a("1", "getContent", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 84);
        t = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "java.lang.String"), 92);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    public void a(ByteBuffer bytebuffer)
    {
        byte abyte0[] = new byte[4];
        bytebuffer.get(abyte0);
        a = IsoFile.a(abyte0);
        b = IsoTypeReader.f(bytebuffer);
        c = IsoTypeReader.d(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
        e = IsoTypeReader.f(bytebuffer);
    }

    public int b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    public void b(ByteBuffer bytebuffer)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this, bytebuffer);
        RequiresParseDetailAspect.a().a(joinpoint);
        bytebuffer.put(IsoFile.a(a));
        IsoTypeWriter.d(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
        IsoTypeWriter.d(bytebuffer, e);
    }

    public int c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    protected long d()
    {
        return 9L;
    }

    public int h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public int i()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return e;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(t, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AmrSpecificBox[vendor=").append(a());
        stringbuilder.append(";decoderVersion=").append(b());
        stringbuilder.append(";modeSet=").append(c());
        stringbuilder.append(";modeChangePeriod=").append(h());
        stringbuilder.append(";framesPerSample=").append(i());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        j();
    }
}
