// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class ClassificationBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private String a;
    private int b;
    private String c;
    private String d;

    public ClassificationBox()
    {
        super("clsf");
    }

    private static void i()
    {
        Factory factory = new Factory("ClassificationBox.java", com/coremedia/iso/boxes/ClassificationBox);
        e = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 44);
        n = factory.a("method-execution", factory.a("1", "getClassificationEntity", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 48);
        o = factory.a("method-execution", factory.a("1", "getClassificationTableIndex", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "int"), 52);
        p = factory.a("method-execution", factory.a("1", "getClassificationInfo", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 56);
        q = factory.a("method-execution", factory.a("1", "setClassificationEntity", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "classificationEntity", "", "void"), 60);
        r = factory.a("method-execution", factory.a("1", "setClassificationTableIndex", "com.coremedia.iso.boxes.ClassificationBox", "int", "classificationTableIndex", "", "void"), 64);
        s = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "language", "", "void"), 68);
        t = factory.a("method-execution", factory.a("1", "setClassificationInfo", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "classificationInfo", "", "void"), 72);
        u = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 101);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(e, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        byte abyte0[] = new byte[4];
        bytebuffer.get(abyte0);
        a = IsoFile.a(abyte0);
        b = IsoTypeReader.d(bytebuffer);
        c = IsoTypeReader.l(bytebuffer);
        d = IsoTypeReader.g(bytebuffer);
    }

    public String b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(n, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.a(a));
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.a(bytebuffer, c);
        bytebuffer.put(Utf8.a(d));
        bytebuffer.put((byte)0);
    }

    public int c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected long d()
    {
        return (long)(1 + (8 + Utf8.b(d)));
    }

    public String h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(u, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ClassificationBox[language=").append(a());
        stringbuilder.append("classificationEntity=").append(b());
        stringbuilder.append(";classificationTableIndex=").append(c());
        stringbuilder.append(";language=").append(a());
        stringbuilder.append(";classificationInfo=").append(h());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        i();
    }
}
