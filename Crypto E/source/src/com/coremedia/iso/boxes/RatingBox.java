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

public class RatingBox extends AbstractFullBox
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
    private String b;
    private String c;
    private String d;

    public RatingBox()
    {
        super("rtng");
    }

    private static void i()
    {
        Factory factory = new Factory("RatingBox.java", com/coremedia/iso/boxes/RatingBox);
        e = factory.a("method-execution", factory.a("1", "setRatingEntity", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingEntity", "", "void"), 46);
        n = factory.a("method-execution", factory.a("1", "setRatingCriteria", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingCriteria", "", "void"), 50);
        o = factory.a("method-execution", factory.a("1", "setLanguage", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "language", "", "void"), 54);
        p = factory.a("method-execution", factory.a("1", "setRatingInfo", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingInfo", "", "void"), 58);
        q = factory.a("method-execution", factory.a("1", "getLanguage", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 62);
        r = factory.a("method-execution", factory.a("1", "getRatingEntity", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 73);
        s = factory.a("method-execution", factory.a("1", "getRatingCriteria", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 83);
        t = factory.a("method-execution", factory.a("1", "getRatingInfo", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 87);
        u = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 115);
    }

    public String a()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return c;
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        a = IsoTypeReader.m(bytebuffer);
        b = IsoTypeReader.m(bytebuffer);
        c = IsoTypeReader.l(bytebuffer);
        d = IsoTypeReader.g(bytebuffer);
    }

    public String b()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(r, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return a;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(IsoFile.a(a));
        bytebuffer.put(IsoFile.a(b));
        IsoTypeWriter.a(bytebuffer, c);
        bytebuffer.put(Utf8.a(d));
        bytebuffer.put((byte)0);
    }

    public String c()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(s, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return b;
    }

    protected long d()
    {
        return (long)(15 + Utf8.b(d));
    }

    public String h()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(t, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return d;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(u, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("RatingBox[language=").append(a());
        stringbuilder.append("ratingEntity=").append(b());
        stringbuilder.append(";ratingCriteria=").append(c());
        stringbuilder.append(";language=").append(a());
        stringbuilder.append(";ratingInfo=").append(h());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        i();
    }
}
